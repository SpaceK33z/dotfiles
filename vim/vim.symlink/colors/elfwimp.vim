" elfwimp Vim color file
" Based on the elflord scheme by Ron Aaron <ron@ronware.org>, 2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elfwimp"
hi Normal			ctermfg=White
hi Comment	term=bold	ctermfg=DarkCyan
hi Constant	term=underline	ctermfg=Magenta
hi Special	term=bold	ctermfg=DarkMagenta
hi Identifier	term=underline	ctermfg=Cyan
hi Statement	term=bold	ctermfg=Yellow
hi PreProc	term=underline	ctermfg=LightBlue
hi Type		term=underline	ctermfg=LightGreen
hi Function	term=bold	ctermfg=White
hi Repeat	term=underline	ctermfg=DarkYellow
hi Operator			ctermfg=Red
hi Ignore			ctermfg=black
hi Error	term=reverse	ctermbg=Red ctermfg=White 
hi Todo		term=standout	ctermbg=Yellow ctermfg=Black

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String		Constant
hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment	Special
hi link Debug		Special
