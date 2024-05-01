local t = require('lake').theme
local theme = {
    ['00'] = { ['gui'] = t.color00, ['cterm'] = 234, ['name'] = 'Gray' },
    ['01'] = { ['gui'] = t.color01, ['cterm'] = 236, ['name'] = 'Gray' },
    ['02'] = { ['gui'] = t.color02, ['cterm'] = 238, ['name'] = 'DarkGray' },
    ['03'] = { ['gui'] = t.color03, ['cterm'] = 242, ['name'] = 'DarkGray' },
    ['04'] = { ['gui'] = t.color04, ['cterm'] = 246, ['name'] = 'LightGray' },
    ['05'] = { ['gui'] = t.color05, ['cterm'] = 248, ['name'] = 'LightGray' },
    ['06'] = { ['gui'] = t.color06, ['cterm'] = 250, ['name'] = 'White' },
    ['07'] = { ['gui'] = t.color07, ['cterm'] = 254, ['name'] = 'White' },
    ['08'] = { ['gui'] = t.color08, ['cterm'] = 1, ['name'] = 'Red' },
    ['09'] = { ['gui'] = t.color09, ['cterm'] = 136, ['name'] = 'Orange' },
    ['0A'] = { ['gui'] = t.color0A, ['cterm'] = 3, ['name'] = 'Yellow' },
    ['0B'] = { ['gui'] = t.color0B, ['cterm'] = 144, ['name'] = 'LightGreen' },
    ['0C'] = { ['gui'] = t.color0C, ['cterm'] = 3, ['name'] = 'LightBlue' },
    ['0D'] = { ['gui'] = t.color0D, ['cterm'] = 12, ['name'] = 'Blue' },
    ['0E'] = { ['gui'] = t.color0E, ['cterm'] = 13, ['name'] = 'Violet' },
    ['0F'] = { ['gui'] = t.color0F, ['cterm'] = 130, ['name'] = 'Orange' },
}

vim.g.lake_palette = theme

if vim.version().minor < 7 then
    vim.notify_once('lake requires neovim v0.7 or newer')
    return
end

if vim.g.colors_name then
    vim.cmd('hi clear')
end

vim.g.colors_name = 'lake'
vim.o.termguicolors = true

