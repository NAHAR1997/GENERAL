--[[ @KNSLTHM
@KNSLTHM
@KNSLTHM
@NENO_CH
@NENO_CH
@NENO_CH
--]]
do

local function pre_process(msg)

    local fwd = 'mate:'..msg.to.id
    if redis:get(fwd) and not is_momod(msg) and msg.fwd_from then
            delete_msg(msg.id, ok_cb, true)
            return "ok"
end
        return msg
    end

  


local function moody(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'قفل اعاده توجيه'  then
      
            
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return ""
  elseif is_momod(msg) and matches[1] == 'فتح اعاده توجيه' then
      local hash = 'mate:'..msg.to.id
      redis:del(hash)
      return ""
end

end

return {
    patterns = {
        '^(قفل اعاده توجيه)$', 
        '^(فتح اعاده توجيه)$',
        '^[/!#](قفل اعاده توجيه)$', 
        '^[/!#](فتح اعاده توجيه)$'
    },
run = moody,
pre_process = pre_process 
}
end

--[[ @KNSLTHM
@KNSLTHM
@KNSLTHM
@NENO_CH
@NENO_CH
@NENO_CH
--]]