local nvim_lsp = require('lspconfig')

local on_attach = function(client)

	require'completion'.on_attach(client)

	-- autoformat only for haskell
      	if vim.api.nvim_buf_get_option(0, 'filetype') == 'haskell' then
		vim.api.nvim_command[[
		autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
      	end
end

nvim_lsp.hls.setup({
    on_attach = on_attach,
    settings = {
        haskell = {
            hlintOn = true,
            formattingProvider = "fourmolu"
        }
     }
})

