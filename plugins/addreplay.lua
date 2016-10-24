--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ALI NOFEL                      ▀▄ ▄▀ 
▀▄ ▄▀   BY ALI NOFEL     (@ali_nofel)      ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY ALI NOFEL             ▀▄ ▄▀   
▀▄ ▄▀          اضافه ردود                 ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
—]]
local function get_variables_ali(msg) 
  if msg.to.type == 'chat' or msg.to.type == 'channel' then 
    return 'chat:bot:variables' 
  end 
end 

local function get_value(msg, var_name) 
  local ali = get_variables_ali(msg) 
  if ali then 
    local value = redis:hget(ali, var_name) 
    if not value then 
      return 
    else 
      return value 
    end 
  end 
end 

local function list_chats(msg) 
  local ali = get_variables_ali(msg) 

  if ali then 
    local names = redis:hkeys(ali) 
    local text = 'الردود 😕🎈هي  : ️\n\n' 
    for i=1, #names do 
      text = text..'® '..names[i]..'\n' 
    end 
    return text 
   else 
   return 
  end 
end 

local function save_value(msg, name, value) 
  if (not name or not value) then 
    return "Usage: !set var_name value" 
  end 
  local ali = nil 
  if msg.to.type == 'chat' or msg.to.type == 'channel'  then 
    ali = 'chat:bot:variables' 
  end 
  if ali then 
    redis:hset(ali, name, value) 
    return '('..name..')\n تم اضافه 🌚🚬الرد ' 
  end 
end 
local function del_value(msg, name) 
  if not name then 
    return 
  end 
  local ali = nil 
  if msg.to.type == 'chat' or msg.to.type == 'channel'  then 
    ali = 'chat:bot:variables' 
  end 
  if ali then 
    redis:hdel(ali, name) 
    return '('..name..')\n تم حذف 🌚🚬الرد ' 
  end 
end 

local function delallchats(msg) 
  local ali = 'chat:bot:variables' 

  if ali then 
    local names = redis:hkeys(ali) 
    for i=1, #names do 
      redis:hdel(ali,names[i]) 
    end 
    return "saved!" 
   else 
   return 
  end 
end 

local function run(msg, matches) 
 if is_sudo(msg) then 
    local name = matches[3] 
  local value = matches[4] 
  if matches[2] == 'حذف الجميع' then 
    local output = delallchats(msg) 
    return output 
  end 
  if matches[2] == 'اضف' then 
  local name1 = user_print_name(msg.from) 
  savelog(msg.to.id, name1.." ["..msg.from.id.."] saved ["..name.."] as > "..value ) 
  local text = save_value(msg, name, value) 
  return text 
    elseif matches[2] == 'حذف' then 
    local text = del_value(msg,name) 
    return text 
    end 
 end 
  if matches[1] == 'الردود' then 
    local output = list_chats(msg) 
    return output 
  else 
    local name = user_print_name(msg.from) 
    savelog(msg.to.id, name.." ["..msg.from.id.."] used /get ".. matches[1])-- save to logs 
local text = get_value(msg, matches[1]) 
    return reply_msg(msg.id,text,ok_cb,false) 
  end 
end 

return { 
  patterns = { 
   "^(الردود)$",
    "^(رد) (اضف) ([^%s]+) (.+)$",
    "^(رد) (حذف الجميع)$",
    "^(رد) (حذف) (.*)$",
    "^(.+)$", 
  }, 
  run = run 
} 
-- @ali_nofel