local M = {}

M.theme_default = {
    color00 = '#2b303b',
    color01 = '#343d46',
    color02 = '#4f5b66',
    color03 = '#65737e',
    color04 = '#a7adba',
    color05 = '#c0c5ce',
    color06 = '#dfe1e8',
    color07 = '#eff1f5',
    color08 = '#bf616a',
    color09 = '#d08770',
    color0A = '#ebcb8b',
    color0B = '#a3be8c',
    color0C = '#96b5b4',
    color0D = '#8fa1b3',
    color0E = '#b48ead',
    color0F = '#ab7967',
}

M.theme_contrast = {
    color00 = '#272b35',
    color01 = '#2f373f',
    color02 = '#47525c',
    color03 = '#6f7f8b',
    color04 = '#a7adba',
    color05 = '#d3d9e3',
    color06 = '#f5f7ff',
    color07 = '#ffffff',
    color08 = '#d26a74',
    color09 = '#e5957b',
    color0A = '#ffdf99',
    color0B = '#b3d19a',
    color0C = '#a5c7c6',
    color0D = '#9db1c5',
    color0E = '#c69cbe',
    color0F = '#bc8571',
}

M.config = {
    ---@type 'theme_default' | 'theme_contrast'
    theme = 'theme_default',
}

---@param name 'default' | 'contrast'
function M.set_theme_name(name)
    M.config.theme = 'theme_'..name
end

function M.get_theme()
    local t = M[M.config.theme] or M.theme_default
    ---@class THEME
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
    return theme
end

return M
