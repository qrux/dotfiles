set modelines=5
set background=dark
syntax on

" Links which led me to the Markdown fix:
"   https://github.com/tpope/vim-markdown/issues/29
"   https://github.com/tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md         set filetype=markdown
autocmd BufNewFile,BufReadPost httpd-*.conf set filetype=apache

" Possibly also useful (later):
"   http://stackoverflow.com/questions/10964681/enabling-markdown-highlighting-in-vim

" Using newer crypto:
"set cryptmethod=blowfish2

" No undo files:
"set noundofile
