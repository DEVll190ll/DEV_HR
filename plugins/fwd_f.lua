local function pre_process(msg) 
  local jalal = msg['id'] 
  local user = msg.from.id 
  local chat = msg.to.id 
  local hash = 'mate:'..chat..':'..user 
  if msg.fwd_from and not is_momod(msg) then 
    if redis:get(hash) and msg.fwd_from and not is_momod(msg) then 
      delete_msg(msg.id, ok_cb, false) 
      delete_msg(msg.id, ok_cb, false) 
      delete_msg(msg.id, ok_cb, false) 
      send_large_msg(get_receiver(msg), '#ركــز_جــرجــف🌝✋مـمنوع ســوي تـوجيه اهـنـا🍹🌚لابــل نـعـال ☹️🖕🏿\n #الـــعــــضـــو : @'..msg.from.username)
      redis:del(hash) 
   else 
      delete_msg(msg.id, ok_cb, false) 
      redis:set(hash, true) 
    end 
  end 
  return  msg 
end 

local function run(msg, matches) 
  local jalal = msg['id'] 
  if matches[1] == 'قفل اعاده توجيه' then 
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:set(hash, true) 
         local x = "" 
      reply_msg(jalal, x, ok_cb, true) 
    else 
      local asdy = 'هاذ الامر للمشرفين #فقط❗️⛔️' 
      reply_msg(jalal, asdy, ok_cb, true) 
    end 
  end 
  if matches[1] == 'فتح اعاده توجيه' then 
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
    local don = "" 
      reply_msg(jalal, don, ok_cb, true) 
    else 
      local jalal_aldon = 'هاذ الامر للمشرفين #فقط❗️⛔️' 
      reply_msg(jalal, jalal_aldon, ok_cb, true) 
    end 
  end 
end 
return { 
    patterns = { 
        "^(قفل اعاده توجيه)$", 
        "^(فتح اعاده توجيه)$" 
    }, 
run = run, 
    pre_process = pre_process 
}
