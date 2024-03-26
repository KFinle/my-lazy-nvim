" Vim syntax file
" Language: Synergy DBL
" Maintainer: Khris Finley <kfinley@long-mcquade.com>
" Last Change: 02/28/2024
"
" Current keyword assignments are placeholders until I have time to properly
" remap colours in a sensible manner. This will come once I get more familiar
" with the language as a whole
"
if exists("b:current_syntax")
    finish
endif

syn case ignore

" keywords
syn keyword     dblExternal             include repository import try catch finally endtry throw class endclass
syn keyword     dblProcs                end subroutine endsubroutine function endfunction main endmain method endmethod namespace endnamespace 
syn keyword     dblProcs                structure endstructure class endclass region endregion enum interface property endproperty case common 
syn keyword     dblProcs                del delegate event external func global endglobal group inter literal name params prop prog proc struct sub 
syn keyword     dblConditional          if else then switch while for foreach begin end goto xcall call clear close xreturn 
syn keyword     dblConditional          return begincase endcase do while until repeat public private protected static 
syn keyword     dblVars                 record endrecord params endparams common endcommon literal endliteral
syn region      dblString               start=+"+ end=+"+ end=+$+
syn region      dblString               start=+'+ end=+'+ end=+$+
syn match       dblOperator             "[=<>!]"
syn match       dblComment              ";.*$"
syn keyword     dblStatements           accept addhandler call xcall clear close data decr delete display find flush forms 
syn keyword     dblStatements           freturn get gets goto incr init interface locase lpque merge mreturn nextloop nop 
syn keyword     dblStatements           offerror onerror open purge put puts rasieevent read reads recv removehandler return 
syn keyword     dblStatements           scr_mov scr_pos scr_clr set sleep sort stop store unlock upcase write writes xcall xreturn

hi def link dblStatements               Function
hi def link dblString                   String
hi def link dblExternal                 Include
hi def link dblProcs                    PreCondit
hi def link dblConditional              Conditional
hi def link dblType                     Type
hi def link dblComment                  Comment
hi def link dblVars                     Typedef
hi def link dblOperator                 Operator

let b:current_syntax = "dbl"
