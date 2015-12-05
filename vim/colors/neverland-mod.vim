" Vim color file - neverland.vim
" Eyes are sober, this is the plan
" I'm sitting in a car heading Neverland
" Author: Magnus Woldrich <trapd00r@trapd00r.se>

if !exists("g:neverland_bold")
    let g:neverland_bold = 1
endif

if !exists("g:neverland_show_NonText")
    let g:neverland_show_NonText = 1
endif

if !exists("g:neverland_show_SpecialKey")
    let g:neverland_show_SpecialKey = 1
endif

" Set background first
set background=dark
hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="neverland-mod"

" Setting normal before any other highlight group is a good idea
hi Normal          guifg=#ffd7ff guibg=#121212

" background might have changed to 'light', so fix it
set background=dark

hi Boolean         guifg=#af5fff
hi Character       guifg=#afaf5f
hi Number          guifg=#0087ff
hi String          guifg=#d7af5f
hi Conditional     guifg=#ff0000               gui=bold
hi Constant        guifg=#87af00               gui=bold
hi Cursor          guifg=#afd787 guibg=#dadada
hi Debug           guifg=#ffd7ff               gui=bold
hi Define          guifg=#5fd7ff
hi Delimiter       guifg=#626262

hi DiffAdd                       guibg=#005f87
hi DiffChange      guifg=#d7afaf guibg=#4e4e4e
hi DiffDelete      guifg=#d70087 guibg=#5f005f
hi DiffText                      guibg=#878787 gui=bold

hi Directory       guifg=#87ff00               gui=bold
hi Error           guifg=#ffafff guibg=#87005f
hi ErrorMsg        guifg=#ff00af guibg=#000000 gui=bold
hi Exception       guifg=#87ff00               gui=bold
hi Float           guifg=#af5fff
hi FoldColumn      guifg=#5f87af guibg=#121212 gui=none
hi Folded          guifg=#585858 guibg=#262626 gui=bold
hi Function        guifg=#87ff00
hi Identifier      guifg=#afd75f
hi Ignore          guifg=#808080 guibg=#080808
hi IncSearch       guifg=#d7ffaf guibg=#000000

hi Keyword         guifg=#87afff               gui=bold
hi Label           guifg=#ffffaf               gui=none
hi Macro           guifg=#d7ffaf

hi MatchParen      guifg=#ff0000 guibg=#1c1c1c gui=bold
hi ModeMsg         guifg=#ffaf5f
hi MoreMsg         guifg=#ffaf5f
hi Operator        guifg=#afd700

" complete menu
hi Pmenu           guifg=#af875f guibg=#000000 gui=none
hi PmenuSel        guifg=#ff0000 guibg=#262626 gui=bold
hi PmenuSbar       guifg=#000000 guibg=#121212 gui=none
hi PmenuThumb      guifg=#af875f guibg=#000000 gui=none

hi PreCondit       guifg=#87ff00               gui=bold
hi PreProc         guifg=#ffafd7
hi Question        guifg=#5fd7ff
hi Repeat          guifg=#d7005f               gui=bold
hi Search          guifg=#1c1c1c guibg=#ffd787

" marks column
hi SignColumn      guifg=#87ff00 guibg=#262626
hi SpecialChar     guifg=#d7005f               gui=bold
hi SpecialComment  guifg=#8a8a8a               gui=bold
hi Special         guifg=#5fd7ff guibg=#080808
if g:neverland_show_SpecialKey == 1
    hi SpecialKey      guifg=#8a8a8a guibg=#121212
else
    hi SpecialKey      guifg=#8a8a8a
endif

hi SpellBad        guifg=#ff0000 guibg=#121212 gui=bold
hi SpellCap        guifg=#875f00 guibg=#121212 gui=bold
hi SpellRare       guifg=#875f87 guibg=#121212 gui=bold
hi SpellLocal      guifg=#af0000 guibg=#121212 gui=bold

