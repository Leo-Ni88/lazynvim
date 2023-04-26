return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = true,
    enable_git_status = false,
    enable_diagnostics = false,
    filesystem = {
      follow_current_file = true,
    },
    buffers = {
      follow_current_file = true,
    },
  },
  keys = {
    { "<leader>ee", "<CMD>Neotree toggle<CR>" },
    { "<leader>eo", "<CMD>Neotree focus<CR>" },
    { "<leader>es", "<CMD>Neotree show<CR>" },
    { "<leader>ef", "<CMD>Neotree float<CR>" },
    { "<leader>el", "<CMD>Neotree left<CR>" },
    { "<leader>er", "<CMD>Neotree right<CR>" },
    { "<leader>e", "<CMD>Neotree toggle<CR>", desc = "Explorer NeoTree (root dir)", remap = true },
  },
}
