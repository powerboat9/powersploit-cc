local hidden = {}

function hide(file)
    if fs.ge
    hidden[file] = true
    if fs.exists(file) then
        local fList = fs.list(file:sub(1, -2 - #fs.getName(file)), true)
        local repList = {}
        for _, v in ipairs(fList) do
            if 
