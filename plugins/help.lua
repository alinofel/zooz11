do 

function run(msg, matches) 
  return [[ 
💙 🎈zooz 🔃 BOT🎈

〰〰〰〰〰〰〰〰

▫️ م1 ❂ لعرض الاوامر الرئيسية ⚙

▫️ م2 ❂ لعرض الاوامر الثانوية ⚙

▫️ م3 ❂ لعرض أوامر حماية المجموعة ⚙

▫️ م المطور ❂ لعرض أوامر المطور ⚙

〰〰〰〰〰〰〰〰
🍃dev ««« @ali_nofel
🍃dev bot ««« @rafide_bot
.
]] 

end 

return { 
description = "Help list", 
usage = "Help list", 
patterns = { 
"^(الاوامر)$", 
}, 
run = run 
} 
end
