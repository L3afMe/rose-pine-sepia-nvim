" Theme: Rose Pine Sepia
" Author: L3afMe
" License: MIT
" Source: http://github.com/L3afMe/rose-pine-sepia-nvim

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "Rose Pine Sepia"
set termguicolors

if has('nvim')
    let g:terminal_color_0 = "#232136"
    let g:terminal_color_1 = "#B4637A"
    let g:terminal_color_2 = "#569F84"
    let g:terminal_color_3 = "#EA9D34"
    let g:terminal_color_4 = "#286983"
    let g:terminal_color_5 = "#907AA9"
    let g:terminal_color_6 = "#56959F"
    let g:terminal_color_7 = "#F2E9DE"
    let g:terminal_color_8 = "#575279"
    let g:terminal_color_9 = "#D7827E"
    let g:terminal_color_10 = "#9CD8C3"
    let g:terminal_color_11 = "#F6C177"
    let g:terminal_color_12 = "#CECAED"
    let g:terminal_color_13 = "#C4A7E7"
    let g:terminal_color_14 = "#9CCFD8"
    let g:terminal_color_15 = "#FAF4ED"
endif

if has('terminal')
    let g:terminal_ansi_colors = [ "#232136", "#B4637A", "#569F84", "#EA9D34", "#286983", "#907AA9", "#56959F", "#F2E9DE", "#575279", "#D7827E", "#9CD8C3", "#F6C177", "#CECAED", "#C4A7E7", "#9CCFD8", "#FAF4ED" ]
endif

