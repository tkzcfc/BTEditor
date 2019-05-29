-- game infos
game_id = "BTEditor"
game_title = "BTEditor"
game_version = "01.04"

-- libraries
Gamestate = require "lib/gamestate"
Camera = require "lib/camera"
Inspector = require "lib/inspect"
require("lib/SECS")
require("lib/utils")
require("lib/dumper")
require("lib/xml_collect")
require("lib/json")
require("lib/loveframes/init")
require("lib/BTLua")
require("lib/assetloader")

if images.icon then
  love.graphics.setIcon( images.icon )
end

--profiler = require "profiler"

-- FC-Fix
function myWrite(fileName, content)
    local f = assert(io.open(fileName,'w'))
    f:write(content)
    f:close()
end

function myRead(fileName)
    local f = io.open(fileName,'r')
    if f == nil then
        return ""
    end
    local content = f:read('*all')
    f:close()
    return content
end

function myExists(fileName)
    local f = io.open(fileName,'r')
    if f == nil then
        return false
    end
    f:close()
    return true
end


function format_lua_value(inValue)
    if type(inValue) ~= "table" then
        return tostring(inValue)
    end

    local formatting = "{\n"

    local function format_lua_table (lua_table, indent)
        indent = indent or 0
        
        for k, v in pairs(lua_table) do
            if type(k) == "string" then
                k = string.format("%q", k)
            end
            local szSuffix = ""
            if type(v) == "table" then
                szSuffix = "{"
            end
            local szPrefix = string.rep("    ", indent)
            formatting = formatting .. szPrefix.."["..k.."]".." = "..szSuffix
            if type(v) == "table" then
                formatting = formatting.."\n"
                format_lua_table(v, indent + 1)
                formatting = formatting .. szPrefix.."},\n"
            else
                local szValue = ""
                if type(v) == "string" then
                    szValue = string.format("%q", v)
                else
                    szValue = tostring(v)
                end
                formatting = formatting..szValue..",\n"
            end
        end
    end
    format_lua_table(inValue, 1)
    return formatting.."}"
end

function print_lua_value(inValue)
  print(format_lua_value(inValue))
end

function love.load()

  -- Set filesystem identity
  love.filesystem.setIdentity(game_id)

  love.graphics.setCaption(game_title.." v."..game_version)

  -- FC-Fix
  BTEditorWorkDir = love.filesystem.getWorkingDirectory()
  local configFilePath = BTEditorWorkDir .. "/BTEditor_configs.txt"
  readScreenMode(configFilePath,images.icon)


  local loveExtFunc = package.loadlib("loveExt.dll","luaopen_loveExt")
  loveExtFunc()

  -- Set Random Seed
  math.randomseed(os.time());
  math.random()
  math.random()
  math.random()

  Gamestate.registerEvents()
  require ("states/intro")
  Gamestate.switch(Gamestate.intro)
end

