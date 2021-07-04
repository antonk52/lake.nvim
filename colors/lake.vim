" vi: foldmethod=marker foldlevelstart=1
" syntax=vim

" GUI color definitions {{{
let s:palette = {
    \ "00": {"gui": "#2b303b", "cterm": "00", "name": "Gray"      },
    \ "01": {"gui": "#343d46", "cterm": "01", "name": "Gray"      },
    \ "02": {"gui": "#4f5b66", "cterm": "02", "name": "DarkGray"  },
    \ "03": {"gui": "#65737e", "cterm": "03", "name": "DarkGray"  },
    \ "04": {"gui": "#a7adba", "cterm": "04", "name": "LightGray" },
    \ "05": {"gui": "#c0c5ce", "cterm": "05", "name": "LightGray" },
    \ "06": {"gui": "#dfe1e8", "cterm": "06", "name": "White"     },
    \ "07": {"gui": "#eff1f5", "cterm": "07", "name": "White"     },
    \ "08": {"gui": "#bf616a", "cterm": "08", "name": "Red"       },
    \ "09": {"gui": "#d08770", "cterm": "09", "name": "Orange"    },
    \ "0A": {"gui": "#ebcb8b", "cterm": "0A", "name": "Yellow"    },
    \ "0B": {"gui": "#a3be8c", "cterm": "0B", "name": "LightGreen"},
    \ "0C": {"gui": "#96b5b4", "cterm": "0C", "name": "LightBlue" },
    \ "0D": {"gui": "#8fa1b3", "cterm": "0D", "name": "Blue"      },
    \ "0E": {"gui": "#b48ead", "cterm": "0E", "name": "Violet"    },
    \ "0F": {"gui": "#ab7967", "cterm": "0F", "name": "Orange"    }
\ }
" }}}

" Terminal color definitions {{{
let s:cterm00        = "00"
let g:lake_cterm00 = "00"
let s:cterm03        = "08"
let g:lake_cterm03 = "08"
let s:cterm05        = "07"
let g:lake_cterm05 = "07"
let s:cterm07        = "15"
let g:lake_cterm07 = "15"
let s:cterm08        = "01"
let g:lake_cterm08 = "01"
let s:cterm0A        = "03"
let g:lake_cterm0A = "03"
let s:cterm0B        = "02"
let g:lake_cterm0B = "02"
let s:cterm0C        = "06"
let g:lake_cterm0C = "06"
let s:cterm0D        = "04"
let g:lake_cterm0D = "04"
let s:cterm0E        = "05"
let g:lake_cterm0E = "05"
if exists("lakecolorspace") && lakecolorspace == "256"
    let s:cterm01        = "18"
    let g:lake_cterm01 = "18"
    let s:cterm02        = "19"
    let g:lake_cterm02 = "19"
    let s:cterm04        = "20"
    let g:lake_cterm04 = "20"
    let s:cterm06        = "21"
    let g:lake_cterm06 = "21"
    let s:cterm09        = "16"
    let g:lake_cterm09 = "16"
    let s:cterm0F        = "17"
    let g:lake_cterm0F = "17"
else
    let s:cterm01        = "10"
    let g:lake_cterm01 = "10"
    let s:cterm02        = "11"
    let g:lake_cterm02 = "11"
    let s:cterm04        = "12"
    let g:lake_cterm04 = "12"
    let s:cterm06        = "13"
    let g:lake_cterm06 = "13"
    let s:cterm09        = "09"
    let g:lake_cterm09 = "09"
    let s:cterm0F        = "14"
    let g:lake_cterm0F = "14"
endif
" }}}

" Terminal colours {{{
if has("nvim")
    let g:terminal_color_0 =  "#2b303b"
    let g:terminal_color_1 =  "#bf616a"
    let g:terminal_color_2 =  "#a3be8c"
    let g:terminal_color_3 =  "#ebcb8b"
    let g:terminal_color_4 =  "#8fa1b3"
    let g:terminal_color_5 =  "#b48ead"
    let g:terminal_color_6 =  "#96b5b4"
    let g:terminal_color_7 =  "#c0c5ce"
    let g:terminal_color_8 =  "#65737e"
    let g:terminal_color_9 =  "#bf616a"
    let g:terminal_color_10 = "#a3be8c"
    let g:terminal_color_11 = "#ebcb8b"
    let g:terminal_color_12 = "#8fa1b3"
    let g:terminal_color_13 = "#b48ead"
    let g:terminal_color_14 = "#96b5b4"
    let g:terminal_color_15 = "#eff1f5"
    let g:terminal_color_background = g:terminal_color_0
    let g:terminal_color_foreground = g:terminal_color_5
    if &background == "light"
        let g:terminal_color_background = g:terminal_color_7
        let g:terminal_color_foreground = g:terminal_color_2
    endif
