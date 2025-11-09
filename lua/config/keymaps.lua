-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local modes = { "n", "i", "v" }
local keys = { "<Up>", "<Down>", "<Left>", "<Right>" }
for _, mode in ipairs(modes) do
  for _, key in ipairs(keys) do
    vim.keymap.set(mode, key, "<Nop>")
  end
end
