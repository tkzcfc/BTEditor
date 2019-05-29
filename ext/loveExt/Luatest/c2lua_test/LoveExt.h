#pragma once

#include <iostream>
#include <vector>
#include "tolua++.h"

class LoveExt
{
public:

	static std::vector<std::string> openFileMultiSelect(const std::string& InFilter);

	static std::string wstringToString(const std::wstring& InStr);
	static std::wstring stringToWString(const std::string& InStr);

	static std::string Utf8ToGbk(const std::string& strUtf8);
	static std::string GbkToUtf8(const std::string& strGbk);

	static std::string getClipboardString();
	static void setClipboardString(const std::string& value);
};
