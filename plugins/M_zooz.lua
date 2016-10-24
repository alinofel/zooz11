--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ALI NOFEL                      ▀▄ ▄▀ 
▀▄ ▄▀     BY ALI NOFEL (@ali_nofel)        ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY ALI NOFEL             ▀▄ ▄▀   
▀▄ ▄▀      help dev  : اوامر المطور        ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
local reply_id = msg['id']
if is_sudo(msg) and matches[1]== "م المطور" then
local S = [[  
⚙اوامر المطور 🔃

▫️تفعيل المجموعه ❂ للتفعيل البوت
▫️تعطيل المجموعه❂ للتعطيل البوت
▫️سوبر  ❂ للترقية المجموعة
▫️رفع المدير ❂ لرفع مدير المجموعة
▫️اذاعه  ❂ لنشر كلمة في جميع المجموعات
▫️تشغيل❂ لتشغيل البوت في المجموعة
▫️تعطيل❂ لتعطيل البوت في المجموعة
▫️اضف مطور❂لاضافة المطور في المجموعة
▫️ طرد  ❂ لطرد البوت من المجموعة
▫️جلب  ❂لجلب ملف من السيرفر
〰〰〰〰〰〰〰〰
🍃dev ««« @ali_nofel
🍃dev bot ««« @rafidebot
.
]]
reply_msg(reply_id, S, ok_cb, false)
end

if not is_sudo(msg) then
local S = "للمطورين فقط 😎🖕🏿"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م المطور)$",
},
run = run 
}
end
