" ==================================================
"             This is a generated file
"     to regenerate theme run `node ./make.js`
" ==================================================

let g:lake_palette={"00":{"gui":"#2b303b","cterm":"00","name":"Gray"},"01":{"gui":"#343d46","cterm":"01","name":"Gray"},"02":{"gui":"#4f5b66","cterm":"02","name":"DarkGray"},"03":{"gui":"#65737e","cterm":"03","name":"DarkGray"},"04":{"gui":"#a7adba","cterm":"04","name":"LightGray"},"05":{"gui":"#c0c5ce","cterm":"05","name":"LightGray"},"06":{"gui":"#dfe1e8","cterm":"06","name":"White"},"07":{"gui":"#eff1f5","cterm":"07","name":"White"},"08":{"gui":"#bf616a","cterm":"08","name":"Red"},"09":{"gui":"#d08770","cterm":"09","name":"Orange"},"0A":{"gui":"#ebcb8b","cterm":"0A","name":"Yellow"},"0B":{"gui":"#a3be8c","cterm":"0B","name":"LightGreen"},"0C":{"gui":"#96b5b4","cterm":"0C","name":"LightBlue"},"0D":{"gui":"#8fa1b3","cterm":"0D","name":"Blue"},"0E":{"gui":"#b48ead","cterm":"0E","name":"Violet"},"0F":{"gui":"#ab7967","cterm":"0F","name":"Orange"}}
hi clear
syntax reset
let g:colors_name = "lake"

let s:cterm00="00"
let g:lake_cterm00="00"
let s:cterm03="08"
let g:lake_cterm03="08"
let s:cterm05="07"
let g:lake_cterm05="07"
let s:cterm07="15"
let g:lake_cterm07="15"
let s:cterm08="01"
let g:lake_cterm08="01"
let s:cterm0A="03"
let g:lake_cterm0A="03"
let s:cterm0B="02"
let g:lake_cterm0B="02"
let s:cterm0C="06"
let g:lake_cterm0C="06"
let s:cterm0D="04"
let g:lake_cterm0D="04"
let s:cterm0E="05"
let g:lake_cterm0E="05"
if has("nvim")
  let g:terminal_color_0="#2b303b"
  let g:terminal_color_1="#bf616a"
  let g:terminal_color_2="#a3be8c"
  let g:terminal_color_3="#ebcb8b"
  let g:terminal_color_4="#8fa1b3"
  let g:terminal_color_5="#b48ead"
  let g:terminal_color_6="#96b5b4"
  let g:terminal_color_7="#c0c5ce"
  let g:terminal_color_8="#65737e"
  let g:terminal_color_9="#bf616a"
  let g:terminal_color_10="#a3be8c"
  let g:terminal_color_11="#ebcb8b"
  let g:terminal_color_12="#8fa1b3"
  let g:terminal_color_13="#b48ead"
  let g:terminal_color_14="#96b5b4"
  let g:terminal_color_15="#eff1f5"
  let g:terminal_color_background=g:terminal_color_0
  let g:terminal_color_foreground=g:terminal_color_5
  if &background == "light"
    let g:terminal_color_background=g:terminal_color_7
    let g:terminal_color_foreground=g:terminal_color_2
  endif
else
  let g:terminal_ansi_colors=["#2b303b","#bf616a","#a3be8c","#ebcb8b","#8fa1b3","#b48ead","#96b5b4","#c0c5ce","#65737e","#bf616a","#a3be8c","#ebcb8b","#8fa1b3","#b48ead","#96b5b4","#eff1f5"]
endif

