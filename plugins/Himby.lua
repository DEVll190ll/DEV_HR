--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄    
      #BY @Aaa1R 
      JUST WRITED BY :ali dragon  
      
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]


do 
local function ch_dev(extra, success, result) 
 local oscar_id = result.from.peer_id 
 local r = extra.r 
 if result.from then 
    if result.from.username then 
       username = result.from.username 
    else 
       username = "nil" 
    end 
 end 
 local msg = result 
 local reply = msg['id'] 
 local a = "محہ💋ــحْﮧ❥┋❤️😻🔥" 
    reply_msg(reply, a, ok_cb, true) 
end 
local function ali_dragon(msg, matches) 
 local r = get_receiver(msg) 
 local e = msg['id'] 
 local f = "تدلل يلمعة عيني  انتة 💋🙊  " 
-- by @ii02ii_and_@Aaa1R 
  if is_momod(msg) and matches[1] == "بوسة" and msg.reply_id then 
     msgr = get_message(msg.reply_id, ch_dev, {r=r, }) 
     reply_msg(e, f, ok_cb, true) 
end 
end 
return { 
  patterns = { 
       "^(بوسة)$", 
  }, 
  run = ali_dragon, 
} 

end 

--By alidragon 👾