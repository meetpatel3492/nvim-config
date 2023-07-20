local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
vim.keymap.set('n', '<leader>hh', builtin.keymaps, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>qf', builtin.quickfix, {})
vim.keymap.set('n', '<leader>vsh', builtin.search_history, {})
vim.keymap.set('n', '<leader>vch', builtin.command_history, {})
