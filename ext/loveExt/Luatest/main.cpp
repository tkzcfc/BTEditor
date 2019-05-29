#include <iostream>


extern "C"
{
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"
}

#include "c2lua_test/ctest_tolua.h"
#include "lua2c_test/doit_tolua.h"

static void register_lua_modules(lua_State* L)
{
	//tolua_doit_open(L);
	tolua_CTest_open(L);
}

extern "C"
{
	__declspec(dllexport) int luaopen_loveExt(lua_State* L)
	{
		register_lua_modules(L);
		return 1;
	}
}