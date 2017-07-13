do
local function run(msg, matches, callback, extra)
local data = load_data(_config.moderation.data)
local rules = data[tostring(msg.to.id)]['rules']
local about = data[tostring(msg.to.id)]['description']
local hash = 'group:'..msg.to.id
local group_welcome = redis:hget(hash,'welcome')
if matches[1] == 'مسح الترحيب' or  matches[1] == 'dwlc' and not matches[2] and is_owner(msg) then 
    
   redis:hdel(hash,'welcome')
        return 'تـ{✅}ـم حـ(❌)ـذفـ الـتـ{💠}ـرحـيـبـ»\nيـا '..(msg.from.first_name or "erorr")..'\n'
end

local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)

if is_owner(msg) and matches[1] == 'ضع ترحيب' or matches[1] == 'swlc' then
redis:hset(hash,'welcome',matches[2])
        return 'تـ{✅}ـم حـفـ(💡)ـظ الـتـ{💠}ـرحـيـبـ»\nيـا '..(msg.from.first_name or "erorr")..'\n'
end

if matches[1] == 'chat_add_user' and msg.service then
group_welcome = string.gsub(group_welcome, '$userlink', "telegram.me/"..(msg.action.user.username or '').."")
group_welcome = string.gsub(group_welcome, '$gpname', msg.to.title)
group_welcome = string.gsub(group_welcome, '$name', ""..(msg.action.user.print_name or '').."")
  group_welcome = string.gsub(group_welcome, '$username', "@"..(msg.action.user.username or '').."")
  group_welcome = string.gsub(group_welcome, '$entime', ""..(jdat.ENtime).."")
  group_welcome = string.gsub(group_welcome, '$endate', ""..(jdat.ENdate).."")
  group_welcome = string.gsub(group_welcome, '$rules', ""..(rules or '').."")
  group_welcome = string.gsub(group_welcome, '$about', ""..(about or '').."")

elseif matches[1] == 'chat_add_user_link' and msg.service then
group_welcome = string.gsub(group_welcome, '$userlink', "telegram.me/"..(msg.from.username or '').."")
group_welcome = string.gsub(group_welcome, '$gpname', msg.to.title)
group_welcome = string.gsub(group_welcome, '$name', ""..(msg.from.print_name or '').."")
  group_welcome = string.gsub(group_welcome, '$username', "@"..(msg.from.username or '').."")
  group_welcome = string.gsub(group_welcome, '$entime', ""..(jdat.ENtime).."")
  group_welcome = string.gsub(group_welcome, '$endate', ""..(jdat.ENdate).."")
  group_welcome = string.gsub(group_welcome, '$rules', ""..(rules or '').."")
  group_welcome = string.gsub(group_welcome, '$about', ""..(about or '').."")
end
return group_welcome
end
return {
  patterns = {
  "^[!/#](swlc) +(.*)$",
  "^[!/#](dwlc)$",
  "^(ضع ترحيب) +(.*)$",
  "^(مسح الترحيب)$",
  "^!!tgservice (chat_add_user)$",
  "^!!tgservice (chat_add_user_link)$",
  },
  run = run
}
end
