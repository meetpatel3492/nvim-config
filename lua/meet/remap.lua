vim.g.mapleader = " "

--- netrw, file sys navigation ---
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)



vim.keymap.set("n", "<C-s>", vim.cmd.w)
---vim.keymap.set("n", "<C-S>", vim.cmd.wq)
vim.keymap.set("n", "<C-x>", function()
    vim.cmd("q!")
end)

--- move lines in visual mode ---
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--- to append the line and keep cursor at home ---
vim.keymap.set("n", "J", "mzJ`z")

--- to navigate half page up and down ---
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--- to keep serach term in middle ---
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- keeps previously yanked buffer even after selecting and pasting over new text ---
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever, separate clipboard for vim and system ---
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--- to delete in void register and not affect yanked buffer ---
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is weird ---
vim.keymap.set("i", "<C-c>", "<Esc>")

--- never, I said never ---
vim.keymap.set("n", "Q", "<nop>")
--- good ol format ---
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)


--- quick fix navigation ---
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--- prompts for replace on selected text ---
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--- makes file executable ---
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>GS", function()
    vim.cmd("!git status")
end)

vim.keymap.set("n", "<leader>GB", function()
    vim.cmd("!git branch")
end)
