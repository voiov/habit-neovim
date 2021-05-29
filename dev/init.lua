package.loaded['habit']=nil
package.loaded['habit.keymappings']=nil
package.loaded['habit.settings']=nil

-- shorkey r reload plugin,and clear previous 
vim.api.nvim_set_keymap('n','<leader>r','<cmd>luafile dev/init.lua<cr>',{})

Habit = require"habit"
vim.api.nvim_set_keymap('n','<leader>ww','<cmd>lua print(Habit.date())<cr>',{})