elseif has("terminal")
    let g:terminal_ansi_colors = [
        \ "#2b303b",
        \ "#bf616a",
        \ "#a3be8c",
        \ "#ebcb8b",
        \ "#8fa1b3",
        \ "#b48ead",
        \ "#96b5b4",
        \ "#c0c5ce",
        \ "#65737e",
        \ "#bf616a",
        \ "#a3be8c",
        \ "#ebcb8b",
        \ "#8fa1b3",
        \ "#b48ead",
        \ "#96b5b4",
        \ "#eff1f5",
        \ ]
endif
" }}}

" Theme setup {{{
hi clear
syntax reset
let g:colors_name = "lake"
" }}}

" Highlighting function {{{
" Optional variables are attributes and guisp
function! LakeHi(group, guifg, guibg, ctermfg, ctermbg, ...)
    let l:attr = get(a:, 1, "")
    let l:guisp = get(a:, 2, "")

    if a:guifg != ""
        exec "hi " . a:group . " guifg=" . s:palette[a:guifg].gui
    endif
    if a:guibg != ""
        exec "hi " . a:group . " guibg=" . s:palette[a:guibg].gui
    endif
    if a:ctermfg != ""
        exec "hi " . a:group . " ctermfg=" . s:palette[a:ctermfg].cterm
    endif
    if a:ctermbg != ""
        exec "hi " . a:group . " ctermbg=" . s:palette[a:ctermbg].cterm
    endif
    if l:attr != ""
        exec "hi " . a:group . " gui=" . l:attr . " cterm=" . l:attr
    endif
    if l:guisp != ""
        exec "hi " . a:group . " guisp=" . l:guisp
    endif
endfunction
" }}}

fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  call LakeHi(a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg, a:attr, a:guisp)
endfun

" Vim editor colors {{{
call <sid>hi("Normal",        "05", "00", "05", "00", "", "")
call <sid>hi("Bold",          "", "", "", "", "bold", "")
call <sid>hi("Debug",         "08", "", "08", "", "", "")
call <sid>hi("Directory",     "0D", "", "0D", "", "", "")
call <sid>hi("Error",         "00", "08", "00", "08", "", "")
call <sid>hi("ErrorMsg",      "08", "00", "08", "00", "", "")
call <sid>hi("Exception",     "08", "", "08", "", "", "")
call <sid>hi("FoldColumn",    "0C", "01", "0C", "01", "", "")
call <sid>hi("Folded",        "03", "01", "03", "01", "", "")
call <sid>hi("IncSearch",     "01", "09", "01", "09", "none", "")
call <sid>hi("Italic",        "", "", "", "", "none", "")
call <sid>hi("Macro",         "08", "", "08", "", "", "")
call <sid>hi("MatchParen",    "", "03", "", "03",  "", "")
call <sid>hi("ModeMsg",       "0B", "", "0B", "", "", "")
call <sid>hi("MoreMsg",       "0B", "", "0B", "", "", "")
call <sid>hi("Question",      "0D", "", "0D", "", "", "")
call <sid>hi("Search",        "01", "0A", "01", "0A",  "", "")
call <sid>hi("Substitute",    "01", "0A", "01", "0A", "none", "")
call <sid>hi("SpecialKey",    "03", "", "03", "", "", "")
call <sid>hi("TooLong",       "08", "", "08", "", "", "")
call <sid>hi("Underlined",    "08", "", "08", "", "", "")
call <sid>hi("Visual",        "", "02", "", "02", "", "")
call <sid>hi("VisualNOS",     "08", "", "08", "", "", "")
call <sid>hi("WarningMsg",    "08", "", "08", "", "", "")
call <sid>hi("WildMenu",      "08", "0A", "08", "", "", "")
call <sid>hi("Title",         "0D", "", "0D", "", "none", "")
call <sid>hi("Conceal",       "0D", "00", "0D", "00", "", "")
call <sid>hi("Cursor",        "00", "05", "00", "05", "", "")
call <sid>hi("NonText",       "03", "", "03", "", "", "")
call <sid>hi("LineNr",        "03", "01", "03", "01", "", "")
call <sid>hi("SignColumn",    "03", "01", "03", "01", "", "")
call <sid>hi("StatusLine",    "04", "02", "04", "02", "none", "")
call <sid>hi("StatusLineNC",  "03", "01", "03", "01", "none", "")
call <sid>hi("VertSplit",     "02", "02", "02", "02", "none", "")
call <sid>hi("ColorColumn",   "", "01", "", "01", "none", "")
call <sid>hi("CursorColumn",  "", "01", "", "01", "none", "")
call <sid>hi("CursorLine",    "", "01", "", "01", "none", "")
call <sid>hi("CursorLineNr",  "04", "01", "04", "01", "", "")
call <sid>hi("QuickFixLine",  "", "01", "", "01", "none", "")
call <sid>hi("PMenu",         "05", "01", "05", "01", "none", "")
call <sid>hi("PMenuSel",      "01", "05", "01", "05", "", "")
call <sid>hi("TabLine",       "03", "01", "03", "01", "none", "")
call <sid>hi("TabLineFill",   "03", "01", "03", "01", "none", "")
call <sid>hi("TabLineSel",    "0B", "01", "0B", "01", "none", "")
" }}}

