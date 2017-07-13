--[[
# For More Information ....! 
# Developer : ali dragon < @Aaa1R >      #Dev
# our channel: @love0o_o0
]]
do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "اضغط ع المعرف للتحدث مع لصنعني \n💯🐉:@LLSNLL\n💯CH :@ll190ll"

  end 
   
end 

-- #DEV @Aaa1R

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = run, 
} 

end 
