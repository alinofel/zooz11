do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "للتحدث مع المطور اضغط على المعرف التالي \n ⚜ @ali_nofel \n او اذا محظور اضغط هنا \n ⚜  @rafide_bot\n المطور > @ali_nofel ⚜ "
  end
   
end 

-- @rafidebot

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = run, 
} 

end 
-- @rafidebot
