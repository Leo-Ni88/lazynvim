local Util = require("lazyvim.util")

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
        },
        layout_strategy = "horizontal", -- center/horizontal ..
        layout_config = {
          height = 0.90,
          width = 0.90,
          mirror = false,
          prompt_position = "bottom",
        },
      },
      pickers = {
        find_files = {
          -- find_command = { "fd", "-I", "-s" },
          hidden = true,
          no_ignore = true,
        },
        live_grep = {
          additional_args = {
            "--max-columns=150",
            "--max-columns-preview",
            "--no-ignore",
            "--glob=!.git/*",
            "--colors=line:none",
            "--colors=line:style:bold",
            "--smart-case",
          },
        },
        grep_string = {
          additional_args = {
            "--max-columns=150",
            "--max-columns-preview",
            "--no-ignore",
            "--glob=!.git/*",
            "--colors=line:none",
            "--colors=line:style:bold",
            "--smart-case",
          },
          use_regex = true,
        },
      },
    },
    keys = {
      { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Live grep (root dir)" },
      { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
    },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    opts = {
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        },
      },
    },
  },
}
