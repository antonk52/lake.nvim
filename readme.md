# Lake.nvim

A simplified version of the ocean color scheme with [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) and [lualine](https://github.com/nvim-lualine/lualine.nvim) support.

<img alt="lake.nvim colorscheme" src="https://user-images.githubusercontent.com/5817809/124399388-ca25c980-dd23-11eb-8ede-361bcb5415db.png">

Palette colors can be accessed via `require('lake').theme`

## Install

```lua
require('lazy').setup({
  {

    'antonk52/lake.nvim'
    config = function()
      vim.cmd.color('lake')

      -- Alternatively enable contrast version with
      vim.cmd.color('lake_contrast')
    end,
  }
})
```

## Acknowledgments

- Initially started as a fork of ocean theme from [base16 project](https://github.com/chriskempson/base16-vim)
- Heavily inspired by [spacegray](https://github.com/SublimeText/Spacegray) sublime text theme