local groups = {
    -- Base
    ['Normal'] = {
        ['fg'] = '05',
        ['bg'] = '00',
    },
    ['NormalNC'] = { link = 'ColorColumn' },
    ['NormalFloat'] = { link = 'Normal' },
    ['Bold'] = {
        ['attr'] = 'bold',
    },
    ['Debug'] = {
        ['fg'] = '08',
    },
    ['Directory'] = {
        ['fg'] = '0D',
    },
    ['Error'] = {
        ['fg'] = '00',
        ['bg'] = '08',
    },
    ['ErrorMsg'] = {
        ['fg'] = '08',
        ['bg'] = '00',
    },
    ['Exception'] = {
        ['fg'] = '08',
    },
    ['FoldColumn'] = {
        ['fg'] = '0C',
        ['bg'] = '01',
    },
    ['Folded'] = {
        ['fg'] = '03',
        ['bg'] = '01',
    },
    ['IncSearch'] = {
        ['fg'] = '01',
        ['bg'] = '09',
    },
    ['Italic'] = {
        italic = true,
    },
    ['Macro'] = {
        ['fg'] = '05',
    },
    ['MatchParen'] = {
        ['bg'] = '03',
    },
    ['ModeMsg'] = {
        ['fg'] = '0B',
    },
    ['MoreMsg'] = {
        ['fg'] = '0B',
    },
    ['Question'] = {
        ['fg'] = '0D',
    },
    ['Search'] = {
        ['fg'] = '01',
        ['bg'] = '0A',
    },
    ['Substitute'] = {
        ['fg'] = '01',
        ['bg'] = '0A',
    },
    ['SpecialKey'] = {
        ['fg'] = '03',
    },
    ['TooLong'] = {
        ['fg'] = '08',
    },
    ['Underlined'] = {
        ['fg'] = '08',
    },
    ['Visual'] = {
        ['bg'] = '02',
    },
    ['VisualNOS'] = {
        ['fg'] = '08',
    },
    ['WarningMsg'] = {
        ['fg'] = '08',
    },
    ['WildMenu'] = {
        ['fg'] = '08',
        ['bg'] = '0A',
    },
    ['WinSeparator'] = {
        ['fg'] = '02',
    },
    ['Title'] = {
        ['fg'] = '0D',
    },
    ['Conceal'] = {
        ['fg'] = '0D',
        ['bg'] = '00',
    },
    ['Cursor'] = {
        ['fg'] = '00',
        ['bg'] = '05',
    },
    ['NonText'] = {
        ['fg'] = '03',
    },
    ['LineNr'] = {
        ['fg'] = '03',
        ['bg'] = '01',
    },
    ['SignColumn'] = {
        ['fg'] = '03',
        ['bg'] = '01',
    },
    ['StatusLine'] = {
        ['fg'] = '04',
        ['bg'] = '02',
    },
    ['StatusLineNC'] = {
        ['fg'] = '03',
        ['bg'] = '01',
    },
    ['VertSplit'] = {
        ['fg'] = '02',
        ['bg'] = '02',
    },
    ['ColorColumn'] = {
        ['bg'] = '01',
    },
    ['CursorColumn'] = {
        ['bg'] = '01',
    },
    ['CursorLine'] = {
        ['bg'] = '01',
    },
    ['CursorLineNr'] = {
        ['fg'] = '04',
        ['bg'] = '01',
    },
    ['QuickFixLine'] = {
        ['bg'] = '01',
    },
    ['PMenu'] = {
        ['fg'] = '05',
        ['bg'] = '01',
    },
    ['PMenuSel'] = {
        ['fg'] = '01',
        ['bg'] = '05',
    },
    ['TabLine'] = {
        ['fg'] = '03',
        ['bg'] = '01',
    },
    ['TabLineFill'] = {
        ['fg'] = '03',
        ['bg'] = '01',
    },
    ['TabLineSel'] = {
        ['fg'] = '0B',
        ['bg'] = '01',
    },
    -- Builtin
    ['Boolean'] = {
        ['fg'] = '09',
    },
    ['Character'] = {
        ['fg'] = '08',
    },
    ['Comment'] = {
        ['fg'] = '03',
    },
    ['Conditional'] = {
        ['fg'] = '0E',
    },
    ['Constant'] = {
        ['fg'] = '05',
    },
    ['Define'] = {
        ['fg'] = '0E',
    },
    ['Delimiter'] = {
        ['fg'] = '0F',
    },
    ['Float'] = {
        ['fg'] = '09',
    },
    ['Function'] = {
        ['fg'] = '0D',
    },
    ['Identifier'] = {
        ['fg'] = '05',
    },
    ['Include'] = {
        ['fg'] = '0D',
    },
    ['Keyword'] = {
        ['fg'] = '05',
    },
    ['Label'] = {
        ['fg'] = '0A',
    },
    ['Number'] = {
        ['fg'] = '09',
    },
    ['Operator'] = {
        ['fg'] = '05',
    },
    ['PreProc'] = {
        ['fg'] = '0A',
    },
    ['Repeat'] = {
        ['fg'] = '0A',
    },
    ['Special'] = {
        ['fg'] = '0A',
    },
    ['SpecialChar'] = {
        ['fg'] = '0F',
    },
    ['Statement'] = {
        ['fg'] = '08',
    },
    ['StorageClass'] = {
        ['fg'] = '0A',
    },
    ['String'] = {
        ['fg'] = '0B',
    },
    ['Structure'] = {
        ['fg'] = '0E',
    },
    ['Tag'] = {
        ['fg'] = '0A',
    },
    ['Todo'] = {
        ['fg'] = '0A',
        ['bg'] = '01',
    },
    ['Type'] = {
        ['fg'] = '0A',
    },
    ['Typedef'] = {
        ['fg'] = '0A',
    },
    -- C
    ['cOperator'] = {
        ['fg'] = '0C',
    },
    ['cPreCondit'] = {
        ['fg'] = '0E',
    },
    -- C#
    ['csClass'] = {
        ['fg'] = '0A',
    },
    ['csAttribute'] = {
        ['fg'] = '0A',
    },
    ['csModifier'] = {
        ['fg'] = '0E',
    },
    ['csType'] = {
        ['fg'] = '08',
    },
    ['csUnspecifiedStatement'] = {
        ['fg'] = '0D',
    },
    ['csContextualStatement'] = {
        ['fg'] = '0E',
    },
    ['csNewDecleration'] = {
        ['fg'] = '08',
    },
    -- CSS
    ['cssBraces'] = {
        ['fg'] = '05',
    },
    ['cssClassName'] = {
        ['fg'] = '0E',
    },
    ['cssColor'] = {
        ['fg'] = '0C',
    },
    -- Diff
    ['DiffAdd'] = {
        ['fg'] = '0B',
        ['bg'] = '01',
    },
    ['DiffChange'] = {
        ['fg'] = '03',
        ['bg'] = '01',
    },
    ['DiffDelete'] = {
        ['fg'] = '08',
        ['bg'] = '01',
    },
    ['DiffText'] = {
        ['fg'] = '0D',
        ['bg'] = '01',
    },
    ['DiffAdded'] = {
        ['fg'] = '0B',
        ['bg'] = '00',
    },
    ['DiffFile'] = {
        ['fg'] = '08',
        ['bg'] = '00',
    },
    ['DiffNewFile'] = {
        ['fg'] = '0B',
        ['bg'] = '00',
    },
    ['DiffLine'] = {
        ['fg'] = '0D',
        ['bg'] = '00',
    },
    ['DiffRemoved'] = {
        ['fg'] = '08',
        ['bg'] = '00',
    },
    -- Docker
    ['dockerfileKeyword'] = {
        ['fg'] = '0E',
    },
    -- Git
    ['gitcommitOverflow'] = {
        ['fg'] = '08',
    },
    ['gitcommitSummary'] = {
        ['fg'] = '0B',
    },
    ['gitcommitComment'] = {
        ['fg'] = '03',
    },
    ['gitcommitUntracked'] = {
        ['fg'] = '03',
    },
    ['gitcommitDiscarded'] = {
        ['fg'] = '03',
    },
    ['gitcommitSelected'] = {
        ['fg'] = '03',
    },
    ['gitcommitHeader'] = {
        ['fg'] = '0E',
    },
    ['gitcommitSelectedType'] = {
        ['fg'] = '0D',
    },
    ['gitcommitUnmergedType'] = {
        ['fg'] = '0D',
    },
    ['gitcommitDiscardedType'] = {
        ['fg'] = '0D',
    },
    ['gitcommitBranch'] = {
        ['fg'] = '09',
        ['attr'] = 'bold',
    },
    ['gitcommitUntrackedFile'] = {
        ['fg'] = '0A',
    },
    ['gitcommitUnmergedFile'] = {
        ['fg'] = '08',
        ['attr'] = 'bold',
    },
    ['gitcommitDiscardedFile'] = {
        ['fg'] = '08',
        ['attr'] = 'bold',
    },
    ['gitcommitSelectedFile'] = {
        ['fg'] = '0B',
        ['attr'] = 'bold',
    },
    -- GitGutter
    ['GitGutterAdd'] = {
        ['fg'] = '0B',
        ['bg'] = '01',
    },
    ['GitGutterChange'] = {
        ['fg'] = '0D',
        ['bg'] = '01',
    },
    ['GitGutterDelete'] = {
        ['fg'] = '08',
        ['bg'] = '01',
    },
    ['GitGutterChangeDelete'] = {
        ['fg'] = '0E',
        ['bg'] = '01',
    },
    -- HTML
    ['htmlBold'] = {
        ['fg'] = '0A',
    },
    ['htmlItalic'] = {
        ['fg'] = '0E',
    },
    ['htmlEndTag'] = {
        ['fg'] = '05',
    },
    ['htmlTag'] = {
        ['fg'] = '05',
    },
    -- JavaScript
    ['javaScript'] = {
        ['fg'] = '05',
    },
    ['javaScriptBraces'] = {
        ['fg'] = '05',
    },
    ['javaScriptNumber'] = {
        ['fg'] = '09',
    },
    ['jsOperator'] = {
        ['fg'] = '0D',
    },
    ['jsStatement'] = {
        ['fg'] = '0E',
    },
    ['jsReturn'] = {
        ['fg'] = '08',
    },
    ['jsThis'] = {
        ['fg'] = '08',
    },
    ['jsClassDefinition'] = {
        ['fg'] = '0A',
    },
    ['jsFunction'] = {
        ['fg'] = '0E',
    },
    ['jsFuncName'] = {
        ['fg'] = '0D',
    },
    ['jsFuncCall'] = {
        ['fg'] = '0D',
    },
    ['jsClassFuncName'] = {
        ['fg'] = '0D',
    },
    ['jsClassMethodType'] = {
        ['fg'] = '0E',
    },
    ['jsRegexpString'] = {
        ['fg'] = '0C',
    },
    ['jsGlobalObjects'] = {
        ['fg'] = '0A',
    },
    ['jsGlobalNodeObjects'] = {
        ['fg'] = '0A',
    },
    ['jsExceptions'] = {
        ['fg'] = '0A',
    },
    ['jsBuiltins'] = {
        ['fg'] = '0A',
    },
    ['typescriptAliasKeyword'] = {
        ['fg'] = '0E',
    },
    ['typescriptEndColons'] = {
        ['fg'] = '05',
    },
    ['typescriptStorageClass'] = {
        ['fg'] = '0A',
    },
    ['IndentBlanklineChar'] = {
        fg = '02',
    },
    ['IndentLine'] = {
        fg = '02',
    },
    -- Mail
    ['mailQuoted1'] = {
        ['fg'] = '0A',
    },
    ['mailQuoted2'] = {
        ['fg'] = '0B',
    },
    ['mailQuoted3'] = {
        ['fg'] = '0E',
    },
    ['mailQuoted4'] = {
        ['fg'] = '0C',
    },
    ['mailQuoted5'] = {
        ['fg'] = '0D',
    },
    ['mailQuoted6'] = {
        ['fg'] = '0A',
    },
    ['mailURL'] = {
        ['fg'] = '0D',
    },
    ['mailEmail'] = {
        ['fg'] = '0D',
    },
    -- Markdown
    ['markdownCode'] = {
        ['fg'] = '0B',
    },
    ['markdownError'] = {
        ['fg'] = '05',
        ['bg'] = '00',
    },
    ['markdownCodeBlock'] = {
        ['fg'] = '0B',
    },
    ['markdownHeadingDelimiter'] = {
        ['fg'] = '0D',
    },
    -- NERDTree
    ['NERDTreeDirSlash'] = {
        ['fg'] = '0D',
    },
    ['NERDTreeExecFile'] = {
        ['fg'] = '05',
    },
    -- PHP
    ['phpMemberSelector'] = {
        ['fg'] = '05',
    },
    ['phpComparison'] = {
        ['fg'] = '05',
    },
    ['phpParent'] = {
        ['fg'] = '05',
    },
    ['phpMethodsVar'] = {
        ['fg'] = '0C',
    },
    -- Python
    ['pythonOperator'] = {
        ['fg'] = '0E',
    },
    ['pythonRepeat'] = {
        ['fg'] = '0E',
    },
    ['pythonInclude'] = {
        ['fg'] = '0E',
    },
    ['pythonStatement'] = {
        ['fg'] = '0E',
    },
    -- Ruby
    ['rubyAttribute'] = {
        ['fg'] = '0D',
    },
    ['rubyConstant'] = {
        ['fg'] = '0A',
    },
    ['rubyInterpolationDelimiter'] = {
        ['fg'] = '0F',
    },
    ['rubyRegexp'] = {
        ['fg'] = '0C',
    },
    ['rubySymbol'] = {
        ['fg'] = '0B',
    },
    ['rubyStringDelimiter'] = {
        ['fg'] = '0B',
    },
    -- SASS
    ['sassidChar'] = {
        ['fg'] = '08',
    },
    ['sassClassChar'] = {
        ['fg'] = '09',
    },
    ['sassInclude'] = {
        ['fg'] = '0E',
    },
    ['sassMixing'] = {
        ['fg'] = '0E',
    },
    ['sassMixinName'] = {
        ['fg'] = '0D',
    },
    -- Signify
    ['SignifySignAdd'] = {
        ['fg'] = '0B',
        ['bg'] = '01',
    },
    ['SignifySignChange'] = {
        ['fg'] = '0D',
        ['bg'] = '01',
    },
    ['SignifySignDelete'] = {
        ['fg'] = '08',
        ['bg'] = '01',
    },
    -- Spelling
    ['SpellBad'] = {
        ['attr'] = 'undercurl',
        ['guisp'] = '08',
    },
    ['SpellLocal'] = {
        ['attr'] = 'undercurl',
        ['guisp'] = '0C',
    },
    ['SpellCap'] = {
        ['attr'] = 'undercurl',
        ['guisp'] = '0D',
    },
    ['SpellRare'] = {
        ['attr'] = 'undercurl',
        ['guisp'] = '0E',
    },
    -- Startify
    ['StartifyBracket'] = {
        ['fg'] = '03',
    },
    ['StartifyFile'] = {
        ['fg'] = '07',
    },
    ['StartifyFooter'] = {
        ['fg'] = '03',
    },
    ['StartifyHeader'] = {
        ['fg'] = '0B',
    },
    ['StartifyNumber'] = {
        ['fg'] = '09',
    },
    ['StartifyPath'] = {
        ['fg'] = '03',
    },
    ['StartifySection'] = {
        ['fg'] = '0E',
    },
    ['StartifySelect'] = {
        ['fg'] = '0C',
    },
    ['StartifySlash'] = {
        ['fg'] = '03',
    },
    ['StartifySpecial'] = {
        ['fg'] = '03',
    },
    ['javaOperator'] = {
        ['fg'] = '0D',
    },
    -- Treesitter
    ['TSFunction'] = {
        ['fg'] = '05',
    },
    ['TSConstant'] = {
        ['fg'] = '05',
    },
    ['TSConstructor'] = {
        ['fg'] = '05',
    },
    ['TSConditional'] = {
        ['fg'] = '0E',
    },
    ['TSNumber'] = {
        ['fg'] = '09',
    },
    ['TSOperator'] = {
        ['fg'] = '05',
    },
    ['TSParameter'] = {
        ['fg'] = '05',
    },
    ['TSParameterReference'] = {
        ['fg'] = '05',
    },
    ['TSProperty'] = {
        ['fg'] = '05',
    },
    ['TSField'] = {
        ['fg'] = '05',
    },
    ['TSPunctDelimiter'] = {
        ['fg'] = '05',
    },
    ['TSPunctBracket'] = {
        ['fg'] = '0D',
    },
    ['TSPunctSpecial'] = {
        ['fg'] = '05',
    },
    ['TSRepeat'] = {
        ['fg'] = '0A',
    },
    ['TSString'] = {
        ['fg'] = '0B',
    },
    ['TSType'] = {
        ['fg'] = '05',
    },
    ['TSTypeBuiltin'] = {
        ['fg'] = '05',
    },
    ['TSVariable'] = {
        ['fg'] = '05',
    },
    ['TSVariableBuiltin'] = {
        ['fg'] = '0A',
    },
    ['TSFloat'] = {
        ['fg'] = '09',
    },
    ['TSKeyword'] = {
        ['fg'] = '0A',
    },
    ['TSKeywordOperator'] = {
        ['fg'] = '0F',
    },
    ['TSKeywordFunction'] = {
        ['fg'] = '0E',
    },
    ['TSKeywordReturn'] = {
        ['fg'] = '08',
        ['attr'] = 'bold',
    },
    ['TSMethod'] = {
        ['fg'] = '05',
    },
    ['TSNamespace'] = {
        ['fg'] = '05',
    },
    ['TSException'] = {
        ['fg'] = '0C',
    },
    ['TSInclude'] = {
        ['fg'] = '0E',
    },
    ['TSTag'] = {
        ['fg'] = '0D',
    },
    ['TSTagCustom'] = {
        ['fg'] = '0D',
    },
    ['TSTagDelimiter'] = {
        ['fg'] = '0D',
    },
    ['TSTagAttribute'] = {
        ['fg'] = '0A',
    },
    ['TSStatement'] = {
        ['fg'] = '0A',
    },
    ['TSError'] = {
        ['fg'] = '08',
    },
    -- AI Suggestions
    ['AISuggestion'] = {
        ['fg'] = '02',
    },
    ['CopilotAnnotation'] = {
        ['fg'] = '02',
    },
    ['CopilotSuggestion'] = {
        ['fg'] = '02',
    },
    -- Treesitter 0.8 or newer
    ['@function'] = { link = 'TSFunction' },
    -- ["@conceal"] = {link = "Conceal"},
    ['@constant'] = { link = 'TSConstant' },
    ['@constructor'] = { link = 'TSConstructor' },
    ['@conditional'] = { link = 'TSConditional' },
    ['@number'] = { link = 'TSNumber' },
    ['@operator'] = { link = 'TSOperator' },
    ['@parameter'] = { link = 'TSParameter' },
    ['@parameter.reference'] = { link = 'TSParameterReference' },
    ['@property'] = { link = 'TSProperty' },
    ['@field'] = { link = 'TSField' },
    ['@punctuation.delimiter'] = { link = 'TSPunctDelimiter' },
    ['@punctuation.delimiter.markdown'] = { link = 'Delimiter' },
    ['@punctuation.bracket'] = { link = 'TSPunctBracket' },
    ['@punctuation.special'] = { link = 'TSPunctSpecial' },
    ['@repeat'] = { link = 'TSRepeat' },
    ['@string'] = { link = 'TSString' },
    ['@string.special.url'] = { link = 'TSString' },
    -- ["@spell"] = {link = "Underlined"},
    ['@type'] = { link = 'TSType' },
    ['@text.todo'] = { link = 'Normal' },
    ['@type.builtin'] = { link = 'TSTypeBuiltin' },
    ['@variable'] = { link = 'TSVariable' },
    ['@variable.builtin'] = { link = 'TSVariableBuiltin' },
    ['@float'] = { link = 'TSFloat' },
    ['@keyword'] = { link = 'TSKeyword' },
    ['@keyword.conditional'] = { link = 'Conditional' },
    ['@keyword.conditional.tsx'] = { link = 'Conditional' },
    ['@keyword.operator'] = { link = 'TSKeywordOperator' },
    ['@keyword.function'] = { link = 'TSKeywordFunction' },
    ['@keyword.return'] = { link = 'TSKeywordReturn' },
    ['@markup.strikethrough'] = { link = 'Conceal' },
    ['@method'] = { link = 'TSMethod' },
    ['@namespace'] = { link = 'TSNamespace' },
    ['@exception'] = { link = 'TSException' },
    ['@include'] = { link = 'TSInclude' },
    ['@text.title'] = { link = 'Title' },
    ['@text.literal'] = { link = 'String' },
    ['@text.strong'] = { link = 'Bold' },
    ['@text.strike'] = { link = 'Comment' },
    ['@text.quote'] = { fg = '04' },
    ['@text.emphasis'] = { link = 'Italic' },
    ['@text.uri'] = { link = 'String' },
    ['@text.reference'] = { fg = '08' },
    ['@tag'] = { link = 'TSTag' },
    ['@tag.builtin'] = { link = 'TSTag' },
    ['@tag.custom'] = { link = 'TSTagCustom' },
    ['@tag.delimiter'] = { link = 'TSTagDelimiter' },
    ['@tag.attribute'] = { link = 'TSTagAttribute' },
    ['@statement'] = { link = 'TSStatement' },
    ['@error'] = { link = 'TSError' },
    ['@label'] = { link = 'Normal' },
    ['@markup.heading'] = { link = 'Title' },
    ['@markup.italic'] = { link = 'Italic' },
    ['@markup.link'] = { link = 'Normal' },
    ['@markup.link.label'] = { fg = '08' },
    ['@markup.link.url'] = { link = 'String' },
    ['@markup.list'] = { link = 'Normal' },
    ['@markup.quote'] = { link = '@text.quote' },
    ['@markup.raw'] = { link = 'String' },
    ['@markup.raw.block'] = { link = 'Normal' },
    ['@markup.raw.delimeter'] = { link = 'Normal' },
    ['@markup.strong'] = { link = 'Bold' },
}

for group, settings in pairs(groups) do
    local opts = {}
    if settings.fg ~= nil then
        opts.fg = theme[settings.fg].gui
        opts.ctermfg = theme[settings.fg].cterm
    end
    if settings.bg ~= nil then
        opts.bg = theme[settings.bg].gui
        opts.ctermbg = theme[settings.bg].cterm
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
