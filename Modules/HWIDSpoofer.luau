local __orig
__orig = hookfunction(gethwid, function(...)
    print("[CLOUD]: HWID Fetch mitigated.")
    return InputValue
end)
