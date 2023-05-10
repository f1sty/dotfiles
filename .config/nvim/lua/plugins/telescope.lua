require("telescope").setup {
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}
require("telescope").load_extension("fzf")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<c-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>ts", function()
    builtin.grep_string({ search = vim.fn.input("grep> ") })
end)
vim.keymap.set("n", "<leader>tf", builtin.git_files, {})
vim.keymap.set("n", "<leader>tq", builtin.quickfix, {})
vim.keymap.set("n", "<leader>tc", builtin.colorscheme, {})
vim.keymap.set("n", "<leader>tg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>tb", builtin.buffers, {})
vim.keymap.set("n", "<leader>th", builtin.help_tags, {})
