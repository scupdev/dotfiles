vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd [[ packadd packer.nvim ]]

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'morhetz/gruvbox'
    use 'nvim-treesitter/nvim-treesitter'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    vim.cmd [[ colorscheme gruvbox ]]

    require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "python", "cpp", "lua" },
        highlight = {
            enable = false,
        },
    })


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
