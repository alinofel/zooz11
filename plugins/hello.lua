-- Made By @MAXDEVD 
-- Made By @Omar_Real

do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
     local text = 'نورت😍💋مح'..'\n'..'\n'
     ..'المعلومات 📋 الخاصة بك 🔷'..'\n'
    ..'📌 اسمك :  '..msg.action.user.print_name..'\n'
    ..'📌 معرفك : @'..(msg.action.user.username or "لا يوجد")..'\n'
    ..'💭 الايدي : '..msg.action.user.id..'\n'
    ..'📱رقم الهاتف : '..(msg.action.user.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📌 اسم المجموعة : '..msg.to.title..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'✝ ضافك : '..msg.from.print_name..'\n'
    ..'✝ معرفة : @'..(msg.from.username or "لا يوجد")..'\n'
..' ايدية 🆔 : '..msg.from.id..'\n'
    ..'📱 رقم هاتفةة : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📅 التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕚 الوقت : '..os.date(' %T*', os.time())..'\n'  
     ..'➖➖➖➖➖ـ'..'\n'
    ..'🕵 مطور البوت : @ali_nofel'..'\n'
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
          local text = 'نورت😍💋مح'..'\n'..'\n'     ..'المعلومات 📋 الخاصة بك 🔷'..'\n'
    ..'📌 اسمك :  '..msg.action.user.print_name..'\n'
    ..'📌 معرفك : @'..(msg.action.user.username or "لا يوجد")..'\n'
    ..'💭 الايدي : '..msg.action.user.id..'\n'
    ..'📱رقم الهاتف : '..(msg.action.user.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📌 اسم المجموعة : '..msg.to.title..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'✝ ضافك : '..msg.from.print_name..'\n'
    ..'✝ معرفة : @'..(msg.from.username or "لا يوجد")..'\n'
..' ايديه 🆔 : '..msg.from.id..'\n'
    ..'📱 رقم : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📅 التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕚 الوقت : '..os.date(' %T*', os.time())..'\n'  
     ..'➖➖➖➖➖ـ'..'\n'
    ..'🕵 مطور البوت : @ali_nofel'..'\n'
        return reply_msg(msg.id, text, ok_cb, false)
  end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
    },
 run = run
}
end
