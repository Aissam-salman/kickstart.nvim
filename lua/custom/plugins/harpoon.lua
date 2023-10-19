-- buffer navigation & mark
return {
    'ThePrimeagen/harpoon',
    lazy = false,
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
        require('harpoon').setup()

        local mark = require 'harpoon.mark'
        local ui = require 'harpoon.ui'


        vim.keymap.set('n', '<leader>h', function()
            mark.add_file()
            print 'Marked current file.'
        end)

        vim.keymap.set('n', '<leader>jj', ui.toggle_quick_menu)
        vim.keymap.set('n', '<leader>jk', function() ui.nav_next() end)
        vim.keymap.set('n', '<leader>jl', function() ui.nav_prev() end)

        vim.keymap.set('n', "<C-h>", function() ui.nav_file(1) end)
        vim.keymap.set('n', "<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set('n', "<C-n>", function() ui.nav_file(3) end)
        vim.keymap.set('n', "<C-s>", function() ui.nav_file(4) end)
    end,
}