hi Statement       guifg=#d78700               gui=bold
hi StatusLine      guifg=#1c1c1c guibg=#af8700
hi StatusLineNC    guifg=#1c1c1c guibg=#878700
hi StorageClass    guifg=#ff8700
hi Structure       guifg=#5fd7ff
hi Tag             guifg=#d7005f
hi Title           guifg=#5faf5f
hi Todo            guifg=#d70000 guibg=#121212 gui=bold

hi Typedef         guifg=#5fd7ff
hi Type            guifg=#d75f00               gui=none
hi Underlined      guifg=#87af00               gui=none

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#444444
hi Visual                        guibg=#262626
hi WarningMsg      guifg=#0000ff guibg=#444444 gui=bold
hi WildMenu        guifg=#5fd7ff guibg=#000000

hi Comment         guifg=#af875f
hi ColorColumn                   guibg=#262626
hi CursorLine                    guibg=#1c1c1c gui=none
hi CursorColumn                  guibg=#121212
hi LineNr          guifg=#626262 guibg=#121212
if g:neverland_show_NonText == 1
    hi NonText         guifg=#626262 guibg=#121212
else
    hi NonText         guifg=#121212 guibg=#121212
endif

hi TabLine         guifg=#878700 guibg=#121212
hi TabLineFill     guifg=#121212 guibg=#121212
hi TabLineSel      guifg=#ffd700 guibg=#1c1c1c

if g:neverland_bold == 0
    hi Conditional     gui=none
    hi Constant        gui=none
    hi Debug           gui=none
    hi DiffText        gui=none

    hi Directory       gui=none
    hi ErrorMsg        gui=none
    hi Exception       gui=none
    hi Folded          gui=none

    hi Keyword         gui=none

    hi MatchParen      gui=none

    " complete menu
    hi PmenuSel        gui=none

    hi PreCondit       gui=none
    hi Repeat          gui=none

    " marks column
    hi SpecialChar     gui=none
    hi SpecialComment  gui=none

    hi SpellBad        gui=none
    hi SpellCap        gui=none
    hi SpellRare       gui=none
    hi SpellLocal      gui=none

    hi Statement       gui=none
    hi StatusLine      gui=inverse
    hi StatusLineNC    gui=inverse
    hi Todo            gui=none

    hi VertSplit       gui=none
    hi WarningMsg      gui=none
endif

