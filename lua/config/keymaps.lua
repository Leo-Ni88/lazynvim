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
map("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Quit all" })
map("n", "<leader>qq", "<CMD>q<CR>", { desc = "Quit current buffer" })

-- save file
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map({ "i", "v", "n", "s" }, "<C-s>a", "<cmd>wa<cr><esc>", { desc = "Save all file" })

-- Save and Quit
map("n", "<leader>wq", "<CMD>wq<CR>", { desc = "Save and quit" })

-- Search word under cursor
map({ "n", "x" }, "sw", "*N", { desc = "Search word under cursor" })

-- Lspsaga
map("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", { desc = "Find the symbol's definition" })
map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek definition" })
map("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "Go to definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>", { desc = "Peek type definition" })
map("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>", { desc = "Go to type definition" })
map("n", "go", "<cmd>Lspsaga outline<CR>", { desc = "Toggle outline" })
map({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Code action" })
map(
  "n",
  "<leader>rn",
  "<cmd>Lspsaga rename<CR>",
  { desc = "Rename all occurrences of the hovered word for the entire file" }
)
map(
  "n",
  "<leader>rn",
  "<cmd>Lspsaga rename ++project<CR>",
  { desc = "Rename all occurrences of the hovered word for the selected files" }
)

-- lspsaga
map("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>", { desc = "Incoming calls" })
map("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>", { desc = "Outgoing calls" })
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover doc" })
map("n", "K", "<cmd>Lspsaga hover_doc ++keep<CR>", { desc = "Hover doc(keep window)" })
map({ "n", "t" }, "<Leader>T", "<cmd>Lspsaga term_toggle<CR>", { desc = "Floating terminal" })
map("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", { desc = "Show line diagnostics" })
map("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { desc = "Show cursor diagnostics" })
map("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>", { desc = "Show buffer diagnostics" })
map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Diagnostic jump to prev" })
map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Diagnostic jump to next" })
map("n", "<C-,>", function()
  require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Diagnostic jump prev" })
map("n", "<C-.>", function()
  require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Diagnostic jump next" })
