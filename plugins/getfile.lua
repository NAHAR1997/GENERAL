--[[ @KNSLTHM
@KNSLTHM
@KNSLTHM
@NENO_CH
@NENO_CH
@NENO_CH
--]]
local function run(msg, matches)
  if matches[1] == "جلب ملف"then
    local file = matches[2]
    if is_sudo(msg) then --sudo only !
      local receiver = get_receiver(msg)
      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
      else 
        return nil
    end
  end
end

return {
  patterns = {
  "^(جلب ملف) (.*)$",
  "^[#!/](جلب ملف) (.*)$"
  },
  run = run
}

--[[ @KNSLTHM
@KNSLTHM
@KNSLTHM
@NENO_CH
@NENO_CH
@NENO_CH
--]]