local o = vim.o
local g = vim.g
local opt = vim.opt
--g.user_emmet_leader_key = '<C-Y>'
--theme
function change_theme_by_time(vimcmd)
  hour = tonumber(os.date("!%H"))

  if hour > 20 then
    vimcmd.colorscheme "kanagawa"
  else
    vimcmd.colorscheme "catppuccin-latte"
  end
end


opt.termguicolors = true
change_theme_by_time(vim.cmd)

g.python3_host_prog = '/usr/bin/python3'
o.scrolloff = 10
o.clipboard = "unnamedplus"
o.relativenumber = true
o.number = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.tabstop = 2
o.shiftwidth = 2
opt.mouse = 'a'
opt.colorcolumn = '75'

o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
o.textwidth = 300
o.softtabstop = -1

--chars on tab
o.list = true
o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"

o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

g.mapleader = " "
g.maplocalleader = " "


opt.shell = "fish"
