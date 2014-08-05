" LP syntax file
" Language: Lets Play
" Maintainer: Philip Woods <elzairthesorcerer@gmail.com>
" License:     GPL (see http://www.gnu.org/licenses/gpl.txt)

" Based on BBCode Syntax code from here: http://www.vim.org/scripts/script.php?script_id=2070

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif
if version < 508
    command! -nargs=+ HiLink hi link <args>
else
    command! -nargs=+ HiLink hi def link <args>
endif

syn case ignore

syn region lpTag matchgroup=Delimiter start=/\[\z(.\{-}\)\(=.\{-}\)\?\]/ end=/\[\/\z1\]/
syn region lpBold matchgroup=Delimiter start=/\[b\]/ end=/\[\/b\]/
syn region lpItalic matchgroup=Delimiter start=/\[i\]/ end=/\[\/i\]/
syn region lpUnderline matchgroup=Delimiter start=/\[u\]/ end=/\[\/u\]/
syn region lpStrikethrough matchgroup=Delimiter start=/\[s\]/ end=/\[\/s\]/
syn region lpUrl matchgroup=Delimiter start=/\[url\(=.\{-}\)\?\]/ end=/\[\/url\]/
syn region lpQuote matchgroup=Delimiter start=/\[quote\(=.\{-}\)\?\]/ end=/\[\/quote\]/
syn region lpCode matchgroup=Delimiter start=/\[code\(=.\{-}\)\?\]/ end=/\[\/code\]/
syn region lpList matchgroup=Delimiter start=/\[list\(=.\{-}\)\?\]/ end=/\[\/list\]/
            \ transparent
syn match lpItem /\[\*\]/

HiLink lpTag Statement
HiLink lpUrl underlined
HiLink lpQuote Comment
HiLink lpCode PreProc
HiLink lpStrikethrough Ignore
HiLink lpDelimiter Delimiter
HiLink lpItem Delimiter
" HiLink lpTex Identifier

hi lpBold term=bold,underline cterm=bold,underline gui=bold
hi lpItalic term=italic cterm=italic gui=italic
hi lpUnderline term=underline cterm=underline gui=underline

delcommand HiLink
let b:current_syntax = 'lp'
