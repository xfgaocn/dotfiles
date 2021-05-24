" simple colorscheme
" Last Change: 2019 Apr 17

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="simple"

" black        0
" white        15
" window       254
" in window    255
" comment      245
" red          9
" green        2
" blue         12
" yellow       11
" orange       208
" aqua         14
" purple       5

" window
hi StatusLine   cterm=bold ctermfg=0   ctermbg=254
hi StatusLineNC cterm=none ctermfg=0   ctermbg=254
hi VertSplit    cterm=none ctermfg=254 ctermbg=254
hi TabLine      cterm=none             ctermbg=254
hi TabLineFill  cterm=none             ctermbg=254
" in window
hi LineNr                  ctermfg=245 ctermbg=255
hi SignColumn                          ctermbg=255
hi ColorColumn                         ctermbg=255
hi FoldColumn                          ctermbg=255

hi CursorLine cterm=none ctermbg=255
hi Folded                ctermbg=255
hi Visual                ctermbg=255
hi Pmenu                 ctermbg=255
hi PmenuSel              ctermbg=153
hi MatchParen            ctermbg=254

hi Comment      ctermfg=245
hi Constant     ctermfg=208
hi String       ctermfg=2
hi Character    ctermfg=2
hi Identifier   ctermfg=9
hi Function     ctermfg=12
hi Statement    ctermfg=5
hi Operator     ctermfg=14
hi PreProc      ctermfg=5
hi Type         ctermfg=12
hi StorageClass ctermfg=14
hi Special      ctermfg=14

" vim
hi vimOption          ctermfg=14
hi vimGroup           ctermfg=14
hi helpHyperTextEntry ctermfg=14
hi helpHyperTextJump  ctermfg=14
hi helpCommand        ctermfg=5
hi helpExample        ctermfg=12

" diff
hi DiffAdd    ctermbg=157
hi DiffDelete ctermbg=223
hi DiffChange ctermbg=153
hi DiffText   ctermbg=228

" git
hi diffAdded                         ctermfg=2
hi diffRemoved                       ctermfg=9
hi diffChanged                       ctermfg=12
hi gitcommitSelectedType             ctermfg=2
hi gitcommitSelectedFile             ctermfg=2
hi gitcommitDiscardedType            ctermfg=9
hi gitcommitDiscardedFile            ctermfg=9
hi gitcommitUntrackedFile            ctermfg=9
hi GitGutterAdd           cterm=bold ctermfg=2  ctermbg=255
hi GitGutterDelete        cterm=bold ctermfg=9  ctermbg=255
hi GitGutterChange        cterm=bold ctermfg=12 ctermbg=255

" c/c++
hi cType       ctermfg=11
hi cppType     ctermfg=11
hi cppModifier ctermfg=14

" Makefile
hi makeCommands ctermfg=5
