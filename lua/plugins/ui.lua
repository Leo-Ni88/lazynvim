return {
  -- Colorschema
  { "rebelot/kanagawa.nvim", lazy = true },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },

  -- Background Transparent
  {
    "xiyaowong/nvim-transparent",
    opts = {
      extra_groups = {
        -- make buffline transparent
        "BufferlineBuffer",
        "BufferlineBufferSelected",
        "BufferlineBufferVisible",
        "BufferLineSeparator",
        "BufferLineSeparatorSelected",
        "BufferLineSeparatorVisible",
        "BufferLineNumbers",
        "BufferLineNumbersSelected",
        "BufferLineNumbersVisible",
        "BufferLineCloseButton",
        "BufferLineCloseButtonSelected",
        "BufferLineCloseButtonVisible",
        "BufferLineModifiedSelected",
        "BufferLineModifiedVisible",
        "BufferLineModified",
        "BufferLineIndicatorSelected",
        "BufferLineIndicatorVisible",
        "BufferLineBackground",
        "BufferLineTab",
        "BufferLineTabClose",
        "BufferLineTabSelected",
        "BufferLineTabSeparator",
        "BufferLineTabSeparatorSelected",
        "BufferLineFill",
        "BufferLineGroupSeparator",
        "BufferLineDevIconLua",
        "BufferLineDevIconLuaInactive",
        "BufferLineDevIconLuaSelected",

        "OutlinePreviewNormal",
        "IndentBlanklineChar",

        -- lspsaga group
        "SagaShadow",
        "SagaCollapse",
        "SagaBorder",
        "SagaNormal",
        "SagaExpand",
        "SagaWinbarArray",
        "SagaWinbarFileIcon",
        "SagaWinbarUnitNeoTreeFloatNormal",

        -- make floating windows transparent
        "LspFloatWinNormal",
        "Normal",
        "NormalFloat",
        "FloatBorder",
        "FloatTitle",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptBorder",

        -- Signs
        "GitSignsDelete",
        "GitSignsChange",
        "GitSignsAdd",
        "DiagnosticSignError",
        "DiagnosticSignWarn",
        "DiagnosticSignInfo",
        "DiagnosticSignHint",
        "DiagnosticSignOk",
      },
      exclude_groups = {},
    },
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    version = "v3.*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        numbers = "ordinal", --"none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        diagnostics = "false", -- false | "nvim_lsp" | "coc"
        diagnostics_update_in_insert = false,
        offsets = { { filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "left" } },
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = false, -- whether or not custom sorted buffers should persist
        separator_style = "slant", -- "slant" | "thick" | "thin" | { 'any', 'any' }
        always_show_bufferline = true,
      },
    },
  },

  -- Noice: replaces the UI for messages, cmdline and the popupmenu
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        bottom_search = false,
      },
      cmdline = {
        format = {
          search_up = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
          search_down = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
        },
      },
    },
  },
}