" Standard syntax highlighting {{{
" TODO
" - [ ] yellow type keyword
" - [ ] red semicolons
call <sid>hi("Boolean",      "09", "", "09", "", "", "")
call <sid>hi("Character",    "08", "", "08", "", "", "")
call <sid>hi("Comment",      "03", "", "03", "", "", "")
call <sid>hi("Conditional",  "0E", "", "0E", "", "", "")
call <sid>hi("Constant",     "05", "", "05", "", "", "")
call <sid>hi("Define",       "0E", "", "0E", "", "none", "")
call <sid>hi("Delimiter",    "0F", "", "0F", "", "", "")
call <sid>hi("Float",        "09", "", "09", "", "", "")
call <sid>hi("Function",     "0D", "", "0D", "", "", "")
call <sid>hi("Identifier",   "08", "", "08", "", "none", "")
call <sid>hi("Include",      "0D", "", "0D", "", "", "")
call <sid>hi("Keyword",      "05", "", "05", "", "", "")
call <sid>hi("Label",        "0A", "", "0A", "", "", "")
call <sid>hi("Number",       "09", "", "09", "", "", "")
call <sid>hi("Operator",     "05", "", "05", "", "none", "")
call <sid>hi("PreProc",      "0A", "", "0A", "", "", "")
call <sid>hi("Repeat",       "0A", "", "0A", "", "", "")
call <sid>hi("Special",      "0A", "", "0A", "", "", "")
call <sid>hi("SpecialChar",  "0F", "", "0F", "", "", "")
call <sid>hi("Statement",    "08", "", "08", "", "", "")
call <sid>hi("StorageClass", "0A", "", "0A", "", "", "")
call <sid>hi("String",       "0B", "", "0B", "", "", "")
call <sid>hi("Structure",    "0E", "", "0E", "", "", "")
call <sid>hi("Tag",          "0A", "", "0A", "", "", "")
call <sid>hi("Todo",         "0A", "01", "0A", "01", "", "")
call <sid>hi("Type",         "0A", "", "0A", "", "none", "")
call <sid>hi("Typedef",      "0A", "", "0A", "", "", "")
" }}}

" C highlighting {{{
call <sid>hi("cOperator",   "0C", "", "0C", "", "", "")
call <sid>hi("cPreCondit",  "0E", "", "0E", "", "", "")
" }}}

