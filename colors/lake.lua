local theme = {
    ["00"] = { ["gui"] = "#2b303b", ["cterm"] = "00", ["name"] = "Gray" },
    ["01"] = { ["gui"] = "#343d46", ["cterm"] = "01", ["name"] = "Gray" },
    ["02"] = { ["gui"] = "#4f5b66", ["cterm"] = "02", ["name"] = "DarkGray" },
    ["03"] = { ["gui"] = "#65737e", ["cterm"] = "03", ["name"] = "DarkGray" },
    ["04"] = { ["gui"] = "#a7adba", ["cterm"] = "04", ["name"] = "LightGray" },
    ["05"] = { ["gui"] = "#c0c5ce", ["cterm"] = "05", ["name"] = "LightGray" },
    ["06"] = { ["gui"] = "#dfe1e8", ["cterm"] = "06", ["name"] = "White" },
    ["07"] = { ["gui"] = "#eff1f5", ["cterm"] = "07", ["name"] = "White" },
    ["08"] = { ["gui"] = "#bf616a", ["cterm"] = "08", ["name"] = "Red" },
    ["09"] = { ["gui"] = "#d08770", ["cterm"] = "09", ["name"] = "Orange" },
    ["0A"] = { ["gui"] = "#ebcb8b", ["cterm"] = "0A", ["name"] = "Yellow" },
    ["0B"] = { ["gui"] = "#a3be8c", ["cterm"] = "0B", ["name"] = "LightGreen" },
    ["0C"] = { ["gui"] = "#96b5b4", ["cterm"] = "0C", ["name"] = "LightBlue" },
    ["0D"] = { ["gui"] = "#8fa1b3", ["cterm"] = "0D", ["name"] = "Blue" },
    ["0E"] = { ["gui"] = "#b48ead", ["cterm"] = "0E", ["name"] = "Violet" },
    ["0F"] = { ["gui"] = "#ab7967", ["cterm"] = "0F", ["name"] = "Orange" },
}
vim.g.lake_palette = theme

if vim.version().minor < 7 then
    vim.notify_once("lake requires neovim v0.7 or newer")
    return
end

if vim.g.colors_name then
    vim.cmd("hi clear")
end

vim.g.colors_name = "lake"
vim.o.termguicolors = true

