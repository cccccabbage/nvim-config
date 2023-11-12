-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

-- keymap
local builtin = require('telescope.builtin')
local opt = function(desc)
    return {
        noremap = true,
        silent = true,
        desc = desc
    }
end
vim.keymap.set('n', '<C-p>', builtin.find_files, opt("search file"))
vim.keymap.set('n', '<leader><C-p>', builtin.live_grep, opt("search all"))
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
