local status, load = pcall(require, "plugin-config.comment")

-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
        toggler = {
          ---Line-comment toggle keymap
          line = '<leader>/',
          ---Block-comment toggle keymap
          block = '<leader>bc',
        },
        opleader = {
          ---Line-comment keymap
          line = '<leader>/',
          ---Block-comment toggle keymap
          block = '<leader>bc',
        },
    },
    lazy = false,
}
