--[[
Luacheck configuration
(see http://luacheck.readthedocs.io/en/stable/config.html)
Thanks to Peter Melnichenko for providing an example file for LuaUnit.
]]

codes = true
std = "max"
self = false
globals = { "EXPORT_ASSERT_TO_GLOBALS" }
ignore = {
    "211", -- unused variable
    "212", -- unused argument
    "213", -- unused loop variable
    "61[124]", -- ignore whitespace issues
    "631", -- line too long
    "[Tt]est[%w_]+" -- expect test cases to be defined / accessed as globals
}

files = {
    ["luaunit.lua"] = {
        globals = {"LuaUnit"},
    },
    ["test/compat_luaunit_v2x.lua"] = {
        ignore = {"assert[%w_]+"}
    },
    ["test/legacy_example_with_luaunit.lua"] = {
        ignore = {"LuaUnit", "assertEquals", "assertNotEquals", "assertTrue", "assertFalse"}
    },
    ["test/test_luaunit.lua"] = {
        ignore = {"MyTest%w+"}
    }
}
