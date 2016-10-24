--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ALI NOFEL                      ▀▄ ▄▀ 
▀▄ ▄▀   BY ALI NOFEL     (@ali_nofel)      ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY ALI NOFEL             ▀▄ ▄▀   
▀▄ ▄▀            كتم الوسائط              ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
—]]
do 

local function pre_process(msg) 
local ali = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local allosh = 'mate:'..msg.to.id 
    if redis:get(allosh) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = "يمنع نشر صور فيديو صوت في هذه المجموعة😐".."\n".." 💡 معرفك : @"..(msg.from.username or " ") 
reply_msg(ali, test, ok_cb, true) 

end 

        return msg 
    end 

local function run(msg, matches) 
local ali = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local zooz= 'mate:'..msg.to.id 
                    redis:set(zooz, true) 
local alloshe = 'تم قفل جميع الوسائط🙄🎈 \n💡 بواسطة : @'..msg.from.username..'\n💡 بواسطة : '.. msg.from.id..'\n'
reply_msg(ali, alloshe, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local allosh = 'للمشرفين فقط😒🎈'
reply_msg(ali, allosh, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then
      local zooz= 'mate:'..msg.to.id
      redis:del(zooz)
local alloshe = 'تم فتح جميع الوسائط🙄🎈 \n💡 بواسطة : @'..msg.from.username..'\n💡 بواسطة: '.. msg.from.id..'\n'
reply_msg(ali, alloshe, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local allosh= 'للمشرفين فقط😒🎈'
reply_msg(ali, allosh, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  },
run = run, 
    pre_process = pre_process 
} 

end
