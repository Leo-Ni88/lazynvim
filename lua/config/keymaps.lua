-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Exit insert mode
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Del keymaps with <ctrl> hjkl keys
vim.keymap.del("n", "<C-h>", { desc = "Go to left window", remap = true })
vim.keymap.del("n", "<C-j>", { desc = "Go to lower window", remap = true })
vim.keymap.del("n", "<C-k>", { desc = "Go to upper window", remap = true })
vim.keymap.del("n", "<C-l>", { desc = "Go to right window", remap = true })

vim.keymap.del("t", "<C-h>", { desc = "Go to left window" })
vim.keymap.del("t", "<C-j>", { desc = "Go to lower window" })
vim.keymap.del("t", "<C-k>", { desc = "Go to upper window" })
vim.keymap.del("t", "<C-l>", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
map("n", "<S-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-TAB>", "<CMD>bprevious<CR>", { desc = "Prev buffer" })
map("n", "<leader>bd", "<CMD>bdelete<CR>", { desc = "Delete buffer" })

-- quit
map("n", "<leader>q", "<CMD>q<CR>", { desc = "Quit current buffer" })
map("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Quit all files" })

-- save file
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save current file" })
map("n", "<leader>w", "<cmd>w<cr><esc>", { desc = "Save current file" })
map("n", "<leader>W", "<cmd>wa<cr><esc>", { desc = "Save all files" })

-- Save and Quit
map("n", "<leader>wq", "<CMD>wq<CR>", { desc = "Save and quit" })

-- Search word under cursor
map({ "n", "x" }, "sw", "*N", { desc = "Search word under cursor" })

--
map("n", "<leader>bs", "<CMD>BufferLinePick<CR>", { desc = "Buffer select" })

-- clangformat
map('', '<leader>mm', ':py3f /home/leo/workspace/github/clang/tools/clang-format/clang-format.py<CR>')
