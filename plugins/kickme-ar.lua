--[[ @KNSLTHM
@KNSLTHM
@KNSLTHM
@NENO_CH
@NENO_CH
@NENO_CH
--]]
local function run(msg, matches) 
if matches[1] == 'مغادره' then 
local hash = 'kick:'..msg.to.id..':'..msg.from.id 
     redis:set(hash, "waite") 
      return '🎐| يا حبيبي \n🎐| المعرف | @'..msg.from.username..'\n🎐| هل انت متأكد من رغبتك بالمغادره؟\n🎐| ارسل ﴿ نعم ﴾ للتاكيد والمغادره\n🎐| ارسل﴿ لا ﴾ لالغاء المغادره \n🎐| خليك ويانه بتونس 😕🎈' 
    end 

    if msg.text then 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
      if msg.text:match("^نعم$") and redis:get(hash) == "waite" then 
     redis:set(hash, "ok") 
   elseif msg.text:match("^لا$") and redis:get(hash) == "waite" then 
   send_large_msg(get_receiver(msg), "زين سويت خليك ويانه بتونس 🌚❤️🙊") 
     redis:del(hash, true) 

      end 
    end 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
    if redis:get(hash) then 
        if redis:get(hash) == "ok" then 
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false) 
         return 'اوك رح اطردك وبعد لترجع ياخراا 😡😐👍🏿 ('..msg.to.title..')' 
        end 
      end 
    end 

return { 
  patterns = { 
  '^(مغادره)$', 
  '^(نعم)$', 
  '^(لا)$' ,
  '^[#!/](مغادره)$', 
  '^[#!/](نعم)$', 
  '^[#!/](لا)$'
  }, 
  run = run, 
}
--[[ @KNSLTHM
@KNSLTHM
@KNSLTHM
@NENO_CH
@NENO_CH
@NENO_CH
--]]