local groups = {
    -- Base
    ["Normal"] = {
        ["guifg"] = "05",
        ["guibg"] = "00",
        ["ctermfg"] = "05",
        ["ctermbg"] = "00",
    },
    ["Bold"] = {
        ["attr"] = "bold",
    },
    ["Debug"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["Directory"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["Error"] = {
        ["guifg"] = "00",
        ["guibg"] = "08",
        ["ctermfg"] = "00",
        ["ctermbg"] = "08",
    },
    ["ErrorMsg"] = {
        ["guifg"] = "08",
        ["guibg"] = "00",
        ["ctermfg"] = "08",
        ["ctermbg"] = "00",
    },
    ["Exception"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["FoldColumn"] = {
        ["guifg"] = "0C",
        ["guibg"] = "01",
        ["ctermfg"] = "0C",
        ["ctermbg"] = "01",
    },
    ["Folded"] = {
        ["guifg"] = "03",
        ["guibg"] = "01",
        ["ctermfg"] = "03",
        ["ctermbg"] = "01",
    },
    ["IncSearch"] = {
        ["guifg"] = "01",
        ["guibg"] = "09",
        ["ctermfg"] = "01",
        ["ctermbg"] = "09",
    },
    ["Italic"] = {
        ["attr"] = "italic",
    },
    ["Macro"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["MatchParen"] = {
        ["guibg"] = "03",
        ["ctermbg"] = "03",
    },
    ["ModeMsg"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["MoreMsg"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["Question"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["Search"] = {
        ["guifg"] = "01",
        ["guibg"] = "0A",
        ["ctermfg"] = "01",
        ["ctermbg"] = "0A",
    },
    ["Substitute"] = {
        ["guifg"] = "01",
        ["guibg"] = "0A",
        ["ctermfg"] = "01",
        ["ctermbg"] = "0A",
    },
    ["SpecialKey"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["TooLong"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["Underlined"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["Visual"] = {
        ["guibg"] = "02",
        ["ctermbg"] = "02",
    },
    ["VisualNOS"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["WarningMsg"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["WildMenu"] = {
        ["guifg"] = "08",
        ["guibg"] = "0A",
        ["ctermfg"] = "08",
    },
    ["WinSeparator"] = {
        ["guifg"] = "02",
        -- ["guibg"] = "none",
        ["ctermfg"] = "02",
    },
    ["Title"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["Conceal"] = {
        ["guifg"] = "0D",
        ["guibg"] = "00",
        ["ctermfg"] = "0D",
        ["ctermbg"] = "00",
    },
    ["Cursor"] = {
        ["guifg"] = "00",
        ["guibg"] = "05",
        ["ctermfg"] = "00",
        ["ctermbg"] = "05",
    },
    ["NonText"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["LineNr"] = {
        ["guifg"] = "03",
        ["guibg"] = "01",
        ["ctermfg"] = "03",
        ["ctermbg"] = "01",
    },
    ["SignColumn"] = {
        ["guifg"] = "03",
        ["guibg"] = "01",
        ["ctermfg"] = "03",
        ["ctermbg"] = "01",
    },
    ["StatusLine"] = {
        ["guifg"] = "04",
        ["guibg"] = "02",
        ["ctermfg"] = "04",
        ["ctermbg"] = "02",
    },
    ["StatusLineNC"] = {
        ["guifg"] = "03",
        ["guibg"] = "01",
        ["ctermfg"] = "03",
        ["ctermbg"] = "01",
    },
    ["VertSplit"] = {
        ["guifg"] = "02",
        ["guibg"] = "02",
        ["ctermfg"] = "02",
        ["ctermbg"] = "02",
    },
    ["ColorColumn"] = {
        ["guibg"] = "01",
        ["ctermbg"] = "01",
    },
    ["CursorColumn"] = {
        ["guibg"] = "01",
        ["ctermbg"] = "01",
    },
    ["CursorLine"] = {
        ["guibg"] = "01",
        ["ctermbg"] = "01",
    },
    ["CursorLineNr"] = {
        ["guifg"] = "04",
        ["guibg"] = "01",
        ["ctermfg"] = "04",
        ["ctermbg"] = "01",
    },
    ["QuickFixLine"] = {
        ["guibg"] = "01",
        ["ctermbg"] = "01",
    },
    ["PMenu"] = {
        ["guifg"] = "05",
        ["guibg"] = "01",
        ["ctermfg"] = "05",
        ["ctermbg"] = "01",
    },
    ["PMenuSel"] = {
        ["guifg"] = "01",
        ["guibg"] = "05",
        ["ctermfg"] = "01",
        ["ctermbg"] = "05",
    },
    ["TabLine"] = {
        ["guifg"] = "03",
        ["guibg"] = "01",
        ["ctermfg"] = "03",
        ["ctermbg"] = "01",
    },
    ["TabLineFill"] = {
        ["guifg"] = "03",
        ["guibg"] = "01",
        ["ctermfg"] = "03",
        ["ctermbg"] = "01",
    },
    ["TabLineSel"] = {
        ["guifg"] = "0B",
        ["guibg"] = "01",
        ["ctermfg"] = "0B",
        ["ctermbg"] = "01",
    },
    -- Builtin
    ["Boolean"] = {
        ["guifg"] = "09",
        ["ctermfg"] = "09",
    },
    ["Character"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["Comment"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["Conditional"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["Constant"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["Define"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["Delimiter"] = {
        ["guifg"] = "0F",
        ["ctermfg"] = "0F",
    },
    ["Float"] = {
        ["guifg"] = "09",
        ["ctermfg"] = "09",
    },
    ["Function"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["Identifier"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["Include"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["Keyword"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["Label"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["Number"] = {
        ["guifg"] = "09",
        ["ctermfg"] = "09",
    },
    ["Operator"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["PreProc"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["Repeat"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["Special"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["SpecialChar"] = {
        ["guifg"] = "0F",
        ["ctermfg"] = "0F",
    },
    ["Statement"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["StorageClass"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["String"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["Structure"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["Tag"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["Todo"] = {
        ["guifg"] = "0A",
        ["guibg"] = "01",
        ["ctermfg"] = "0A",
        ["ctermbg"] = "01",
    },
    ["Type"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["Typedef"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    -- C
    ["cOperator"] = {
        ["guifg"] = "0C",
        ["ctermfg"] = "0C",
    },
    ["cPreCondit"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    -- C#
    ["csClass"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["csAttribute"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["csModifier"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["csType"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["csUnspecifiedStatement"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["csContextualStatement"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["csNewDecleration"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    -- CSS
    ["cssBraces"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["cssClassName"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["cssColor"] = {
        ["guifg"] = "0C",
        ["ctermfg"] = "0C",
    },
    -- Diff
    ["DiffAdd"] = {
        ["guifg"] = "0B",
        ["guibg"] = "01",
        ["ctermfg"] = "0B",
        ["ctermbg"] = "01",
    },
    ["DiffChange"] = {
        ["guifg"] = "03",
        ["guibg"] = "01",
        ["ctermfg"] = "03",
        ["ctermbg"] = "01",
    },
    ["DiffDelete"] = {
        ["guifg"] = "08",
        ["guibg"] = "01",
        ["ctermfg"] = "08",
        ["ctermbg"] = "01",
    },
    ["DiffText"] = {
        ["guifg"] = "0D",
        ["guibg"] = "01",
        ["ctermfg"] = "0D",
        ["ctermbg"] = "01",
    },
    ["DiffAdded"] = {
        ["guifg"] = "0B",
        ["guibg"] = "00",
        ["ctermfg"] = "0B",
        ["ctermbg"] = "00",
    },
    ["DiffFile"] = {
        ["guifg"] = "08",
        ["guibg"] = "00",
        ["ctermfg"] = "08",
        ["ctermbg"] = "00",
    },
    ["DiffNewFile"] = {
        ["guifg"] = "0B",
        ["guibg"] = "00",
        ["ctermfg"] = "0B",
        ["ctermbg"] = "00",
    },
    ["DiffLine"] = {
        ["guifg"] = "0D",
        ["guibg"] = "00",
        ["ctermfg"] = "0D",
        ["ctermbg"] = "00",
    },
    ["DiffRemoved"] = {
        ["guifg"] = "08",
        ["guibg"] = "00",
        ["ctermfg"] = "08",
        ["ctermbg"] = "00",
    },
    -- Docker
    ["dockerfileKeyword"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    -- Git
    ["gitcommitOverflow"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["gitcommitSummary"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["gitcommitComment"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["gitcommitUntracked"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["gitcommitDiscarded"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["gitcommitSelected"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["gitcommitHeader"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["gitcommitSelectedType"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["gitcommitUnmergedType"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["gitcommitDiscardedType"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["gitcommitBranch"] = {
        ["guifg"] = "09",
        ["ctermfg"] = "09",
        ["attr"] = "bold",
    },
    ["gitcommitUntrackedFile"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["gitcommitUnmergedFile"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
        ["attr"] = "bold",
    },
    ["gitcommitDiscardedFile"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
        ["attr"] = "bold",
    },
    ["gitcommitSelectedFile"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
        ["attr"] = "bold",
    },
    -- GitGutter
    ["GitGutterAdd"] = {
        ["guifg"] = "0B",
        ["guibg"] = "01",
        ["ctermfg"] = "0B",
        ["ctermbg"] = "01",
    },
    ["GitGutterChange"] = {
        ["guifg"] = "0D",
        ["guibg"] = "01",
        ["ctermfg"] = "0D",
        ["ctermbg"] = "01",
    },
    ["GitGutterDelete"] = {
        ["guifg"] = "08",
        ["guibg"] = "01",
        ["ctermfg"] = "08",
        ["ctermbg"] = "01",
    },
    ["GitGutterChangeDelete"] = {
        ["guifg"] = "0E",
        ["guibg"] = "01",
        ["ctermfg"] = "0E",
        ["ctermbg"] = "01",
    },
    -- HTML
    ["htmlBold"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["htmlItalic"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["htmlEndTag"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["htmlTag"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    -- JavaScript
    ["javaScript"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["javaScriptBraces"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["javaScriptNumber"] = {
        ["guifg"] = "09",
        ["ctermfg"] = "09",
    },
    ["jsOperator"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["jsStatement"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["jsReturn"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["jsThis"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["jsClassDefinition"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["jsFunction"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["jsFuncName"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["jsFuncCall"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["jsClassFuncName"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["jsClassMethodType"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["jsRegexpString"] = {
        ["guifg"] = "0C",
        ["ctermfg"] = "0C",
    },
    ["jsGlobalObjects"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["jsGlobalNodeObjects"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["jsExceptions"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["jsBuiltins"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["typescriptAliasKeyword"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["typescriptEndColons"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["typescriptStorageClass"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    -- Mail
    ["mailQuoted1"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["mailQuoted2"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["mailQuoted3"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["mailQuoted4"] = {
        ["guifg"] = "0C",
        ["ctermfg"] = "0C",
    },
    ["mailQuoted5"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["mailQuoted6"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["mailURL"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["mailEmail"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    -- Markdown
    ["markdownCode"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["markdownError"] = {
        ["guifg"] = "05",
        ["guibg"] = "00",
        ["ctermfg"] = "05",
        ["ctermbg"] = "00",
    },
    ["markdownCodeBlock"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["markdownHeadingDelimiter"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    -- NERDTree
    ["NERDTreeDirSlash"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["NERDTreeExecFile"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    -- PHP
    ["phpMemberSelector"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["phpComparison"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["phpParent"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["phpMethodsVar"] = {
        ["guifg"] = "0C",
        ["ctermfg"] = "0C",
    },
    -- Python
    ["pythonOperator"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["pythonRepeat"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["pythonInclude"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["pythonStatement"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    -- Ruby
    ["rubyAttribute"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["rubyConstant"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["rubyInterpolationDelimiter"] = {
        ["guifg"] = "0F",
        ["ctermfg"] = "0F",
    },
    ["rubyRegexp"] = {
        ["guifg"] = "0C",
        ["ctermfg"] = "0C",
    },
    ["rubySymbol"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["rubyStringDelimiter"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    -- SASS
    ["sassidChar"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    ["sassClassChar"] = {
        ["guifg"] = "09",
        ["ctermfg"] = "09",
    },
    ["sassInclude"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["sassMixing"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["sassMixinName"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    -- Signify
    ["SignifySignAdd"] = {
        ["guifg"] = "0B",
        ["guibg"] = "01",
        ["ctermfg"] = "0B",
        ["ctermbg"] = "01",
    },
    ["SignifySignChange"] = {
        ["guifg"] = "0D",
        ["guibg"] = "01",
        ["ctermfg"] = "0D",
        ["ctermbg"] = "01",
    },
    ["SignifySignDelete"] = {
        ["guifg"] = "08",
        ["guibg"] = "01",
        ["ctermfg"] = "08",
        ["ctermbg"] = "01",
    },
    -- Spelling
    ["SpellBad"] = {
        ["attr"] = "undercurl",
        ["guisp"] = "08",
    },
    ["SpellLocal"] = {
        ["attr"] = "undercurl",
        ["guisp"] = "0C",
    },
    ["SpellCap"] = {
        ["attr"] = "undercurl",
        ["guisp"] = "0D",
    },
    ["SpellRare"] = {
        ["attr"] = "undercurl",
        ["guisp"] = "0E",
    },
    -- Startify
    ["StartifyBracket"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["StartifyFile"] = {
        ["guifg"] = "07",
        ["ctermfg"] = "07",
    },
    ["StartifyFooter"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["StartifyHeader"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["StartifyNumber"] = {
        ["guifg"] = "09",
        ["ctermfg"] = "09",
    },
    ["StartifyPath"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["StartifySection"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["StartifySelect"] = {
        ["guifg"] = "0C",
        ["ctermfg"] = "0C",
    },
    ["StartifySlash"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["StartifySpecial"] = {
        ["guifg"] = "03",
        ["ctermfg"] = "03",
    },
    ["javaOperator"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    -- Treesitter
    ["TSFunction"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSConstant"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSConstructor"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSConditional"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["TSNumber"] = {
        ["guifg"] = "09",
        ["ctermfg"] = "09",
    },
    ["TSOperator"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSParameter"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSParameterReference"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSProperty"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSField"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSPunctDelimiter"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSPunctBracket"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["TSPunctSpecial"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSRepeat"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["TSString"] = {
        ["guifg"] = "0B",
        ["ctermfg"] = "0B",
    },
    ["TSType"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSTypeBuiltin"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSVariable"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSVariableBuiltin"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["TSFloat"] = {
        ["guifg"] = "09",
        ["ctermfg"] = "09",
    },
    ["TSKeyword"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["TSKeywordOperator"] = {
        ["guifg"] = "0F",
        ["ctermfg"] = "0F",
    },
    ["TSKeywordFunction"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["TSKeywordReturn"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
        ["attr"] = "bold",
    },
    ["TSMethod"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSNamespace"] = {
        ["guifg"] = "05",
        ["ctermfg"] = "05",
    },
    ["TSException"] = {
        ["guifg"] = "0C",
        ["ctermfg"] = "0C",
    },
    ["TSInclude"] = {
        ["guifg"] = "0E",
        ["ctermfg"] = "0E",
    },
    ["TSTag"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["TSTagCustom"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["TSTagDelimiter"] = {
        ["guifg"] = "0D",
        ["ctermfg"] = "0D",
    },
    ["TSTagAttribute"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["TSStatement"] = {
        ["guifg"] = "0A",
        ["ctermfg"] = "0A",
    },
    ["TSError"] = {
        ["guifg"] = "08",
        ["ctermfg"] = "08",
    },
    -- Treesitter 0.8 or newer
    ["@function"] = {link = "TSFunction"},
    ["@constant"] = {link = "TSConstant"},
    ["@constructor"] = {link = "TSConstructor"},
    ["@conditional"] = {link = "TSConditional"},
    ["@number"] = {link = "TSNumber"},
    ["@operator"] = {link = "TSOperator"},
    ["@parameter"] = {link = "TSParameter"},
    ["@parameter.reference"] = {link = "TSParameterReference"},
    ["@property"] = {link = "TSProperty"},
    ["@field"] = {link = "TSField"},
    ["@punctuation.delimiter"] = {link = "TSPunctDelimiter"},
    ["@punctuation.delimiter.markdown"] = {link = "Delimiter"},
    ["@punctuation.bracket"] = {link = "TSPunctBracket"},
    ["@punctuation.special"] = {link = "TSPunctSpecial"},
    ["@repeat"] = {link = "TSRepeat"},
    ["@string"] = {link = "TSString"},
    ["@type"] = {link = "TSType"},
    ["@type.builtin"] = {link = "TSTypeBuiltin"},
    ["@variable"] = {link = "TSVariable"},
    ["@variable.builtin"] = {link = "TSVariableBuiltin"},
    ["@float"] = {link = "TSFloat"},
    ["@keyword"] = {link = "TSKeyword"},
    ["@keyword.operator"] = {link = "TSKeywordOperator"},
    ["@keyword.function"] = {link = "TSKeywordFunction"},
    ["@keyword.return"] = {link = "TSKeywordReturn"},
    ["@method"] = {link = "TSMethod"},
    ["@namespace"] = {link = "TSNamespace"},
    ["@exception"] = {link = "TSException"},
    ["@include"] = {link = "TSInclude"},
    ["@text.title"] = {link = "Title"},
    ["@text.literal"] = {link = "String"},
    ["@text.strong"] = {link = "Bold"},
    ["@text.emphasis"] = {link = "Italic"},
    ["@text.uri"] = {link = "String"},
    ["@tag"] = {link = "TSTag"},
    ["@tag.custom"] = {link = "TSTagCustom"},
    ["@tag.delimiter"] = {link = "TSTagDelimiter"},
    ["@tag.attribute"] = {link = "TSTagAttribute"},
    ["@statement"] = {link = "TSStatement"},
    ["@error"] = {link = "TSError"},
}

for group, settings in pairs(groups) do
    local opts = {}
    if settings.guifg ~= nil then
        opts.fg = theme[settings.guifg].gui
    end
    if settings.guibg ~= nil then
        opts.bg = theme[settings.guibg].gui
    end
    if settings.attr == 'bold' then
        opts.bold = true
    end
    if settings.attr == 'undercurl' then
        opts.undercurl = true
    end
    if settings.attr == 'italic' then
        opts.italic = true
    end
    if settings.link then
        opts.link = settings.link
    end
    vim.api.nvim_set_hl(0, group, opts)
end