" C# highlighting {{{
call <sid>hi("csClass",                 "0A", "", "0A", "", "", "")
call <sid>hi("csAttribute",             "0A", "", "0A", "", "", "")
call <sid>hi("csModifier",              "0E", "", "0E", "", "", "")
call <sid>hi("csType",                  "08", "", "08", "", "", "")
call <sid>hi("csUnspecifiedStatement",  "0D", "", "0D", "", "", "")
call <sid>hi("csContextualStatement",   "0E", "", "0E", "", "", "")
call <sid>hi("csNewDecleration",        "08", "", "08", "", "", "")
" }}}

" CSS highlighting {{{
call <sid>hi("cssBraces",      "05", "", "05", "", "", "")
call <sid>hi("cssClassName",   "0E", "", "0E", "", "", "")
call <sid>hi("cssColor",       "0C", "", "0C", "", "", "")
" }}}

" Diff highlighting {{{
call <sid>hi("DiffAdd",      "0B", "01",  "0B", "01", "", "")
call <sid>hi("DiffChange",   "03", "01",  "03", "01", "", "")
call <sid>hi("DiffDelete",   "08", "01",  "08", "01", "", "")
call <sid>hi("DiffText",     "0D", "01",  "0D", "01", "", "")
call <sid>hi("DiffAdded",    "0B", "00",  "0B", "00", "", "")
call <sid>hi("DiffFile",     "08", "00",  "08", "00", "", "")
call <sid>hi("DiffNewFile",  "0B", "00",  "0B", "00", "", "")
call <sid>hi("DiffLine",     "0D", "00",  "0D", "00", "", "")
call <sid>hi("DiffRemoved",  "08", "00",  "08", "00", "", "")
" }}}

" Git highlighting {{{
call <sid>hi("gitcommitOverflow",       "08", "", "08", "", "", "")
call <sid>hi("gitcommitSummary",        "0B", "", "0B", "", "", "")
call <sid>hi("gitcommitComment",        "03", "", "03", "", "", "")
call <sid>hi("gitcommitUntracked",      "03", "", "03", "", "", "")
call <sid>hi("gitcommitDiscarded",      "03", "", "03", "", "", "")
call <sid>hi("gitcommitSelected",       "03", "", "03", "", "", "")
call <sid>hi("gitcommitHeader",         "0E", "", "0E", "", "", "")
call <sid>hi("gitcommitSelectedType",   "0D", "", "0D", "", "", "")
call <sid>hi("gitcommitUnmergedType",   "0D", "", "0D", "", "", "")
call <sid>hi("gitcommitDiscardedType",  "0D", "", "0D", "", "", "")
call <sid>hi("gitcommitBranch",         "09", "", "09", "", "bold", "")
call <sid>hi("gitcommitUntrackedFile",  "0A", "", "0A", "", "", "")
call <sid>hi("gitcommitUnmergedFile",   "08", "", "08", "", "bold", "")
call <sid>hi("gitcommitDiscardedFile",  "08", "", "08", "", "bold", "")
call <sid>hi("gitcommitSelectedFile",   "0B", "", "0B", "", "bold", "")
" }}}

" GitGutter highlighting {{{
call <sid>hi("GitGutterAdd",     "0B", "01", "0B", "01", "", "")
call <sid>hi("GitGutterChange",  "0D", "01", "0D", "01", "", "")
call <sid>hi("GitGutterDelete",  "08", "01", "08", "01", "", "")
call <sid>hi("GitGutterChangeDelete",  "0E", "01", "0E", "01", "", "")
" }}}

" HTML highlighting {{{
call <sid>hi("htmlBold",    "0A", "", "0A", "", "", "")
call <sid>hi("htmlItalic",  "0E", "", "0E", "", "", "")
call <sid>hi("htmlEndTag",  "05", "", "05", "", "", "")
call <sid>hi("htmlTag",     "05", "", "05", "", "", "")
" }}}

