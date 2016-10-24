--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ALI NOFEL                      ▀▄ ▄▀ 
▀▄ ▄▀     BY ALI NOFEL (@ali_nofel)        ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY ALI NOFEL             ▀▄ ▄▀   
▀▄ ▄▀     lock fwd  : منع اعاده توجيه      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
—]]

do

local function pre_process(msg)
    
    --Checking mute
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg)  then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
    
        return msg
    end
    
 local function run(msg, matches)
     chat_id = msg.to.id
local ali = msg['id']
     if is_momod(msg) and matches[1]== 'قفل اعاده توجيه' then
         local fwd = 'mate:'..msg.to.id
         redis:set(fwd, true)
         local text = 'تم قفل اعاده توجيه🙄🎈\n💡 بواسطة : @'..msg.from.username..'\n💡 بواسطة : '.. msg.from.id..'\n'
         return reply_msg(ali, text, ok_cb, false)
         end
local ali = msg['id']
    if not is_momod(msg) and matches[1]== 'قفل اعاده توجيه' then
    local text= 'للمشرفين فقط😐'
 return reply_msg(ali, text, ok_cb, false)
end
local ali = msg['id']
if is_momod(msg) and matches[1]== 'فتح' and matches[2]== 'اعاده توجيه' then
    local fwd = 'mate:'..msg.to.id
    redis:del(fwd)
    local text = 'تم فتح اعاده توجيه🙄🎈\n💡 بواسطة : @'..msg.from.username..'\n💡 بواسطة : '.. msg.from.id..'\n'
    return reply_msg(ali, text, ok_cb, false)
end

local ali = msg['id']
if not is_momod(msg) and matches[1]== 'فتح اعاده توجيه' then
    local text= 'للمشرفين فقط😐'
 return reply_msg(ali, text, ok_cb, false)
 end

end
return {
    patterns ={
     '^(قفل اعاده توجيه)$',
        '^(فتح اعاده توجيه)$'
    },
run = run,
pre_process = pre_process 
}
end
