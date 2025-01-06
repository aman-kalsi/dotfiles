require('global_settings')
require('plugins')

-- Enable copying from WSL to windows clipboard - need clip.exe in usr/local/bin folder for this to work properly
vim.g.clipboard = {
    name = "clip-wsl",
    copy = {
        ["*"] = "../../../../mnt/c/Windows/System32/clip.exe",
        ["+"] = "../../../../mnt/c/Windows/System32/clip.exe",
    },
    paste = {
        ["*"] = "../../../../mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -command Get-Clipboard",
        ["+"] = "../../../../mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -command Get-Clipboard",
    },
    cache_enabled = 0,
}
