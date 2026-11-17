local __orig
__orig = hookfunction(gethwid, function(...)
    local args = {...}
    print("[CLOUD]: tried to fetch HWID: "..table.unpack(args).."Returned: "..InputValue) 
    return InputValue
    
end)
