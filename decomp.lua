local decompsrc = game:HttpGet("https://raw.githubusercontent.com/w-a-e/Advanced-Decompiler-V3/main/init.lua", true)
local function loaddecomp(decomptimeout)
    local CONSTANTS = [[
local ENABLED_REMARKS = {
    NATIVE_REMARK = true,
    INLINE_REMARK = true
}
local DECOMPILER_TIMEOUT = ]] .. decomptimeout .. [[
    
local READER_FLOAT_PRECISION = 7 -- up to 99
local SHOW_INSTRUCTION_LINES = false
local SHOW_REFERENCES = true
local SHOW_OPERATION_NAMES = false
local SHOW_MISC_OPERATIONS = true
local LIST_USED_GLOBALS = true
local RETURN_ELAPSED_TIME = true
]]

    loadstring(string.gsub(decompsrc, ";;CONSTANTS HERE;;", CONSTANTS), "Advanced-Decompiler-V3")()
end
loaddecomp(10)