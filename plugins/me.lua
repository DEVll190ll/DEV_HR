--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY Memo       (@ii02ii )          ▀▄ ▄▀ 
▀▄ ▄▀     BY Alidragon       (@Aaa1R )     ▀▄ ▄▀ 
▀▄ ▄▀     ChannelDev       (@Ch_dev)       ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by Memo                ▀▄ ▄▀   
▀▄ ▄▀          me  :   شنو اني               ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do 

local function Memo(msg, matches) 
if is_sudo(msg) then 
        local text = "تاج مخي وحبيبي والمطور مالتي انتة 💋😻 ".."\n".."🆔 - ايديك : "..msg.from.id.."\n".."📝 - اسمك : "..msg.from.first_name.."\n".." معرفك ↩️👲🏻  : @"..msg.from.username.."\n"..'📱 - رقمك 😜🙈 : '..(msg.from.phone or "لُايَوَجْدِ ⛔️‼️")
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
if is_owner(msg) then 
        local text = "انت مدير الكروب فدوة لكلبك 💋🙇🏻 ".."\n".."🆔 - ايديك : "..msg.from.id.."\n".."📝 - اسمك : "..msg.from.first_name.."\n".." معرفك ↩️👲🏻  : @"..msg.from.username.."\n"..'📱 - رقمك 😜🙈 : '..(msg.from.phone or "لُايَوَجْدِ ⛔️‼️")
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
if is_momod(msg) then 
        local text = "انت الادمن فدوة لعينك  💔🙂 ".."\n".."🆔 - ايديك : "..msg.from.id.."\n".."📝 - اسمك : "..msg.from.first_name.."\n".." معرفك ↩️👲🏻  : @"..msg.from.username.."\n"..'📱 - رقمك 😜🙈 : '..(msg.from.phone or "لُايَوَجْدِ ⛔️‼️")
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
if not is_momod(msg) then 
        local text = "انت عضو طالع طيزك 🙌🏽😹 ".."\n".."🆔 - ايديك : "..msg.from.id.."\n".."📝 - اسمك : "..msg.from.first_name.."\n".." معرفك ↩️👲🏻  : @"..msg.from.username.."\n"..'📱 - رقمك 😜🙈 : '..(msg.from.phone or "لُايَوَجْدِ ⛔️‼️")
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
     end 

return { 
  patterns = { 
       "^(موقعي)$", 
  }, 
  run = Memo, 
} 

end 

-- BY Dev Hussein Mohamed @ll190ll
