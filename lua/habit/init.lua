print"haha"
require"habit.settings"

M={}
local now
function date()
   if now==nil then
        now=os.clock()
    end 
    return now
end
M.date=date
return M

