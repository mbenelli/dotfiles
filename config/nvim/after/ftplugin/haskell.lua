-- ~/.config/nvim/after/ftplugin/haskell.lua
local ht = require('haskell-tools')
local bufnr = vim.api.nvim_get_current_buf()
local opts = { noremap = true, silent = true, buffer = bufnr, }
-- haskell-language-server relies heavily on codeLenses,
-- so auto-refresh (see advanced configuration) is enabled by default
vim.keymap.set('n', '<space>cl', vim.lsp.codelens.run, opts)
-- Hoogle search for the type signature of the definition under the cursor
vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)
-- Evaluate all code snippets
vim.keymap.set('n', '<space>ea', ht.lsp.buf_eval_all, opts)
-- Toggle a GHCi repl for the current package
vim.keymap.set('n', '<leader>rr', ht.repl.toggle, opts)
-- Toggle a GHCi repl for the current buffer
vim.keymap.set('n', '<leader>rf', function()
  ht.repl.toggle(vim.api.nvim_buf_get_name(0))
end, opts)
vim.keymap.set('n', '<leader>rq', ht.repl.quit, opts)

--vim.keymap.set('n', 'gD', ht.lsp.buf_declaration, opts)
--vim.keymap.set('n', 'gd', ht.lsp.buf_definition, opts)
--vim.keymap.set('n', 'K', ht.lsp.buf_hover, opts)
--vim.keymap.set('n', 'gi', ht.lsp.buf_implementation, opts)
--vim.keymap.set('n', '<C-k>', ht.lsp.buf.signature_help, opts)
--vim.keymap.set('n', '<space>wa', ht.lsp.buf_add_workspace_folder, opts)
--vim.keymap.set('n', '<space>wr', ht.lsp.buf_remove_workspace_folder, opts)
--vim.keymap.set('n', '<space>wl', function()
--	print(vim.inspect(vim.lsp.buf_list_workspace_folders()))
--end, opts)
--vim.keymap.set('n', '<space>D', ht.lsp.buf_type_definition, opts)
--vim.keymap.set('n', '<space>rn', ht.lsp.buf_rename, opts)
--vim.keymap.set({ 'n', 'v' }, '<space>ca', ht.lsp.buf_code_action, opts)
--vim.keymap.set('n', 'gr', ht.lsp.buf_references, opts)
--vim.keymap.set('n', '<space>f', function()
--	ht.lsp.buf_format { async = true }
--end, opts)
