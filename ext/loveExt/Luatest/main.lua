print("main.Lua begin--------------------->")

local c1 = CTest:new()
c1:test()
c1:delete()
c1 = nil
collectgarbage("collect")
collectgarbage("collect")
collectgarbage("collect")

print("\n")

local c2 = CTest:new_local()
c2:test()
c2 = nil
collectgarbage("collect")
collectgarbage("collect")
collectgarbage("collect")

print("main.Lua end--------------------->")



