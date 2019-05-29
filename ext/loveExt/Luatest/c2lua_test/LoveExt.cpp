#include "LoveExt.h"
#include <iostream>
#include "windows.h"


std::wstring LoveExt::stringToWString(const std::string& InStr) {
	int num = MultiByteToWideChar(CP_UTF8, 0, InStr.c_str(), -1, NULL, 0);
	wchar_t *wide = new wchar_t[num];
	MultiByteToWideChar(CP_UTF8, 0, InStr.c_str(), -1, wide, num);
	std::wstring w_str(wide);
	delete[] wide;
	return w_str;
}

std::string LoveExt::wstringToString(const std::wstring& InStr)
{
	int needBytes = WideCharToMultiByte(CP_ACP, 0, InStr.c_str(), -1, NULL, 0, NULL, NULL);
	if (needBytes > 0)
	{
		char* pszBuf = new char[needBytes + 1];
		ZeroMemory(pszBuf, (needBytes + 1) * sizeof(char));
		WideCharToMultiByte(CP_ACP, 0, InStr.c_str(), -1, pszBuf, needBytes, NULL, NULL);
		return std::string(pszBuf);
		delete[] pszBuf;
	}
	return std::string("");
}


//UTF-8转gbk
std::string LoveExt::Utf8ToGbk(const std::string& strUtf8)//传入的strUtf8是UTF-8编码
{
	//UTF-8转unicode
	int len = MultiByteToWideChar(CP_UTF8, 0, strUtf8.c_str(), -1, NULL, 0);
	wchar_t * strUnicode = new wchar_t[len];//len = 2
	wmemset(strUnicode, 0, len);
	MultiByteToWideChar(CP_UTF8, 0, strUtf8.c_str(), -1, strUnicode, len);

	//unicode转gbk
	len = WideCharToMultiByte(CP_ACP, 0, strUnicode, -1, NULL, 0, NULL, NULL);
	char *strGbk = new char[len];//len=3 本来为2，但是char*后面自动加上了\0
	memset(strGbk, 0, len);
	WideCharToMultiByte(CP_ACP, 0, strUnicode, -1, strGbk, len, NULL, NULL);

	std::string strTemp(strGbk);//此时的strTemp是GBK编码
	delete[]strUnicode;
	delete[]strGbk;
	strUnicode = NULL;
	strGbk = NULL;
	return strTemp;
}


std::vector<std::string> LoveExt::openFileMultiSelect(const std::string& InFilter)
{
	std::vector<std::string> OutPathArr;

	std::wstring wsFilter = stringToWString(Utf8ToGbk(InFilter));

	wchar_t szFilterBuf[512];
	memset(szFilterBuf, '\0', sizeof(szFilterBuf));
	lstrcpy(szFilterBuf, wsFilter.c_str());

	OPENFILENAME ofn;
	TCHAR szOpenFileNames[80 * MAX_PATH];
	TCHAR szPath[MAX_PATH];
	TCHAR szFileName[80 * MAX_PATH];
	TCHAR* p;
	int nLen = 0;
	ZeroMemory(&ofn, sizeof(ofn));
	ofn.Flags = OFN_EXPLORER;// | OFN_ALLOWMULTISELECT;
	ofn.lStructSize = sizeof(ofn);
	ofn.lpstrFile = szOpenFileNames;
	ofn.nMaxFile = sizeof(szOpenFileNames);
	ofn.lpstrFile[0] = '\0';
	ofn.lpstrFilter = szFilterBuf;//TEXT("All Files(*.*)\0*.*\0");
	if (GetOpenFileName(&ofn))
	{
		//把第一个文件名前的复制到szPath,即:
		//如果只选了一个文件,就复制到最后一个'\'
		//如果选了多个文件,就复制到第一个NULL字符
		lstrcpyn(szPath, szOpenFileNames, ofn.nFileOffset);

		//当只选了一个文件时,下面这个NULL字符是必需的.
		//这里不区别对待选了一个和多个文件的情况
		szPath[ofn.nFileOffset] = '\0';
		nLen = lstrlen(szPath);

		//如果选了多个文件,则必须加上'\\'
		if (szPath[nLen - 1] != '\\')
		{
			lstrcat(szPath, TEXT("\\"));
		}

		//把指针移到第一个文件
		p = szOpenFileNames + ofn.nFileOffset;

		ZeroMemory(szFileName, sizeof(szFileName));
		while (*p)
		{
			std::wstring wspath = szPath;
			wspath.append(p);

			std::string fullpath = GbkToUtf8(wstringToString(wspath));
			OutPathArr.push_back(fullpath);

			//移至下一个文件
			p += lstrlen(p) + 1;
		}
		return OutPathArr;
	}
	return OutPathArr;
}

