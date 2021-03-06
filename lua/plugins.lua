local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end -- Bootstrap packer so it auto installs everywhere

vim.cmd [[packadd packer.nvim]]

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes to plugins.lua
local packer = require('packer')

packer.init({
    max_jobs = 6,
    profile = {
        enable = true,
    },
})

return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- UI Plugins
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    -- use 'numToStr/FTerm.nvim'
    use 'folke/trouble.nvim'
    use 'tjdevries/colorbuddy.vim'
    use 'RishabhRD/nvim-rdark'
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}, config = require('plug-config.lualine')
    }
    use {'romgrk/barbar.nvim', config = require('plug-config.barbar')}

    -- Colorscheme Plugins
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Completion/Lsp Plugins
    use {'hrsh7th/nvim-compe', config = require('plug-config.compe'), event = 'InsertEnter'}

    -- Editing Plugins
    use {'windwp/nvim-autopairs', event = 'InsertEnter', config = require('plug-config.autopairs')}
    use {'b3nj5m1n/kommentary', event = 'BufWinEnter'}


    -- Terminal Plugins
    use {'numToStr/FTerm.nvim', config = require('plug-config.FTerm')}

    use {'neovim/nvim-lspconfig'}
    use {'kabouzeid/nvim-lspinstall', config = require('plug-config.lspinstall')}

end)
