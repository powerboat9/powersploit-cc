local hidden = {}

local function appendPadding(path, nPadding)
    local name = fs.getName(path)
    local dir = path:sub(1, -2 - #name)
    return dir .. ("~"):rep(nPadding) .. name
end

function hide(file)
    if fs.ge
    hidden[file] = true
    local numPadCycles = 0
    while true do
        if fs.exists(
    if fs.exists(file) then
        local fList = fs.list(file:sub(1, -2 - #fs.getName(file)), true)
        local repList = {}
        local nPadCycles = 0
        for _, v in ipairs(fList) do
            local _, _, pad, name = fs.getName(v):find("^(~*)(.*)$")
            pad = #pad
            repList[pad] = name
