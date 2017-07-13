--[[ 
     _        BY:@Aaa1R                     
  __| |_ __ __ _  __ _  ___  _ __  
 / _` | '__/ _` |/ _` |/ _ \| '_ \ 
| (_| | | | (_| | (_| | (_) | | | |
 \__,_|_|  \__,_|\__, |\___/|_| |_|
                 |___/             
--]]
local function ii02ii(msg,matches)
local Memo = matches[2]
return Memo
end

  return  {
    patterns = {
      "^(كول)(.+)",
       "^(اكول)(.+)",
        "^(يكول)(.+)",
},
  run = ii02ii,
}
-- BY Dev :ali dragon
-- بداعت امك لتحذف الحقول
