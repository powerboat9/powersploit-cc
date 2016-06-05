local nDir = ...

local function appendPadding(path, nPadding)
    local name = fs.getName(path)
    local dir = path:sub(1, -2 - #name)
    return dir .. ("~"):rep(nPadding) .. name
end

local function filterInput(filterArgList, funct)
    return function(...)
        local 

--[[function hide(file)
    
    hidden[file] = true
    if fs.exists(file) then
        local fList = fs.list(file:sub(1, -2 - #fs.getName(file)), true)
        local repList = {}
        local highest
        for _, v in ipairs(fList) do
            local _, _, pad, name = fs.getName(v):find("^(~*)(.*)$")
            pad = #pad
            repList[pad] = name
        end
        local ordered = {}
        for i = 1, #repList do
            if repList[i]
]]--
            
            