" JavaScript highlighting {{{
call <sid>hi("javaScript",        "05", "", "05", "", "", "")
call <sid>hi("javaScriptBraces",  "05", "", "05", "", "", "")
call <sid>hi("javaScriptNumber",  "09", "", "09", "", "", "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsOperator",          "0D", "", "0D", "", "", "")
call <sid>hi("jsStatement",         "0E", "", "0E", "", "", "")
call <sid>hi("jsReturn",            "08", "", "08", "", "", "")
call <sid>hi("jsThis",              "08", "", "08", "", "", "")
call <sid>hi("jsClassDefinition",   "0A", "", "0A", "", "", "")
call <sid>hi("jsFunction",          "0E", "", "0E", "", "", "")
call <sid>hi("jsFuncName",          "0D", "", "0D", "", "", "")
call <sid>hi("jsFuncCall",          "0D", "", "0D", "", "", "")
call <sid>hi("jsClassFuncName",     "0D", "", "0D", "", "", "")
call <sid>hi("jsClassMethodType",   "0E", "", "0E", "", "", "")
call <sid>hi("jsRegexpString",      "0C", "", "0C", "", "", "")
call <sid>hi("jsGlobalObjects",     "0A", "", "0A", "", "", "")
call <sid>hi("jsGlobalNodeObjects", "0A", "", "0A", "", "", "")
call <sid>hi("jsExceptions",        "0A", "", "0A", "", "", "")
call <sid>hi("jsBuiltins",          "0A", "", "0A", "", "", "")
" }}}

" treesitter {{{
call <sid>hi("TSFunction",           "05", "", "05", "", "none", "")
call <sid>hi("TSConstant",           "05", "", "05", "", "none", "")
call <sid>hi("TSConstructor",        "05", "", "05", "", "none", "")
call <sid>hi("TSConditional",        "0E", "", "0E", "", "none", "")
call <sid>hi("TSNumber",             "09", "", "09", "", "", "")
call <sid>hi("TSOperator",           "05", "", "05", "", "none", "")
call <sid>hi("TSParameter",          "05", "", "05", "", "none", "")
call <sid>hi("TSParameterReference", "05", "", "05", "", "none", "")
call <sid>hi("TSProperty",           "05", "", "05", "", "none", "")
call <sid>hi("TSField",              "05", "", "05", "", "none", "")
call <sid>hi("TSPunctDelimiter",     "05", "", "05", "", "none", "")
call <sid>hi("TSPunctBracket",       "0D", "", "0D", "", "none", "")
call <sid>hi("TSPunctSpecial",       "05", "", "05", "", "none", "")
call <sid>hi("TSRepeat",             "0A", "", "0A", "", "none", "")
call <sid>hi("TSString",             "0B", "", "0B", "", "none", "")
call <sid>hi("TSType",               "05", "", "05", "", "none", "")
call <sid>hi("TSTypeBuiltin",        "05", "", "05", "", "none", "")
call <sid>hi("TSVariable",           "05", "", "05", "", "none", "")
call <sid>hi("TSVariableBuiltin",    "0A", "", "0A", "", "none", "")

call <sid>hi("TSFloat",              "09", "", "09", "", "", "")
call <sid>hi("TSKeyword",            "0A", "", "0A", "", "", "")
call <sid>hi("TSKeywordOperator",    "0F", "", "0F", "", "", "")
call <sid>hi("TSKeywordFunction",    "0E", "", "0E", "", "", "")
call <sid>hi("TSKeywordReturn",      "08", "", "08", "", "bold", "")
call <sid>hi("TSMethod",             "05", "", "05", "", "", "")
call <sid>hi("TSNamespace",          "05", "", "05", "", "", "")
call <sid>hi("TSException",          "0C", "", "0C", "", "", "")
call <sid>hi("TSInclude",            "0E", "", "0E", "", "", "")
call <sid>hi("TSTag",                "0C", "", "0C", "", "", "")
call <sid>hi("TSTagDelimiter",       "0C", "", "0C", "", "", "")
call <sid>hi("TSStatement",          "0A", "", "0A", "", "", "")
call <sid>hi("TSError",              "08", "", "08", "", "", "")
" }}}

" Typescript highlighting based on vim-typescript
" TODO why color not appliying not appliying
call <sid>hi("typescriptStorageClass", "0A", "", "0A", "", "", "")

" Mail highlighting {{{
call <sid>hi("mailQuoted1",  "0A", "", "0A", "", "", "")
call <sid>hi("mailQuoted2",  "0B", "", "0B", "", "", "")
call <sid>hi("mailQuoted3",  "0E", "", "0E", "", "", "")
call <sid>hi("mailQuoted4",  "0C", "", "0C", "", "", "")
call <sid>hi("mailQuoted5",  "0D", "", "0D", "", "", "")
call <sid>hi("mailQuoted6",  "0A", "", "0A", "", "", "")
call <sid>hi("mailURL",      "0D", "", "0D", "", "", "")
call <sid>hi("mailEmail",    "0D", "", "0D", "", "", "")
" }}}

