--[[ @KNSLTHM
@KNSLTHM
@KNSLTHM
@NENO_CH
@NENO_CH
@NENO_CH
--]]

do

local function run(msg, matches)
local bot_id = our_id 
local receiver = get_receiver(msg)
    if matches[1] == 'زحلك'  and is_admin1(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
	   leave_channel(receiver, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^(زحلك)$",
    "^[!#/](زحلك)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
--[[ @KNSLTHM
@KNSLTHM
@KNSLTHM
@NENO_CH
@NENO_CH
@NENO_CH
--]]
