/*
** Lua binding: CTest
** Generated automatically by tolua++-1.0.92 on Tue May 28 18:30:22 2019.
*/

#ifndef __cplusplus
#include "stdlib.h"
#endif
#include "string.h"

#include "tolua++.h"

/* Exported function */
TOLUA_API int  tolua_CTest_open (lua_State* tolua_S);

#include "LoveExt.h"
#include "tolua_ext.h"

/* function to release collected object via destructor */
#ifdef __cplusplus

static int tolua_collect_std__vector_std__string_ (lua_State* tolua_S)
{
 std::vector<std::string>* self = (std::vector<std::string>*) tolua_tousertype(tolua_S,1,0);
    Mtolua_delete(self);
    return 0;
}
#endif


/* function to register type */
static void tolua_reg_types (lua_State* tolua_S)
{
 tolua_usertype(tolua_S,"std::vector<std::string>");
 tolua_usertype(tolua_S,"LoveExt");
}

/* method: openFileMultiSelect of class  LoveExt */
#ifndef TOLUA_DISABLE_tolua_CTest_LoveExt_openFileMultiSelect00
static int tolua_CTest_LoveExt_openFileMultiSelect00(lua_State* tolua_S)
{
#if COCOS2D_DEBUG >= 1
 tolua_Error tolua_err;
 if (
     !tolua_isusertable(tolua_S,1,"LoveExt",0,&tolua_err) ||
     !tolua_iscppstring(tolua_S,2,0,&tolua_err) ||
     !tolua_isnoobj(tolua_S,3,&tolua_err)
 )
  goto tolua_lerror;
 else
#endif
 {
  const std::string InFilter = ((const std::string)  tolua_tocppstring(tolua_S,2,0));
  {
   std::vector<std::string> tolua_ret = (std::vector<std::string>)  LoveExt::openFileMultiSelect(InFilter);
   {
   tolua_ext_vector_string_to_luaval(tolua_S, tolua_ret, "std::vector<std::string>");
   }
   tolua_pushcppstring(tolua_S,(const char*)InFilter);
  }
 }
 return 2;
#if COCOS2D_DEBUG >= 1
 tolua_lerror:
 tolua_error(tolua_S,"#ferror in function 'openFileMultiSelect'.",&tolua_err);
 return 0;
#endif
}
#endif //#ifndef TOLUA_DISABLE

/* method: Utf8ToGbk of class  LoveExt */
#ifndef TOLUA_DISABLE_tolua_CTest_LoveExt_Utf8ToGbk00
static int tolua_CTest_LoveExt_Utf8ToGbk00(lua_State* tolua_S)
{
#if COCOS2D_DEBUG >= 1
 tolua_Error tolua_err;
 if (
     !tolua_isusertable(tolua_S,1,"LoveExt",0,&tolua_err) ||
     !tolua_iscppstring(tolua_S,2,0,&tolua_err) ||
     !tolua_isnoobj(tolua_S,3,&tolua_err)
 )
  goto tolua_lerror;
 else
#endif
 {
  const std::string strUtf8 = ((const std::string)  tolua_tocppstring(tolua_S,2,0));
  {
   std::string tolua_ret = (std::string)  LoveExt::Utf8ToGbk(strUtf8);
   tolua_pushcppstring(tolua_S,(const char*)tolua_ret);
   tolua_pushcppstring(tolua_S,(const char*)strUtf8);
  }
 }
 return 2;
#if COCOS2D_DEBUG >= 1
 tolua_lerror:
 tolua_error(tolua_S,"#ferror in function 'Utf8ToGbk'.",&tolua_err);
 return 0;
#endif
}
#endif //#ifndef TOLUA_DISABLE

