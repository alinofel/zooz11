--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ALI NOFEL                      ▀▄ ▄▀ 
▀▄ ▄▀     BY ALI NOFEL (@ali_nofel)        ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY ALI NOFEL             ▀▄ ▄▀   
▀▄ ▄▀     ADD SUDO  : اضافه مطور           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
—]]
do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'اضف مطور' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..146523692
        chat_add_user(chat, user1, callback, false)
  return "تم اضافة المطور ♕⤵️رآآآفـہہضّي⇣❃🔹 الى هذه المجموعة"
      end
if matches[1] == 'اضف مطور' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..146523692
        chat_add_user(chat, user2, callback, false)
  return "تم اضافة المطور ♕⤵️رآآآفـہہضّي⇣❃🔹 الى هذه المجموعة"
      end
 
 end

return {
  description = "Invite Sudo and Admin", 
  usage = {
    "/addsudo : invite Bot Sudo", 
  },
  patterns = {
    "^(اضف مطور)",
    "^(اضف مطور)",
    "^(add dev)",
    "^(add dev)",
  }, 
  run = run,
}
-- arabic : @ali_nofel

end
