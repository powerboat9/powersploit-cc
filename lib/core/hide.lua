local hidden = {}

local function appendPadding(path, nPadding)
    local name = fs.getName(path)
    local dir = path:sub(1, -2 - #name)
    return dir .. ("~"):rep(nPadding) .. name
end

function hide(file)
    if fs.ge
    hidden[file] = true
    if fs.exists(file) then
        local fList = fs.list(file:sub(1, -2 - #fs.getName(file)), true)
        local repList, parse = {}, {}
        for _, v in ipairs(fList) do
            local _, _, pad, name = fs.getName(v):find("^(~*)(.*)$")
            pad = #pad
            repList[#repList + 1] = {pad, name}
            parse[pad] = true
        end
        local function adderThing(n, sum)
            if n < 0 then
                return sum
            else
                return adderThing(n - 1, sum + n)
            end
        end
        for i = 1, adderThing(repList)
