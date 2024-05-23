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
    Normal = {
        fg = '05',
        bg = '00',
    },
    NormalNC = { link = 'ColorColumn' },
    NormalFloat = { link = 'Normal' },
    Bold = {
        attr = 'bold',
    },
    Debug = {
        fg = '08',
    },
    Directory = {
        fg = '0D',
    },
    Error = {
        fg = '00',
        bg = '08',
    },
    ErrorMsg = {
        fg = '08',
        bg = '00',
    },
    Exception = {
        fg = '08',
    },
    FoldColumn = {
        fg = '0C',
        bg = '01',
    },
    Folded = {
        fg = '03',
        bg = '01',
    },
    IncSearch = {
        fg = '01',
        bg = '09',
    },
    Italic = {
        italic = true,
    },
    Macro = {
        fg = '05',
    },
    MatchParen = {
        bg = '03',
    },
    ModeMsg = {
        fg = '0B',
    },
    MoreMsg = {
        fg = '0B',
    },
    Question = {
        fg = '0D',
    },
    Search = {
        fg = '01',
        bg = '0A',
    },
    Substitute = {
        fg = '01',
        bg = '0A',
    },
    SpecialKey = {
        fg = '03',
    },
    TooLong = {
        fg = '08',
    },
    Underlined = {
        fg = '08',
    },
    Visual = {
        bg = '02',
    },
    VisualNOS = {
        fg = '08',
    },
    WarningMsg = {
        fg = '08',
    },
    WildMenu = {
        fg = '08',
        bg = '0A',
    },
    WinSeparator = {
        fg = '02',
    },
    Title = {
        fg = '0D',
    },
    Conceal = {
        fg = '0D',
        bg = '00',
    },
    Cursor = {
        fg = '00',
        bg = '05',
    },
    NonText = {
        fg = '03',
    },
    LineNr = {
        fg = '03',
        bg = '01',
    },
    SignColumn = {
        fg = '03',
        bg = '01',
    },
    StatusLine = {
        fg = '04',
        bg = '02',
    },
    StatusLineNC = {
        fg = '03',
        bg = '01',
    },
    VertSplit = {
        fg = '02',
        bg = '02',
    },
    ColorColumn = {
        bg = '01',
    },
    CursorColumn = {
        bg = '01',
    },
    CursorLine = {
        bg = '01',
    },
    CursorLineNr = {
        fg = '04',
        bg = '01',
    },
    QuickFixLine = {
        bg = '01',
    },
    PMenu = {
        fg = '05',
        bg = '01',
    },
    PMenuSel = {
        fg = '01',
        bg = '05',
    },
    TabLine = {
        fg = '03',
        bg = '01',
    },
    TabLineFill = {
        fg = '03',
        bg = '01',
    },
    TabLineSel = {
        fg = '0B',
        bg = '01',
    },
    DiagnosticInfo = {
        fg = '0C',
    },
    DiagnosticHint = {
        fg = '0C',
    },
    DiagnosticWarn = {
        fg = '0A',
    },
    DiagnosticError = {
        fg = '08',
    },
    DiagnosticOk = {
        fg = '0B',
    },
    -- Builtin
    Boolean = {
        fg = '09',
    },
    Character = {
        fg = '08',
    },
    Comment = {
        fg = '03',
    },
    Conditional = {
        fg = '0E',
    },
    Constant = {
        fg = '05',
    },
    Define = {
        fg = '0E',
    },
    Delimiter = {
        fg = '0F',
    },
    Float = {
        fg = '09',
    },
    Function = {
        fg = '0D',
    },
    Identifier = {
        fg = '05',
    },
    Include = {
        fg = '0D',
    },
    Keyword = {
        fg = '05',
    },
    Label = {
        fg = '0A',
    },
    Number = {
        fg = '09',
    },
    Operator = {
        fg = '05',
    },
    PreProc = {
        fg = '0A',
    },
    Repeat = {
        fg = '0A',
    },
    Special = {
        fg = '0A',
    },
    SpecialChar = {
        fg = '0F',
    },
    Statement = {
        fg = '08',
    },
    StorageClass = {
        fg = '0A',
    },
    String = {
        fg = '0B',
    },
    Structure = {
        fg = '0E',
    },
    Tag = {
        fg = '0A',
    },
    Todo = {
        fg = '0A',
        bg = '01',
    },
    Type = {
        fg = '0A',
    },
    Typedef = {
        fg = '0A',
    },

    -- AI Suggestions
    AISuggestion = {
        fg = '02',
    },
    CopilotAnnotation = {
        fg = '02',
    },
    CopilotSuggestion = {
        fg = '02',
    },

    -- Treesitter 0.8 or newer
    ['@function'] = { fg = '05' },
    -- ["@conceal"] = {link = "Conceal"},
    ['@constant'] = { link = 'Constant' },
    ['@constructor'] = { fg = '05' },
    ['@conditional'] = { link = 'Conditional' },
    ['@number'] = { link = 'Number' },
    ['@operator'] = { fg = '05', },
    ['@parameter'] = { fg = '05', },
    ['@parameter.reference'] = { fg = '05' },
    ['@property'] = { fg = '05' },
    ['@field'] = { fg = '05' },
    ['@punctuation.delimiter'] = { fg = '05' },
    ['@punctuation.delimiter.markdown'] = { link = 'Delimiter' },
    ['@punctuation.bracket'] = { fg = '0D' },
    ['@punctuation.special'] = { fg = '05' },
    ['@repeat'] = { fg = '0A' },
    ['@string'] = { link = 'String' },
    ['@string.special.url'] = { link = 'String' },
    -- ["@spell"] = {link = "Underlined"},
    ['@type'] = { fg = '05' },
    ['@text.todo'] = { link = 'Normal' },
    ['@type.builtin'] = { fg = '05' },
    ['@variable'] = { fg = '05' },
    ['@variable.builtin'] =  { fg = '0A' },
    ['@float'] = { fg = '09' },
    ['@keyword'] = { fg = '0A' },
    ['@keyword.conditional'] = { link = 'Conditional' },
    ['@keyword.conditional.tsx'] = { link = 'Conditional' },
    ['@keyword.operator'] = { fg = '0F' },
    ['@keyword.function'] = { fg = '0E' },
    ['@keyword.return'] =  { fg = '08', attr = 'bold' },
    ['@markup.strikethrough'] = { link = 'Conceal' },
    ['@method'] = { fg = '05' },
    ['@namespace'] =  { fg = '05' },
    ['@exception'] = { fg = '0C' },
    ['@include'] = { fg = '0E' },
    ['@text.title'] = { link = 'Title' },
    ['@text.literal'] = { link = 'String' },
    ['@text.strong'] = { link = 'Bold' },
    ['@text.strike'] = { link = 'Comment' },
    ['@text.quote'] = { fg = '04' },
    ['@text.emphasis'] = { link = 'Italic' },
    ['@text.uri'] = { link = 'String' },
    ['@text.reference'] = { fg = '08' },
    ['@tag'] = { fg = '0D' },
    ['@tag.builtin'] = { link = '@tag' },
    ['@tag.custom'] = { fg = '0D' },
    ['@tag.delimiter'] = { fg = '0D' },
    ['@tag.attribute'] = { fg = '0A' },
    ['@statement'] = { fg = '0A' },
    ['@error'] = { fg = '08' },
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
