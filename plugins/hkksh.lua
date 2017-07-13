--[[
     تــم تعـريب المــلف بواســطة : @Ahmad_x7
القنــــاة'ة : @B7_78
القنـاة يلي اخـذت منها الملـف : @DeV_s_O
--]]
do
local function run(msg, matches)

hash = 'bot:help'

if matches[1] == 'setk' or matches[1] == 'اضف كليشه'  then
if not is_sudo(msg) then return end
redis:set(hash,'waiting:'..msg.from.id)
return 'ارسل الكـليشـه ليتـم حفـظـها 📥🗂️'
else
if redis:get(hash) == 'waiting:'..msg.from.id then
redis:set(hash,msg.text)
return 'تم الحفظ ارسل كلمة الكليشه لعرضها 📂✅'
end
end


if matches[1] == 'sk'or matches[1] == 'الكليشه'  then
if not is_momod(msg) then return end
return redis:get(hash)
end

end

return {
    patterns = {
        '^(اضف كليشه)$',
       '^(الكليشه)$',
 
        '(.*)',
    },
    run = run,
    pre_process = pre_process
}
end
--[[
     تــم تعـريب المــلف بواســطة : @Ahmad_x7
القنــــاة'ة : @B7_78
--]]