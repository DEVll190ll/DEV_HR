--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ADOLF_HITLER (@LL190LL)          ▀▄ ▄▀ 
▀▄ ▄▀     BY ADOLF_HITLER    (@LLSNLL)      ▀▄ ▄▀        
▀▄ ▄▀   go bot   : مغادره البوت               ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]] 

do 
local function ali_dragon(msg, matches)
local bot_id = our_id 
local receiver = get_receiver(msg)
    if matches[1] == 'مغادره' and is_admin1(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
     leave_channel(receiver, ok_cb, false)
    elseif msg.service and msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_admin1(msg) then
       send_large_msg(receiver, ' انت مو مطوري 😐 وممسموحلك تضيف البوت اهنا 😒🚶  \n 🏄🏻 للتحدث مع مطوري تعال اهنا 😻🏃🏻👇🏻 \n🙊 @Aaa1R \n 💔🌚 واذا محضور هم تعال اهنا   \n \n 👻  @Like13_bot\n قناة السورس (خاصة للمطورين) دش 😹💔\n  >@Ch_Dev ☦', ok_cb, false)       chat_del_user(receiver, 'user#id'..bot_id, ok_cb, false)
     leave_channel(receiver, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^(مغادره)$",
    "^!!tgservice (.+)$",
  },
  run = ali_dragon,
}
end
--By حسين محمد
