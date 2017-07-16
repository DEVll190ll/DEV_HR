--[[ 
    BY ADOLF_HITLER (@LL190LL)  BY:حسين محمد     BY ADOLF_HITLER    (@LLSNLL)     
—]]
local function pre_process(msg) 
 local aldon = msg['id'] 
    local user = msg.from.id 
    local hash = 'mate:'..msg.from.id 
    if msg.text == 'هارلي' then 
      if redis:get(hash) then 
        send_large_msg(get_receiver(msg)) 
local jalal ="هااا شرايد من صخام 🙆🏿‍♂️💔"
reply_msg(aldon,jalal,ok_cb,true) 

        redis:del(hash) 
      else 
        redis:set(hash, true) 
        send_large_msg(get_receiver(msg)) 
local don = "وردايتي حبيبي 😻شرايد😒 "
reply_msg(aldon,don,ok_cb,true) 
      end 
    end 
    return msg 
end 
return { 
    patterns = {}, 

    pre_process = pre_process 
}