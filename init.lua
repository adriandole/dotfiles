vim.cmd([[let mapleader=" "]])
vim.api.nvim_set_keymap('n', '<Leader>ij', 'o<Esc>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<Leader>ik', 'O<Esc>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', ';', 'A;<Esc>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', 'df', '<Esc>', {noremap=true, silent=true})

-- Note - run as admin the first time on Windows
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

local use = require('packer').use
require('packer').startup(function()
  use 'shaunsingh/nord.nvim'
end)

require('nord').set()
