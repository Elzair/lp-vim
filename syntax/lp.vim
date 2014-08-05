" LP syntax file
" Language: Lets Play
" Maintainer: Philip Woods <elzairthesorcerer@gmail.com>

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


syntax region lpBold end="\c\[\/b\]" matchgroup=lpTag start="\c\[b\]" contains=lpText
syntax region lpItalic end="\c\[\/i\]" matchgroup=lpTag start="\c\[i\]" contains=lpText

let b:current_syntax = "lp"
