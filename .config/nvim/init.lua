require('global_settings')
require('plugins')

-- Enable copying from WSL to windows clipboard - need win32yank.exe in usr/local/bin folder with x permission for this to work properly.
vim.opt.clipboard:append("unnamedplus")
vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
        ["*"] = "win32yank.exe -i --crlf",
        ["+"] = "win32yank.exe -i --crlf",
    },
    paste = {
        ["*"] = "win32yank.exe -o --lf",
        ["+"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
}
