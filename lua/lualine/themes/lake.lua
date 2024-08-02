local t = require('lake').colors_default

return {
    inactive = {
        a = { fg = t.c04, bg = t.c01 },
        b = { fg = t.c04, bg = t.c01 },
        c = { fg = t.c04, bg = t.c01 },
        x = { fg = t.c04, bg = t.c01 },
        y = { fg = t.c04, bg = t.c01 },
        z = { fg = t.c04, bg = t.c01 },
    },
    normal = {
        a = { fg = t.c00, bg = t.c0B, gui = 'bold' },
        b = { fg = t.c04, bg = t.c01 },
        c = { fg = t.c03, bg = t.c00 },
        x = { fg = t.c04, bg = t.c00 },
        y = { fg = t.c04, bg = t.c00 },
        z = { fg = t.c04, bg = t.c00 },
    },
    insert = {
        a = { fg = t.c00, bg = t.c0D, gui = 'bold' },
    },
    replace = {
        a = { fg = t.c00, bg = t.c08 },
    },
    visual = {
        a = { fg = t.c00, bg = t.c0E, gui = 'bold' },
    },
}
