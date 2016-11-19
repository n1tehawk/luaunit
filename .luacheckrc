--[[
Luacheck configuration
(see http://luacheck.readthedocs.io/en/stable/config.html)
Thanks to Peter Melnichenko for providing an example file for LuaUnit.
]]

codes = true
std = "max"
self = false
ignore = {"[Tt]est[%w_]+", "21[23]", "6.."}

files = {
    ["luaunit.lua"] = {
        globals = {"EXPORT_ASSERT_TO_GLOBALS", "LuaUnit"},
    },
    ["test/compat_luaunit_v2x.lua"] = {
        ignore = {"EXPORT_ASSERT_TO_GLOBALS", "assert[%w_]+"}
    },
    ["test/legacy_example_with_luaunit.lua"] = {
        ignore = {"LuaUnit", "EXPORT_ASSERT_TO_GLOBALS",
        "assertEquals", "assertNotEquals", "assertTrue", "assertFalse"}
    },
    ["test/test_luaunit.lua"] = {
        ignore = {"MyTest%w+"}
    }
}
