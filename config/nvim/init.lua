local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

vim.g.mapleader = ","

require("lazy").setup({
	{
		'mrcjkb/haskell-tools.nvim',
		version = '^3', -- Recommended
		ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
	},
	{
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = {
			{"<leader>ff", "<cmd>Telescope find_files<cr>", mode = "n"},
			{"<leader>fg", "<cmd>Telescope git_files<cr>", mode = "n"},
			{"<leader>fb", "<cmd>Telescope buffers<cr>", mode = "n"}
		}
	}
})


vim.cmd [[
syntax off
set laststatus=0
]]
