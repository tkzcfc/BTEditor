/*
** Lua binding: doit
** Generated automatically by tolua++-1.0.92 on Tue Aug 14 16:30:02 2018.
*/

#ifndef __cplusplus
#include "stdlib.h"
#endif
#include "string.h"

#include "tolua++.h"

/* Exported function */
TOLUA_API int  tolua_doit_open (lua_State* tolua_S);


/* function to register type */
static void tolua_reg_types (lua_State* tolua_S)
{
}

/* Open function */
TOLUA_API int tolua_doit_open (lua_State* tolua_S)
{
 tolua_open(tolua_S);
 tolua_reg_types(tolua_S);
 tolua_module(tolua_S,NULL,0);
 tolua_beginmodule(tolua_S,NULL);

  { /* begin embedded lua code */
   int top = lua_gettop(tolua_S);
   static const unsigned char B[] = {
    10,102,117,110, 99,116,105,111,110, 32,100,111,105,116, 40,
     41, 10,112,114,105,110,116, 40, 34,108,117, 97, 32,100,111,
    105,116, 32,102,117,110, 99,116,105,111,110, 32, 99, 97,108,
    108, 34, 41, 10,101,110,100, 45, 45, 45, 45, 45, 45, 45, 45,
     45, 45, 45, 45,32
   };
   tolua_dobuffer(tolua_S,(char*)B,sizeof(B),"tolua embedded: doit.lua");
   lua_settop(tolua_S, top);
  } /* end of embedded lua code */


  { /* begin embedded lua code */
   int top = lua_gettop(tolua_S);
   static const unsigned char B[] = {
    10,108,111, 99, 97,108, 32,101,114,114, 44,109,115,103, 32,
     61, 32,112, 99, 97,108,108, 40,100,111,105,116, 41, 10,105,
    102, 32,110,111,116, 32,101,114,114, 32,116,104,101,110, 10,
    108,111, 99, 97,108, 32, 95, 44, 95, 44,108, 97, 98,101,108,
     44,109,115,103, 32, 61, 32,115,116,114,102,105,110,100, 40,
    109,115,103, 44, 34, 40, 46, 45, 58, 46, 45, 58, 37,115, 42,
     41, 40, 46, 42, 41, 34, 41, 10,116,111,108,117, 97, 95,101,
    114,114,111,114, 40,109,115,103, 44,108, 97, 98,101,108, 41,
     10,112,114,105,110,116, 40,100,101, 98,117,103, 46,116,114,
     97, 99,101, 98, 97, 99,107, 40, 41, 41, 10,101,110,100, 45,
     45, 45, 45, 45, 45, 45, 45, 45, 45, 45,32
   };
   tolua_dobuffer(tolua_S,(char*)B,sizeof(B),"tolua: embedded Lua code 2");
   lua_settop(tolua_S, top);
  } /* end of embedded lua code */

 tolua_endmodule(tolua_S);
 return 1;
}


#if defined(LUA_VERSION_NUM) && LUA_VERSION_NUM >= 501
 TOLUA_API int luaopen_doit (lua_State* tolua_S) {
 return tolua_doit_open(tolua_S);
};
#endif

