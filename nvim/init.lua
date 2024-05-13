local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
        {
          "folke/tokyonight.nvim",
          lazy = false,
          priority = 1000,
          opts = function()
              vim.cmd.colorscheme('tokyonight-night')
            end,
        }
})

vim.cmd[[colorscheme tokyonight-night]]
vim.cmd[[set clipboard+=unnamedplus]]
vim.cmd[[set number]]
vim.cmd[[set autoindent]]
vim.cmd[[set smartindent]]
vim.cmd[[set expandtab]]
vim.cmd[[set hlsearch]]
vim.cmd[[set ignorecase]]
vim.cmd[[set smartcase]]
vim.cmd[[set encoding=utf-8]]
vim.cmd[[syntax enable]]
vim.cmd[[set wrap]]
vim.cmd[[set laststatus=2]]
vim.cmd[[set ruler]]
vim.cmd[[set wildmenu]]
vim.cmd[[set mouse=a]]
vim.cmd[[vmap <Tab> >]]
vim.cmd[[vmap <S-Tab> <]]
