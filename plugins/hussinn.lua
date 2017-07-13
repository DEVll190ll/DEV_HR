[Forwarded from تہٰعہٰلہٰم آلہٰبہٰرمہٰجةة (وحہـٰٰـدآنہـٰٰـي/ مہٰيہٰمہٰو مہٰشہٰآكہٰل آلہٰعہٰرآقہٰيے \ اެلۧاۄږﮆكۣۧــۣۖــۣۖہـسۧيہۣۖ (.❢✾)ـَِـَِـَِـَِـِ🚶ــہۢۛ ۦ ╃ #تہٰوقہٰفہٰت_آلہٰحہٰيہٰآة 00:00:1 📴 ╃)]
--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY Memo                           ▀▄ ▄▀ 
▀▄ ▄▀     BY Memo       (@ii02iI)          ▀▄ ▄▀ 
▀▄ ▄▀     ChannelDev       (@Ch_dev)       ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by Memo              ▀▄ ▄▀   
▀▄ ▄▀  Banhammer :الحجب او الحظر والطرد من المجموعه ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
—]]
local function pre_process(msg)
  local data = load_data(_config.moderation.data)
  — SERVICE MESSAGE
  if msg.action and msg.action.type then
    local action = msg.action.type
    — Check if banned user joins chat by link
    if action == 'chat_add_user_link' then
      local user_id = msg.from.id
      print('Checking invited user '..user_id)
      local banned = is_banned(user_id, msg.to.id)
      if banned or is_gbanned(user_id) then — Check it with redis
      print('User is banned!')
      local print_name = user_print_name(msg.from):gsub("‮", "")
    local name = print_name:gsub("_", "")
      savelog(msg.to.id, name.." ["..msg.from.id.."] is banned and kicked ! ")— Save to logs
      kick_user(user_id, msg.to.id)
      end
    end
    — Check if banned user joins chat
    if action == 'chat_add_user' then
      local user_id = msg.action.user.id
      print('Checking invited user '..user_id)
      local banned = is_banned(user_id, msg.to.id)
      if banned and not is_momod2(msg.from.id, msg.to.id) or is_gbanned(user_id) and not is_admin2(msg.from.id) then — Check it with redis
        print('User is banned!')
      local print_name = user_print_name(msg.from):gsub("‮", "")
    local name = print_name:gsub("_", "")
        savelog(msg.to.id, name.." ["..msg.from.id.."] added a banned user >"..msg.action.user.id)— Save to logs
        kick_user(user_id, msg.to.id)
        local banhash = 'addedbanuser:'..msg.to.id..':'..msg.from.id
        redis:incr(banhash)
        local banhash = 'addedbanuser:'..msg.to.id..':'..msg.from.id
        local banaddredis = redis:get(banhash)
        if banaddredis then
          if tonumber(banaddredis) >= 4 and not is_owner(msg) then
            kick_user(msg.from.id, msg.to.id)— Kick user who adds ban ppl more than 3 times
          end
          if tonumber(banaddredis) >=  8 and not is_owner(msg) then
            ban_user(msg.from.id, msg.to.id)— Kick user who adds ban ppl more than 7 times
            local banhash = 'addedbanuser:'..msg.to.id..':'..msg.from.id
            redis:set(banhash, 0)— Reset the Counter
          end
        end
      end
     if data[tostring(msg.to.id)] then
       if data[tostring(msg.to.id)]['settings'] then
         if data[tostring(msg.to.id)]['settings']['lock_bots'] then
           bots_protection = data[tostring(msg.to.id)]['settings']['lock_bots']
          end
        end
      end
    if msg.action.user.username ~= nil then
      if string.sub(msg.action.user.username:lower(), -3) == 'bot' and not is_momod(msg) and bots_protection == "yes" then —- Will kick bots added by normal users
          local print_name = user_print_name(msg.from):gsub("‮", "")
      local name = print_name:gsub("_", "")
          savelog(msg.to.id, name.." ["..msg.from.id.."] added a bot > @".. msg.action.user.username)— Save to logs
          kick_user(msg.action.user.id, msg.to.id)
      end
    end
  end
    — No further checks
  return msg
  end
  — banned user is talking !
  if msg.to.type == 'chat' or msg.to.type == 'channel' then
    local group = msg.to.id
    local texttext = 'groups'
    —if not data[tostring(texttext)][tostring(msg.to.id)] and not is_realm(msg) then — Check if this group is one of my groups or not
    —chat_del_user('chat#id'..msg.to.id,'user#id'..our_id,ok_cb,false)
    —return
    —end
    local user_id = msg.from.id
    local chat_id = msg.to.id
    local banned = is_banned(user_id, chat_id)
    if banned or is_gbanned(user_id) then — Check it with redis
      print('Banned user talking!')
      local print_name = user_print_name(msg.from):gsub("‮", "")
    local name = print_name:gsub("_", "")