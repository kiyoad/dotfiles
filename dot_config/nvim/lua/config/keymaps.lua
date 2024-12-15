-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 挿入モードで "jj" を <esc> にマッピング（サイレント実行）
vim.keymap.set("i", "jj", "<esc>", { noremap = true, silent = true })

-- skkeleton
vim.keymap.set({ "i", "c" }, "<C-j>", [[<Plug>(skkeleton-toggle)]], { noremap = false })
--[[
 SKK keybindings
 (insert mode)CTRL-j : 全角ひらがな入力
 (Insert mode(SKK))q : 全角カタカナ<->全角ひらがな
 (Insert mode(SKK))CTRL-q : 半角カタカナ<->全角ひらがな
 (Insert mode(SKK))L : 全角英数入力(CTRL-j で戻る)
 (Insert mode(SKK))l : 半角英数入力(insert mode)に戻る
 (Insert mode(SKK:SHIFTで入力開始))SPACE : 変換
 (Insert mode(SKK:SHIFTで入力開始))CTRL-j : 確定
 (Insert mode(SKK:SHIFTで入力開始))CTRL-g : 入力キャンセル
 (Insert mode(SKK:SHIFTで入力開始))q : 全角ひらがなで入力していたら全角カタカナに変換する
 (Insert mode(SKK:変換中))x : 変換候補を戻る
 (Insert mode(SKK:変換中))CTRL-g : 変換中止
--]]
