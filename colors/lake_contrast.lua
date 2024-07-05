if vim.fn.has('nvim-0.7.0') ~= 1 then
    vim.notify_once('lake requires neovim v0.7 or newer')
    return
end

if vim.g.colors_name then
    vim.cmd('hi clear')
end

vim.g.colors_name = 'lake_contrast'

local lake = require('lake')
lake.apply_highlights(lake.colors_contrast)
