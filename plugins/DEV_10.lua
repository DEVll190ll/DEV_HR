--[[ 
    BY ADOLF_HITLER (@LL190LL)  BY:حسين محمد     BY ADOLF_HITLER    (@LLSNLL)     
--]]
do
    
local function mohammedboss(msg,matches)
    if matches[1] == "chat_add_user"  then 
      return " مہٰرحہٰبہٰـآ بہٰـكہٰ  🙊💋\n".."🐱🔹🔸🔹🔸🔹🔸🔹🔹🐱 \n".." آسہٰــمــہٰڪ 💋🌝 :-  "..msg.action.user.print_name.."\n".."مــعـہٰـرفــہٰڪ🙊❤️ :- @"..(msg.action.user.username or "لآ يہۧوجہۧد🐸🍆").."\n".."    آيـہٰـديـہٰـڪ😌🌸  :- "..msg.action.user.id.."\n".."آسـہٰـم آلمـہٰـجـہٰـموعہٰۿﮧ🌞🐬 :-  "..msg.to.title.."\n".."آيـہٰـدي آلمـہٰـجـہٰـموعہٰۿﮧ🌚🐲 :-  "..msg.to.id.."\n".."🐼🔹🔸🔹🔸🔹🔸🔹🔹🐼 "

    elseif matches[1] == "chat_add_user_link" then
      return " مہٰرحہٰبہٰـآ بہٰـكہٰ  🙊💋\n".." آسہٰم آلہٰمہٰجہٰمہٰوعہٰة 🐾🌝 ::  "..msg.to.title.."\n".."آيہٰدي آلہٰمہٰجہٰمہٰوعہٰة 🌞🆔 ::   "..msg.to.id.."\n".." آسہٰمہٰكہٰ 🙂🌝 :: "..(msg.from.first_name or " ").."\n".."مہٰعہٰرفہٰكہٰ 🐾🌝 :: @"..(msg.from.username or "لايوجد " ).."\n".." آيہٰديہٰكہٰ 🍭🐥 :: "..msg.from.id
    end
    if matches[1] == "chat_del_user" then
    return "آلہٰلہٰه ويہٰآكہٰ وآلہٰتہٰكہٰسہٰي ع حہٰسہٰآبہٰي 🌝😹"..msg.action.user.first_name
end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
        "^!!tgservice (chat_del_user)$"
       
    },
 run = mohammedboss,
}
end
--[[ 
    BY ADOLF_HITLER (@LL190LL)  BY:حسين محمد     BY ADOLF_HITLER    (@LLSNLL)     
--]]