//gbk转UTF-8
std::string LoveExt::GbkToUtf8(const std::string& strGbk)//传入的strGbk是GBK编码
{
	//gbk转unicode
	int len = MultiByteToWideChar(CP_ACP, 0, strGbk.c_str(), -1, NULL, 0);
	wchar_t *strUnicode = new wchar_t[len];
	wmemset(strUnicode, 0, len);
	MultiByteToWideChar(CP_ACP, 0, strGbk.c_str(), -1, strUnicode, len);

	//unicode转UTF-8
	len = WideCharToMultiByte(CP_UTF8, 0, strUnicode, -1, NULL, 0, NULL, NULL);
	char * strUtf8 = new char[len];
	WideCharToMultiByte(CP_UTF8, 0, strUnicode, -1, strUtf8, len, NULL, NULL);

	std::string strTemp(strUtf8);//此时的strTemp是UTF-8编码
	delete[]strUnicode;
	delete[]strUtf8;
	strUnicode = NULL;
	strUtf8 = NULL;
	return strTemp;
}

std::string LoveExt::getClipboardString()
{
	std::string outvalue;

	HGLOBAL hGlobal;
	PCHAR pText;
	PCHAR pGlobal;

	OpenClipboard(GetDesktopWindow()); // Open the clipboard

	hGlobal = GetClipboardData(CF_TEXT);
	if (hGlobal == FALSE) // is equal "NULL" condition
	{
		CloseClipboard();
		return outvalue;
	}

	// Allocation memory 
	pText = new char[GlobalSize(hGlobal) + 1];
	if (pText == NULL)
	{
		CloseClipboard();
		return outvalue;
	}

	// lock and get the clipboard text address.
	pGlobal = (char*)GlobalLock(hGlobal);
	strcpy(pText, pGlobal); // copy string

	GlobalUnlock(hGlobal); // Unlock
	CloseClipboard(); // Close the clipboard

	outvalue = GbkToUtf8(pText);
	delete[]pText;

	return outvalue;
}

void LoveExt::setClipboardString(const std::string& value)
{
	if (OpenClipboard(GetDesktopWindow()))//打开剪贴板
	{
	   HANDLE hClip;
	   char* pBuf;
	   EmptyClipboard();//清空剪贴板
	   //写入数据
	    hClip = GlobalAlloc(GMEM_MOVEABLE, value.size() + 1);
	    pBuf = (char *)GlobalLock(hClip);
	    strcpy(pBuf, value.c_str());
	    GlobalUnlock(hClip);//解锁
	    SetClipboardData(CF_TEXT, hClip);//设置格式
	
	    //关闭剪贴板
	    CloseClipboard();
	}
	//OpenClipboard(GetDesktopWindow()); // Open the clipboard
	////清空剪贴板
	//EmptyClipboard();
	////分配内存
	//HGLOBAL hgl = GlobalAlloc(GMEM_MOVEABLE, (value.size() + 1) * sizeof(WCHAR));
	//LPWSTR lpstrcpy = (LPWSTR)GlobalLock(hgl);
	////向剪贴板中放东西
	//memcpy(lpstrcpy, value.c_str(), value.size() * sizeof(WCHAR));
	//GlobalUnlock(hgl);
	//SetClipboardData(CF_TEXT, lpstrcpy);
	////关闭剪贴板
	//CloseClipboard();
}
