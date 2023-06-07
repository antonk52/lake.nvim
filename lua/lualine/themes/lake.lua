local t = require('lake').theme

return {
    inactive = {
        a = { fg = t.color04, bg = t.color01 },
        b = { fg = t.color04, bg = t.color01 },
        c = { fg = t.color04, bg = t.color01 },
        x = { fg = t.color04, bg = t.color01 },
        y = { fg = t.color04, bg = t.color01 },
        z = { fg = t.color04, bg = t.color01 },
    },
    normal = {
        a = { fg = t.color00, bg = t.color0B, gui = 'bold' },
        b = { fg = t.color04, bg = t.color01 },
        c = { fg = t.color03, bg = t.color00 },
        x = { fg = t.color04, bg = t.color00 },
        y = { fg = t.color04, bg = t.color00 },
        z = { fg = t.color04, bg = t.color00 },
    },
    insert = {
        a = { fg = t.color00, bg = t.color0D, gui = 'bold' },
    },
    replace = {
        a = { fg = t.color00, bg = t.color08 },
    },
    visual = {
        a = { fg = t.color00, bg = t.color0E, gui = 'bold' },
    },
}