hi Normal guifg=#c0c5ce guibg=#2b303b ctermfg=05 ctermbg=00
hi Bold gui=bold cterm=bold
hi Debug guifg=#bf616a ctermfg=08
hi Directory guifg=#8fa1b3 ctermfg=0D
hi Error guifg=#2b303b guibg=#bf616a ctermfg=00 ctermbg=08
hi ErrorMsg guifg=#bf616a guibg=#2b303b ctermfg=08 ctermbg=00
hi Exception guifg=#bf616a ctermfg=08
hi FoldColumn guifg=#96b5b4 guibg=#343d46 ctermfg=0C ctermbg=01
hi Folded guifg=#65737e guibg=#343d46 ctermfg=03 ctermbg=01
hi IncSearch guifg=#343d46 guibg=#d08770 ctermfg=01 ctermbg=09 gui=none cterm=none
hi Italic gui=none cterm=none
hi Macro guifg=#c0c5ce ctermfg=05
hi MatchParen guibg=#65737e ctermbg=03
hi ModeMsg guifg=#a3be8c ctermfg=0B
hi MoreMsg guifg=#a3be8c ctermfg=0B
hi Question guifg=#8fa1b3 ctermfg=0D
hi Search guifg=#343d46 guibg=#ebcb8b ctermfg=01 ctermbg=0A
hi Substitute guifg=#343d46 guibg=#ebcb8b ctermfg=01 ctermbg=0A gui=none cterm=none
hi SpecialKey guifg=#65737e ctermfg=03
hi TooLong guifg=#bf616a ctermfg=08
hi Underlined guifg=#bf616a ctermfg=08
hi Visual guibg=#4f5b66 ctermbg=02
hi VisualNOS guifg=#bf616a ctermfg=08
hi WarningMsg guifg=#bf616a ctermfg=08
hi WildMenu guifg=#bf616a guibg=#ebcb8b ctermfg=08
hi WinSeparator guifg=#4f5b66 guibg=none ctermfg=02
hi Title guifg=#8fa1b3 ctermfg=0D gui=none cterm=none
hi Conceal guifg=#8fa1b3 guibg=#2b303b ctermfg=0D ctermbg=00
hi Cursor guifg=#2b303b guibg=#c0c5ce ctermfg=00 ctermbg=05
hi NonText guifg=#65737e ctermfg=03
hi LineNr guifg=#65737e guibg=#343d46 ctermfg=03 ctermbg=01
hi SignColumn guifg=#65737e guibg=#343d46 ctermfg=03 ctermbg=01
hi StatusLine guifg=#a7adba guibg=#4f5b66 ctermfg=04 ctermbg=02 gui=none cterm=none
hi StatusLineNC guifg=#65737e guibg=#343d46 ctermfg=03 ctermbg=01 gui=none cterm=none
hi VertSplit guifg=#4f5b66 guibg=#4f5b66 ctermfg=02 ctermbg=02 gui=none cterm=none
hi ColorColumn guibg=#343d46 ctermbg=01 gui=none cterm=none
hi CursorColumn guibg=#343d46 ctermbg=01 gui=none cterm=none
hi CursorLine guibg=#343d46 ctermbg=01 gui=none cterm=none
hi CursorLineNr guifg=#a7adba guibg=#343d46 ctermfg=04 ctermbg=01
hi QuickFixLine guibg=#343d46 ctermbg=01 gui=none cterm=none
hi PMenu guifg=#c0c5ce guibg=#343d46 ctermfg=05 ctermbg=01 gui=none cterm=none
hi PMenuSel guifg=#343d46 guibg=#c0c5ce ctermfg=01 ctermbg=05
hi TabLine guifg=#65737e guibg=#343d46 ctermfg=03 ctermbg=01 gui=none cterm=none
hi TabLineFill guifg=#65737e guibg=#343d46 ctermfg=03 ctermbg=01 gui=none cterm=none
hi TabLineSel guifg=#a3be8c guibg=#343d46 ctermfg=0B ctermbg=01 gui=none cterm=none
hi Boolean guifg=#d08770 ctermfg=09
hi Character guifg=#bf616a ctermfg=08
hi Comment guifg=#65737e ctermfg=03
hi Conditional guifg=#b48ead ctermfg=0E
hi Constant guifg=#c0c5ce ctermfg=05
hi Define guifg=#b48ead ctermfg=0E gui=none cterm=none
hi Delimiter guifg=#ab7967 ctermfg=0F
hi Float guifg=#d08770 ctermfg=09
hi Function guifg=#8fa1b3 ctermfg=0D
hi Identifier guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi Include guifg=#8fa1b3 ctermfg=0D
hi Keyword guifg=#c0c5ce ctermfg=05
hi Label guifg=#ebcb8b ctermfg=0A
hi Number guifg=#d08770 ctermfg=09
hi Operator guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi PreProc guifg=#ebcb8b ctermfg=0A
hi Repeat guifg=#ebcb8b ctermfg=0A
hi Special guifg=#ebcb8b ctermfg=0A
hi SpecialChar guifg=#ab7967 ctermfg=0F
hi Statement guifg=#bf616a ctermfg=08
hi StorageClass guifg=#ebcb8b ctermfg=0A
hi String guifg=#a3be8c ctermfg=0B
hi Structure guifg=#b48ead ctermfg=0E
hi Tag guifg=#ebcb8b ctermfg=0A
hi Todo guifg=#ebcb8b guibg=#343d46 ctermfg=0A ctermbg=01
hi Type guifg=#ebcb8b ctermfg=0A gui=none cterm=none
hi Typedef guifg=#ebcb8b ctermfg=0A
hi cOperator guifg=#96b5b4 ctermfg=0C
hi cPreCondit guifg=#b48ead ctermfg=0E
hi csClass guifg=#ebcb8b ctermfg=0A
hi csAttribute guifg=#ebcb8b ctermfg=0A
hi csModifier guifg=#b48ead ctermfg=0E
hi csType guifg=#bf616a ctermfg=08
hi csUnspecifiedStatement guifg=#8fa1b3 ctermfg=0D
hi csContextualStatement guifg=#b48ead ctermfg=0E
hi csNewDecleration guifg=#bf616a ctermfg=08
hi cssBraces guifg=#c0c5ce ctermfg=05
hi cssClassName guifg=#b48ead ctermfg=0E
hi cssColor guifg=#96b5b4 ctermfg=0C
hi DiffAdd guifg=#a3be8c guibg=#343d46 ctermfg=0B ctermbg=01
hi DiffChange guifg=#65737e guibg=#343d46 ctermfg=03 ctermbg=01
hi DiffDelete guifg=#bf616a guibg=#343d46 ctermfg=08 ctermbg=01
hi DiffText guifg=#8fa1b3 guibg=#343d46 ctermfg=0D ctermbg=01
hi DiffAdded guifg=#a3be8c guibg=#2b303b ctermfg=0B ctermbg=00
hi DiffFile guifg=#bf616a guibg=#2b303b ctermfg=08 ctermbg=00
hi DiffNewFile guifg=#a3be8c guibg=#2b303b ctermfg=0B ctermbg=00
hi DiffLine guifg=#8fa1b3 guibg=#2b303b ctermfg=0D ctermbg=00
hi DiffRemoved guifg=#bf616a guibg=#2b303b ctermfg=08 ctermbg=00
hi dockerfileKeyword guifg=#b48ead ctermfg=0E
hi gitcommitOverflow guifg=#bf616a ctermfg=08
hi gitcommitSummary guifg=#a3be8c ctermfg=0B
hi gitcommitComment guifg=#65737e ctermfg=03
hi gitcommitUntracked guifg=#65737e ctermfg=03
hi gitcommitDiscarded guifg=#65737e ctermfg=03
hi gitcommitSelected guifg=#65737e ctermfg=03
hi gitcommitHeader guifg=#b48ead ctermfg=0E
hi gitcommitSelectedType guifg=#8fa1b3 ctermfg=0D
hi gitcommitUnmergedType guifg=#8fa1b3 ctermfg=0D
hi gitcommitDiscardedType guifg=#8fa1b3 ctermfg=0D
hi gitcommitBranch guifg=#d08770 ctermfg=09 gui=bold cterm=bold
hi gitcommitUntrackedFile guifg=#ebcb8b ctermfg=0A
hi gitcommitUnmergedFile guifg=#bf616a ctermfg=08 gui=bold cterm=bold
hi gitcommitDiscardedFile guifg=#bf616a ctermfg=08 gui=bold cterm=bold
hi gitcommitSelectedFile guifg=#a3be8c ctermfg=0B gui=bold cterm=bold
hi GitGutterAdd guifg=#a3be8c guibg=#343d46 ctermfg=0B ctermbg=01
hi GitGutterChange guifg=#8fa1b3 guibg=#343d46 ctermfg=0D ctermbg=01
hi GitGutterDelete guifg=#bf616a guibg=#343d46 ctermfg=08 ctermbg=01
hi GitGutterChangeDelete guifg=#b48ead guibg=#343d46 ctermfg=0E ctermbg=01
hi htmlBold guifg=#ebcb8b ctermfg=0A
hi htmlItalic guifg=#b48ead ctermfg=0E
hi htmlEndTag guifg=#c0c5ce ctermfg=05
hi htmlTag guifg=#c0c5ce ctermfg=05
hi javaScript guifg=#c0c5ce ctermfg=05
hi javaScriptBraces guifg=#c0c5ce ctermfg=05
hi javaScriptNumber guifg=#d08770 ctermfg=09
hi jsOperator guifg=#8fa1b3 ctermfg=0D
hi jsStatement guifg=#b48ead ctermfg=0E
hi jsReturn guifg=#bf616a ctermfg=08
hi jsThis guifg=#bf616a ctermfg=08
hi jsClassDefinition guifg=#ebcb8b ctermfg=0A
hi jsFunction guifg=#b48ead ctermfg=0E
hi jsFuncName guifg=#8fa1b3 ctermfg=0D
hi jsFuncCall guifg=#8fa1b3 ctermfg=0D
hi jsClassFuncName guifg=#8fa1b3 ctermfg=0D
hi jsClassMethodType guifg=#b48ead ctermfg=0E
hi jsRegexpString guifg=#96b5b4 ctermfg=0C
hi jsGlobalObjects guifg=#ebcb8b ctermfg=0A
hi jsGlobalNodeObjects guifg=#ebcb8b ctermfg=0A
hi jsExceptions guifg=#ebcb8b ctermfg=0A
hi jsBuiltins guifg=#ebcb8b ctermfg=0A
hi typescriptAliasKeyword guifg=#b48ead ctermfg=0E
hi typescriptEndColons guifg=#c0c5ce ctermfg=05
hi typescriptStorageClass guifg=#ebcb8b ctermfg=0A
hi mailQuoted1 guifg=#ebcb8b ctermfg=0A
hi mailQuoted2 guifg=#a3be8c ctermfg=0B
hi mailQuoted3 guifg=#b48ead ctermfg=0E
hi mailQuoted4 guifg=#96b5b4 ctermfg=0C
hi mailQuoted5 guifg=#8fa1b3 ctermfg=0D
hi mailQuoted6 guifg=#ebcb8b ctermfg=0A
hi mailURL guifg=#8fa1b3 ctermfg=0D
hi mailEmail guifg=#8fa1b3 ctermfg=0D
hi markdownCode guifg=#a3be8c ctermfg=0B
hi markdownError guifg=#c0c5ce guibg=#2b303b ctermfg=05 ctermbg=00
hi markdownCodeBlock guifg=#a3be8c ctermfg=0B
hi markdownHeadingDelimiter guifg=#8fa1b3 ctermfg=0D
hi NERDTreeDirSlash guifg=#8fa1b3 ctermfg=0D
hi NERDTreeExecFile guifg=#c0c5ce ctermfg=05
hi phpMemberSelector guifg=#c0c5ce ctermfg=05
hi phpComparison guifg=#c0c5ce ctermfg=05
hi phpParent guifg=#c0c5ce ctermfg=05
hi phpMethodsVar guifg=#96b5b4 ctermfg=0C
hi pythonOperator guifg=#b48ead ctermfg=0E
hi pythonRepeat guifg=#b48ead ctermfg=0E
hi pythonInclude guifg=#b48ead ctermfg=0E
hi pythonStatement guifg=#b48ead ctermfg=0E
hi rubyAttribute guifg=#8fa1b3 ctermfg=0D
hi rubyConstant guifg=#ebcb8b ctermfg=0A
hi rubyInterpolationDelimiter guifg=#ab7967 ctermfg=0F
hi rubyRegexp guifg=#96b5b4 ctermfg=0C
hi rubySymbol guifg=#a3be8c ctermfg=0B
hi rubyStringDelimiter guifg=#a3be8c ctermfg=0B
hi sassidChar guifg=#bf616a ctermfg=08
hi sassClassChar guifg=#d08770 ctermfg=09
hi sassInclude guifg=#b48ead ctermfg=0E
hi sassMixing guifg=#b48ead ctermfg=0E
hi sassMixinName guifg=#8fa1b3 ctermfg=0D
hi SignifySignAdd guifg=#a3be8c guibg=#343d46 ctermfg=0B ctermbg=01
hi SignifySignChange guifg=#8fa1b3 guibg=#343d46 ctermfg=0D ctermbg=01
hi SignifySignDelete guifg=#bf616a guibg=#343d46 ctermfg=08 ctermbg=01
hi SpellBad gui=undercurl cterm=undercurl guisp=#bf616a
hi SpellLocal gui=undercurl cterm=undercurl guisp=#96b5b4
hi SpellCap gui=undercurl cterm=undercurl guisp=#8fa1b3
hi SpellRare gui=undercurl cterm=undercurl guisp=#b48ead
hi StartifyBracket guifg=#65737e ctermfg=03
hi StartifyFile guifg=#eff1f5 ctermfg=07
hi StartifyFooter guifg=#65737e ctermfg=03
hi StartifyHeader guifg=#a3be8c ctermfg=0B
hi StartifyNumber guifg=#d08770 ctermfg=09
hi StartifyPath guifg=#65737e ctermfg=03
hi StartifySection guifg=#b48ead ctermfg=0E
hi StartifySelect guifg=#96b5b4 ctermfg=0C
hi StartifySlash guifg=#65737e ctermfg=03
hi StartifySpecial guifg=#65737e ctermfg=03
hi javaOperator guifg=#8fa1b3 ctermfg=0D
hi TSFunction guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSConstant guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSConstructor guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSConditional guifg=#b48ead ctermfg=0E gui=none cterm=none
hi TSNumber guifg=#d08770 ctermfg=09
hi TSOperator guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSParameter guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSParameterReference guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSProperty guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSField guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSPunctDelimiter guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSPunctBracket guifg=#8fa1b3 ctermfg=0D gui=none cterm=none
hi TSPunctSpecial guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSRepeat guifg=#ebcb8b ctermfg=0A gui=none cterm=none
hi TSString guifg=#a3be8c ctermfg=0B gui=none cterm=none
hi TSType guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSTypeBuiltin guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSVariable guifg=#c0c5ce ctermfg=05 gui=none cterm=none
hi TSVariableBuiltin guifg=#ebcb8b ctermfg=0A gui=none cterm=none
hi TSFloat guifg=#d08770 ctermfg=09
hi TSKeyword guifg=#ebcb8b ctermfg=0A
hi TSKeywordOperator guifg=#ab7967 ctermfg=0F
hi TSKeywordFunction guifg=#b48ead ctermfg=0E
hi TSKeywordReturn guifg=#bf616a ctermfg=08 gui=bold cterm=bold
hi TSMethod guifg=#c0c5ce ctermfg=05
hi TSNamespace guifg=#c0c5ce ctermfg=05
hi TSException guifg=#96b5b4 ctermfg=0C
hi TSInclude guifg=#b48ead ctermfg=0E
hi TSTag guifg=#8fa1b3 ctermfg=0D
hi TSTagCustom guifg=#8fa1b3 ctermfg=0D
hi TSTagDelimiter guifg=#8fa1b3 ctermfg=0D
hi TSTagAttribute guifg=#ebcb8b ctermfg=0A
hi TSStatement guifg=#ebcb8b ctermfg=0A
hi TSError guifg=#bf616a ctermfg=08