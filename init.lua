vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.wo.wrap = false

vim.cmd [[ packadd packer.nvim ]]

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'morhetz/gruvbox'
    use 'nvim-treesitter/nvim-treesitter'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v2.x',
        requires = {
            'nvim-lua/plenary.nvim',
            'MunifTanjim/nui.nvim'
        }
    }

    vim.cmd [[ colorscheme gruvbox ]]
    vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

    require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "python", "cpp"},
        highlight = {
            enable = true,
        },
    }
)
end)

vim.opt.list = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.swapfile = false

-- mapping for fzf
vim.g.mapleader = ' '
vim.api.nvim_set_keymap("n", "<leader>fh", ":History<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ff", ":Files<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree filesystem reveal right", { noremap = true })
