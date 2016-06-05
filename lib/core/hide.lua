local nDir = ...

--[[local function appendPadding(path, nPadding)
    local name = fs.getName(path)
    local dir = path:sub(1, -2 - #name)
    return dir .. ("~"):rep(nPadding) .. name
end]]--

local function filterPath(p)
    for v in p:gfind("[^/]*") do
        

local function filterInput(filterArgList, funct)
    return function(...)
        for _, i in ipairs(filterArgList) do
            if type(args[i]) == "string" then args[i] = fs.combine(nDir, filterPath(args[i]) end
        end
        local d = {pcall(function funct(...) end)}
        if not d[1] then error(d[2], 0) end
        table.remove(d, 1)
        return table.unpack(d)
    end
end

local function filterInputs(filterArgList, ...)
    local t = {}
    for k, v in ipairs(args) do
        t[k] = filterInput(filterArgList, v)
    end
end

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
            
            