if &t_Co > 255
    " Setting normal before any other highlight group is a good idea
    hi Normal          ctermfg=225 ctermbg=233

    " background might have changed to 'light', so fix it
    set background=dark

    hi Boolean         ctermfg=135
    hi Character       ctermfg=143
    hi Number          ctermfg=33
    hi String          ctermfg=179
    hi Conditional     ctermfg=196               cterm=bold
    hi Constant        ctermfg=106               cterm=bold
    hi Cursor          ctermfg=150 ctermbg=253
    hi Debug           ctermfg=225               cterm=bold
    hi Define          ctermfg=81
    hi Delimiter       ctermfg=241

    hi DiffAdd                     ctermbg=24
    hi DiffChange      ctermfg=181 ctermbg=239
    hi DiffDelete      ctermfg=162 ctermbg=53
    hi DiffText                    ctermbg=102   cterm=bold

    hi Directory       ctermfg=118               cterm=bold
    hi Error           ctermfg=219 ctermbg=89
    hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
    hi Exception       ctermfg=118               cterm=bold
    hi Float           ctermfg=135
    hi FoldColumn      ctermfg=67   ctermbg=233 cterm=none
    hi Folded          ctermfg=240  ctermbg=235 cterm=bold
    hi Function        ctermfg=118
    hi Identifier      ctermfg=149
    hi Ignore          ctermfg=244 ctermbg=232
    hi IncSearch       ctermfg=193 ctermbg=16

    hi Keyword         ctermfg=111               cterm=bold
    hi Label           ctermfg=229               cterm=none
    hi Macro           ctermfg=193

    hi MatchParen      ctermfg=196 ctermbg=234   cterm=bold
    hi ModeMsg         ctermfg=215
    hi MoreMsg         ctermfg=215
    hi Operator        ctermfg=148

    " complete menu
    hi Pmenu           ctermfg=137 ctermbg=233 cterm=none
    hi PmenuSel        ctermfg=196 ctermbg=234 cterm=bold
    hi PmenuSbar       ctermfg=000 ctermbg=233 cterm=none
    hi PmenuThumb      ctermfg=137 ctermbg=235 cterm=none

    hi PreCondit       ctermfg=118               cterm=bold
    hi PreProc         ctermfg=218
    hi Question        ctermfg=81
    hi Repeat          ctermfg=161               cterm=bold
    hi Search          ctermfg=234 ctermbg=222

    " marks column
    hi SignColumn      ctermfg=118 ctermbg=235
    hi SpecialChar     ctermfg=161               cterm=bold
    hi SpecialComment  ctermfg=245               cterm=bold
    hi Special         ctermfg=81  ctermbg=232
    if g:neverland_show_SpecialKey == 1
        hi SpecialKey      ctermfg=245 ctermbg=233
    else
        hi SpecialKey      ctermfg=245
    endif

    hi SpellBad        ctermfg=196 ctermbg=233 cterm=bold
    hi SpellCap        ctermfg=094 ctermbg=233 cterm=bold
    hi SpellRare       ctermfg=096 ctermbg=233 cterm=bold
    hi SpellLocal      ctermfg=124 ctermbg=233 cterm=bold

    hi Statement       ctermfg=172               cterm=bold
    hi StatusLine      ctermfg=234 ctermbg=136
    hi StatusLineNC    ctermfg=234 ctermbg=100
    hi StorageClass    ctermfg=208
    hi Structure       ctermfg=81
    hi Tag             ctermfg=161
    hi Title           ctermfg=71
    hi Todo            ctermfg=160 ctermbg=233   cterm=bold

    hi Typedef         ctermfg=81
    hi Type            ctermfg=166               cterm=none
    hi Underlined      ctermfg=106               cterm=none

    hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
    hi VisualNOS                   ctermbg=238
    hi Visual                      ctermbg=235
    hi WarningMsg      ctermfg=21  ctermbg=238   cterm=bold
    hi WildMenu        ctermfg=81  ctermbg=16

    hi Comment         ctermfg=137
    hi ColorColumn                 ctermbg=235
    hi CursorLine                  ctermbg=234   cterm=none
    hi CursorColumn                ctermbg=233
    hi LineNr          ctermfg=241 ctermbg=233
    if g:neverland_show_NonText == 1
        hi NonText         ctermfg=241 ctermbg=233
    else
        hi NonText         ctermfg=233 ctermbg=233
    endif

    hi TabLine         ctermfg=100 ctermbg=233
    hi TabLineFill     ctermfg=233 ctermbg=233
    hi TabLineSel      ctermfg=220 ctermbg=234

    if g:neverland_bold == 0
        hi Conditional     cterm=none
        hi Constant        cterm=none
        hi Debug           cterm=none

        hi DiffText        cterm=none

        hi Directory       cterm=none
        hi ErrorMsg        cterm=none
        hi Exception       cterm=none
        hi Folded          cterm=none

        hi Keyword         cterm=none

        hi MatchParen      cterm=none

        " complete menu
        hi PmenuSel        cterm=none

        hi PreCondit       cterm=none
        hi Repeat          cterm=none

        " marks column
        hi SpecialChar     cterm=none
        hi SpecialComment  cterm=none

        hi SpellBad        cterm=none
        hi SpellCap        cterm=none
        hi SpellRare       cterm=none
        hi SpellLocal      cterm=none

        hi Statement       cterm=none
        hi StatusLine      cterm=inverse
        hi StatusLineNC    cterm=inverse
        hi Todo            cterm=none

        hi VertSplit       cterm=none
        hi WarningMsg      cterm=none
    endif
end
