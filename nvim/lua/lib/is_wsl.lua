function IS_WSL()
    local f = io.open("/proc/version", "r")
    if f then
        local content = f:read("*all")
        f:close()
        if content:lower():find("microsoft") then
            return true
        end
    end
    return vim.env.WSL_INTEROP ~= nil or vim.env.WSL_DISTRO_NAME ~= nil
end
