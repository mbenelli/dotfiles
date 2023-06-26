let mapleader = ","
lua require('plugins')
lua require('options')
lua require('mapping')
lua require('completion')
lua require('metals-cfg')
" lua require('haskell-cfg')
lua require('elixir-cfg')
set rtp+=~/.local/share/nvim/site/pack/packer/start/LanguageClient-neovim
let g:LanguageClient_serverCommands = { 'haskell': ['haskell-language-server-wrapper', '--lsp'] }

"augroup lsp
"  au!
"  au FileType java,scala,sbt lua require("metals").initialize_or_attach({})
"augroup end

syntax off
set nohlsearch
"set t_Co=0

set fileformats=unix,dos
set laststatus=0
let loaded_matchparen=1