" Markdown highlighting {{{
call <sid>hi("markdownCode",              "0B", "", "0B", "", "", "")
call <sid>hi("markdownError",             "05", "00", "05", "00", "", "")
call <sid>hi("markdownCodeBlock",         "0B", "", "0B", "", "", "")
call <sid>hi("markdownHeadingDelimiter",  "0D", "", "0D", "", "", "")
" }}}

" NERDTree highlighting {{{
call <sid>hi("NERDTreeDirSlash",  "0D", "", "0D", "", "", "")
call <sid>hi("NERDTreeExecFile",  "05", "", "05", "", "", "")
" }}}

" PHP highlighting {{{
call <sid>hi("phpMemberSelector",  "05", "", "05", "", "", "")
call <sid>hi("phpComparison",      "05", "", "05", "", "", "")
call <sid>hi("phpParent",          "05", "", "05", "", "", "")
call <sid>hi("phpMethodsVar",      "0C", "", "0C", "", "", "")
" }}}

" Python highlighting {{{
call <sid>hi("pythonOperator",  "0E", "", "0E", "", "", "")
call <sid>hi("pythonRepeat",    "0E", "", "0E", "", "", "")
call <sid>hi("pythonInclude",   "0E", "", "0E", "", "", "")
call <sid>hi("pythonStatement", "0E", "", "0E", "", "", "")
" }}}

" Ruby highlighting {{{
call <sid>hi("rubyAttribute",               "0D", "", "0D", "", "", "")
call <sid>hi("rubyConstant",                "0A", "", "0A", "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  "0F", "", "0F", "", "", "")
call <sid>hi("rubyRegexp",                  "0C", "", "0C", "", "", "")
call <sid>hi("rubySymbol",                  "0B", "", "0B", "", "", "")
call <sid>hi("rubyStringDelimiter",         "0B", "", "0B", "", "", "")
" }}}

" SASS highlighting {{{
call <sid>hi("sassidChar",     "08", "", "08", "", "", "")
call <sid>hi("sassClassChar",  "09", "", "09", "", "", "")
call <sid>hi("sassInclude",    "0E", "", "0E", "", "", "")
call <sid>hi("sassMixing",     "0E", "", "0E", "", "", "")
call <sid>hi("sassMixinName",  "0D", "", "0D", "", "", "")
" }}}

" Signify highlighting {{{
call <sid>hi("SignifySignAdd",     "0B", "01", "0B", "01", "", "")
call <sid>hi("SignifySignChange",  "0D", "01", "0D", "01", "", "")
call <sid>hi("SignifySignDelete",  "08", "01", "08", "01", "", "")
" }}}

" Spelling highlighting {{{
call <sid>hi("SpellBad",     "", "", "", "", "undercurl", "08")
call <sid>hi("SpellLocal",   "", "", "", "", "undercurl", "0C")
call <sid>hi("SpellCap",     "", "", "", "", "undercurl", "0D")
call <sid>hi("SpellRare",    "", "", "", "", "undercurl", "0E")
" }}}

" Startify highlighting {{{
call <sid>hi("StartifyBracket",  "03", "", "03", "", "", "")
call <sid>hi("StartifyFile",     "07", "", "07", "", "", "")
call <sid>hi("StartifyFooter",   "03", "", "03", "", "", "")
call <sid>hi("StartifyHeader",   "0B", "", "0B", "", "", "")
call <sid>hi("StartifyNumber",   "09", "", "09", "", "", "")
call <sid>hi("StartifyPath",     "03", "", "03", "", "", "")
call <sid>hi("StartifySection",  "0E", "", "0E", "", "", "")
call <sid>hi("StartifySelect",   "0C", "", "0C", "", "", "")
call <sid>hi("StartifySlash",    "03", "", "03", "", "", "")
call <sid>hi("StartifySpecial",  "03", "", "03", "", "", "")
" }}}

" Java highlighting
call <sid>hi("javaOperator",     "0D", "", "0D", "", "", "")

" cleanup {{{
delf <sid>hi

" Remove color variables
" unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
" unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
" }}}