hi Bold guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=BOLD cterm=BOLD
hi Boolean guifg=#D7827E guibg=NONE ctermfg=9 ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#EA9D34 guibg=NONE ctermfg=3 ctermbg=NONE gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#575279 ctermfg=NONE ctermbg=8 gui=NONE cterm=NONE
hi Comment guifg=#9893a5 guibg=NONE ctermfg=3 ctermbg=NONE gui=NONE cterm=NONE
hi Conceal guifg=#C4A7E7 guibg=#F5E9DA ctermfg=13 ctermbg=0 gui=NONE cterm=NONE
hi Conditional guifg=#56959F guibg=NONE ctermfg=6 ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#D7827E guibg=NONE ctermfg=9 ctermbg=NONE gui=NONE cterm=NONE
hi Cursor guifg=#F5E9DA guibg=#F5E9DA ctermfg=0 ctermbg=7 gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#EDD7BD ctermfg=NONE ctermbg=8 gui=NONE cterm=NONE
hi CursorLineNr guifg=#575279 guibg=#EDD7BD ctermfg=7 ctermbg=8 gui=NONE cterm=NONE
hi Debug guifg=#575279 guibg=NONE ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#9CCFD8 guibg=NONE ctermfg=14 ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#9893a5 guibg=NONE ctermfg=15 ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#9893a5 guibg=NONE ctermfg=15 ctermbg=NONE gui=NONE cterm=NONE
hi DiffChange guifg=#EA9D34 guibg=NONE ctermfg=3 ctermbg=NONE gui=NONE cterm=NONE
hi DiffDelete guifg=#D7827E guibg=NONE ctermfg=9 ctermbg=NONE gui=NONE cterm=NONE
hi Directory guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#B4637A guibg=NONE ctermfg=1 ctermbg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#B4637A guibg=NONE ctermfg=1 ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#D7827E guibg=NONE ctermfg=9 ctermbg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#575279 guibg=#EDD7BD ctermfg=7 ctermbg=8 gui=NONE cterm=NONE
hi Folded guifg=#575279 guibg=#EDD7BD ctermfg=7 ctermbg=8 gui=NONE cterm=NONE
hi Function guifg=#575279 guibg=NONE ctermfg=7 ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=NONE guibg=#EDD7BD ctermfg=NONE ctermbg=8 gui=NONE cterm=NONE
hi Include guifg=#56959F guibg=NONE ctermfg=6 ctermbg=NONE gui=NONE cterm=NONE
hi Integer guifg=#D7827E guibg=NONE ctermfg=9 ctermbg=NONE gui=NONE cterm=NONE
hi LineNr guifg=#9893a5 guibg=NONE ctermfg=15 ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#575279 guibg=NONE ctermfg=7 ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=BOLD cterm=BOLD
hi ModeMsg guifg=#F6C177 guibg=NONE ctermfg=11 ctermbg=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#F6C177 guibg=NONE ctermfg=11 ctermbg=NONE gui=NONE cterm=NONE
hi Noise guifg=#9893a5 guibg=NONE ctermfg=15 ctermbg=NONE gui=NONE cterm=NONE
hi NonText guifg=#EA9D34 guibg=NONE ctermfg=3 ctermbg=NONE gui=NONE cterm=NONE
hi Normal guifg=#575279 guibg=#F5E9DA ctermfg=7 ctermbg=0 gui=NONE cterm=NONE
hi Number guifg=#D7827E guibg=NONE ctermfg=9 ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#575279 guibg=#EDD7BD ctermfg=7 ctermbg=8 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#EDD7BD ctermfg=NONE ctermbg=7 gui=NONE cterm=NONE
hi PmenuSel guifg=#EDD7BD guibg=#907AA9 ctermfg=0 ctermbg=7 gui=BOLD cterm=BOLD
hi PmenuThumb guifg=NONE guibg=#907AA9 ctermfg=NONE ctermbg=8 gui=NONE cterm=NONE
hi PreProc guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi Question guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=NONE guibg=#B4637A ctermfg=NONE ctermbg=1 gui=NONE cterm=NONE
hi Quote guifg=#F6C177 guibg=NONE ctermfg=11 ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#9CD8C3 guibg=NONE ctermfg=10 ctermbg=NONE gui=NONE cterm=NONE
hi Search guifg=NONE guibg=#EDD7BD ctermfg=NONE ctermbg=8 gui=BOLD cterm=BOLD
hi SignColumn guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#286983 guibg=NONE ctermfg=4 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#D7827E guibg=NONE ctermfg=9 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#D7827E guibg=NONE ctermfg=9 ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#575279 guibg=#EDD7BD ctermfg=7 ctermbg=0 gui=NONE cterm=NONE
hi StatusLineNC guifg=#575279 guibg=#EDD7BD ctermfg=7 ctermbg=0 gui=NONE cterm=NONE
hi StorageClass guifg=#9CD8C3 guibg=NONE ctermfg=10 ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#EA9D34 guibg=NONE ctermfg=3 ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi Substitute guifg=NONE guibg=#F5E9DA ctermfg=NONE ctermbg=7 gui=BOLD cterm=BOLD
hi TSFunction guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordFunc guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi TSMethod guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi TSProperty guifg=#EA9D34 guibg=NONE ctermfg=3 ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctBracket guifg=#9893a5 guibg=NONE ctermfg=15 ctermbg=NONE gui=NONE cterm=NONE
hi TSType guifg=#56959F guibg=NONE ctermfg=6 ctermbg=NONE gui=NONE cterm=NONE
hi TSVariable guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#EA9D34 guibg=#B4637A ctermfg=3 ctermbg=1 gui=NONE cterm=NONE
hi TabLineFill guifg=#575279 guibg=NONE ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#575279 guibg=NONE ctermfg=8 ctermbg=NONE gui=BOLD cterm=BOLD
hi Tag guifg=#9CD8C3 guibg=NONE ctermfg=10 ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#C4A7E7 guibg=NONE ctermfg=13 ctermbg=NONE gui=NONE cterm=NONE
hi Todo guifg=#569F84 guibg=NONE ctermfg=2 ctermbg=NONE gui=NONE cterm=NONE
hi TooLong guifg=#575279 guibg=NONE ctermfg=7 ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#56959F guibg=NONE ctermfg=6 ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#9CD8C3 guibg=NONE ctermfg=10 ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#575279 guibg=NONE ctermfg=7 ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#F2E9DE guibg=NONE ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Visual guifg=NONE guibg=#EDD7BD ctermfg=NONE ctermbg=8 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#575279 ctermfg=NONE ctermbg=8 gui=NONE cterm=NONE
hi WarningMsg guifg=#EA9D34 guibg=NONE ctermfg=3 ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#575279 guibg=#9CD8C3 ctermfg=8 ctermbg=10 gui=NONE cterm=NONE
hi luaBraces guifg=#9893a5 guibg=NONE ctermfg=15 ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncCall guifg=#575279 guibg=NONE ctermfg=7 ctermbg=NONE gui=NONE cterm=NONE
hi nixNamespacedBuiltin guifg=#907AA9 guibg=NONE ctermfg=5 ctermbg=NONE gui=NONE cterm=NONE
hi nixStringDelimiter guifg=#EA9D34 guibg=NONE ctermfg=3 ctermbg=NONE gui=NONE cterm=NONE
hi termColors guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
