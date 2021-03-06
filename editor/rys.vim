" Vim syntax file
" Language:     Rys
" Maintainer:   Ari Archer <ari.web.xyz@gmail.com>
" Last Change:  2022 Apr 1

" Usage Instructions
" Put this file in ~/.vim/syntax/rys.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.rys set filetype=rys

scriptencoding utf-8

if exists("b:current_syntax")
    finish
endif


" TODOs
syntax keyword rysTodo TODO XXX FIXME NOTE


" Language keywords
syntax keyword rysKeyword drop assembly charz stacksz cpy nop clear sassert


" Language Instructions
syntax keyword rysInstruction exit writefd sleep


" Escapes
syntax match rysEscape +\\[abfnrtv'"\\]+ contained
syntax match rysEscape "\\\o\{1,3}" contained
syntax match rysEscape "\\x\x\{2}" contained
syntax match rysEscape "\%(\\u\x\{4}\|\\U\x\{8}\)" contained
syntax match rysEscape "\\N{\a\+\%(\s\a\+\)*}" contained
syntax match rysEscape "\\$"


" Numbers
syntax match rysNumber "\<\d*\>"


" Comments
syntax region rysCommentLine start="--" end="$" contains=rysTodo


" Strings
syntax region rysString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=rysEscape


" Operators
syntax keyword rysOperator + - * / % **


" Semi-keywords
syntax keyword rysSemikw include


" Set highlights
highlight default link rysTodo Todo
highlight default link rysKeyword Keyword
highlight default link rysInstruction Function
highlight default link rysCommentLine Comment
highlight default link rysString String
highlight default link rysEscape Special
highlight default link rysNumber Number
highlight default link rysOperator Operator
highlight default link rysSemikw Define


" Set syntax
let b:current_syntax = "rys"