/* method: GbkToUtf8 of class  LoveExt */
#ifndef TOLUA_DISABLE_tolua_CTest_LoveExt_GbkToUtf800
static int tolua_CTest_LoveExt_GbkToUtf800(lua_State* tolua_S)
{
#if COCOS2D_DEBUG >= 1
 tolua_Error tolua_err;
 if (
     !tolua_isusertable(tolua_S,1,"LoveExt",0,&tolua_err) ||
     !tolua_iscppstring(tolua_S,2,0,&tolua_err) ||
     !tolua_isnoobj(tolua_S,3,&tolua_err)
 )
  goto tolua_lerror;
 else
#endif
 {
  const std::string strGbk = ((const std::string)  tolua_tocppstring(tolua_S,2,0));
  {
   std::string tolua_ret = (std::string)  LoveExt::GbkToUtf8(strGbk);
   tolua_pushcppstring(tolua_S,(const char*)tolua_ret);
   tolua_pushcppstring(tolua_S,(const char*)strGbk);
  }
 }
 return 2;
#if COCOS2D_DEBUG >= 1
 tolua_lerror:
 tolua_error(tolua_S,"#ferror in function 'GbkToUtf8'.",&tolua_err);
 return 0;
#endif
}
#endif //#ifndef TOLUA_DISABLE

/* method: getClipboardString of class  LoveExt */
#ifndef TOLUA_DISABLE_tolua_CTest_LoveExt_getClipboardString00
static int tolua_CTest_LoveExt_getClipboardString00(lua_State* tolua_S)
{
#if COCOS2D_DEBUG >= 1
 tolua_Error tolua_err;
 if (
     !tolua_isusertable(tolua_S,1,"LoveExt",0,&tolua_err) ||
     !tolua_isnoobj(tolua_S,2,&tolua_err)
 )
  goto tolua_lerror;
 else
#endif
 {
  {
   std::string tolua_ret = (std::string)  LoveExt::getClipboardString();
   tolua_pushcppstring(tolua_S,(const char*)tolua_ret);
  }
 }
 return 1;
#if COCOS2D_DEBUG >= 1
 tolua_lerror:
 tolua_error(tolua_S,"#ferror in function 'getClipboardString'.",&tolua_err);
 return 0;
#endif
}
#endif //#ifndef TOLUA_DISABLE

/* method: setClipboardString of class  LoveExt */
#ifndef TOLUA_DISABLE_tolua_CTest_LoveExt_setClipboardString00
static int tolua_CTest_LoveExt_setClipboardString00(lua_State* tolua_S)
{
#if COCOS2D_DEBUG >= 1
 tolua_Error tolua_err;
 if (
     !tolua_isusertable(tolua_S,1,"LoveExt",0,&tolua_err) ||
     !tolua_iscppstring(tolua_S,2,0,&tolua_err) ||
     !tolua_isnoobj(tolua_S,3,&tolua_err)
 )
  goto tolua_lerror;
 else
#endif
 {
  const std::string value = ((const std::string)  tolua_tocppstring(tolua_S,2,0));
  {
   LoveExt::setClipboardString(value);
   tolua_pushcppstring(tolua_S,(const char*)value);
  }
 }
 return 1;
#if COCOS2D_DEBUG >= 1
 tolua_lerror:
 tolua_error(tolua_S,"#ferror in function 'setClipboardString'.",&tolua_err);
 return 0;
#endif
}
#endif //#ifndef TOLUA_DISABLE

/* Open function */
TOLUA_API int tolua_CTest_open (lua_State* tolua_S)
{
 tolua_open(tolua_S);
 tolua_reg_types(tolua_S);
 tolua_module(tolua_S,NULL,0);
 tolua_beginmodule(tolua_S,NULL);
  tolua_cclass(tolua_S,"LoveExt","LoveExt","",NULL);
  tolua_beginmodule(tolua_S,"LoveExt");
   tolua_function(tolua_S,"openFileMultiSelect",tolua_CTest_LoveExt_openFileMultiSelect00);
   tolua_function(tolua_S,"Utf8ToGbk",tolua_CTest_LoveExt_Utf8ToGbk00);
   tolua_function(tolua_S,"GbkToUtf8",tolua_CTest_LoveExt_GbkToUtf800);
   tolua_function(tolua_S,"getClipboardString",tolua_CTest_LoveExt_getClipboardString00);
   tolua_function(tolua_S,"setClipboardString",tolua_CTest_LoveExt_setClipboardString00);
  tolua_endmodule(tolua_S);
 tolua_endmodule(tolua_S);
 return 1;
}


#if defined(LUA_VERSION_NUM) && LUA_VERSION_NUM >= 501
 TOLUA_API int luaopen_CTest (lua_State* tolua_S) {
 return tolua_CTest_open(tolua_S);
};
#endif

