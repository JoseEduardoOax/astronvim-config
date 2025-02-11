vim.cmd "set whichwrap+=<,>,[,],h,l" --cuando estas al inicio de una linea puedas ir al final de la linea anterior y viceversa
vim.cmd "set autoindent"
vim.cmd "set expandtab"
vim.cmd "set tabstop=2"
vim.cmd "set shiftwidth=2"
-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = true,           -- sets vim.opt.wrap
    -- showtabline = 0,    -- sets vim.opt.showtabline - zero hides tabs
    timeoutlen = 420,
  },
  g = {
    mapleader = " ",                 -- sets vim.g.mapleader
    -- maplocalleader = ",",         -- Set local leader key binding (defined in AstroNvim)
    autoformat_enabled = true,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autopairs_enabled = true,        -- enable autopairs at start
    diagnostics_mode = 3,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = false, -- disable notifications when toggling UI elements
    VM_leader = "gm",                -- Visual Multi Leader (multiple cursors)
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
