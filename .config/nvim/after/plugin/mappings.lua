local wk = require("which-key")

wk.add({
    ------------------------------------------------------------------------------
    -- SPLIT & JOIN (TSJ)
    ------------------------------------------------------------------------------
    { "<leader>ts",  "<cmd>TSJSplit<cr>",                       desc = "Split block into multiple lines" },
    { "<leader>tj",  "<cmd>TSJJoin<cr>",                        desc = "Join block into one line" },

    ------------------------------------------------------------------------------
    -- FILE & TEXT SEARCHING (Telescope)
    ------------------------------------------------------------------------------
    { "<leader>ff",  "<cmd>Telescope find_files<cr>",          desc = "Find files" },
    { "<leader>fg",  "<cmd>Telescope live_grep<cr>",           desc = "Search text in files" },
    { "<leader>fb",  "<cmd>Telescope buffers<cr>",             desc = "List open buffers" },
    { "<leader>fh",  "<cmd>Telescope help_tags<cr>",           desc = "Search help tags" },
    { "<leader>fm",  "<cmd>Telescope media_files<cr>",         desc = "Search media files" },
    { "<leader>fbr", "<cmd>Telescope file_browser<cr>",        desc = "Open file browser" },
    { "<leader>fp",  "<cmd>Telescope project<cr>",             desc = "Search projects" },
    { "<leader>fo",  "<cmd>Telescope oldfiles<cr>",            desc = "Recently opened files" },
    { "<leader>fk",  "<cmd>Telescope keymaps<cr>",             desc = "Show key mappings" },
    { "<leader>fq",  "<cmd>Telescope quickfix<cr>",            desc = "Show quickfix list" },
    { "<leader>fl",  "<cmd>Telescope loclist<cr>",             desc = "Show location list" },

    -- Search in config
    { "<leader>fc",  "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", desc = "Search in config files" },

    -- Diagnostics & LSP references
    { "<leader>fd",  "<cmd>Telescope diagnostics<cr>",         desc = "Show diagnostics" },
    { "<leader>fr",  "<cmd>Telescope lsp_references<cr>",      desc = "Show LSP references" },

    -- Command/Buffer History
    { "<leader>fhc", "<cmd>Telescope command_history<cr>",     desc = "Show command history" },
    { "<leader>fhb", "<cmd>Telescope buffer_history<cr>",      desc = "Show buffer history" },

    -- Registers
    { "<leader>frg", "<cmd>Telescope registers<cr>",           desc = "Show registers" },

    -- Another config alias
    { "<leader>fvc", "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", desc = "Search Neovim config" },

    ------------------------------------------------------------------------------
    -- GIT (Telescope + GitSigns)
    ------------------------------------------------------------------------------
    { "<leader>gs",  "<cmd>Telescope git_status<cr>",          desc = "Git status" },
    { "<leader>gb",  "<cmd>Telescope git_branches<cr>",        desc = "Git branches" },
    { "<leader>gc",  "<cmd>Telescope git_commits<cr>",         desc = "Git commits" },
    { "<leader>gf",  "<cmd>Telescope git_files<cr>",           desc = "Git tracked files" },

    -- GitSigns
    {
        "<leader>gl", function()
            require("gitsigns").toggle_linehl()
        end,
        desc = "Toggle Git line highlights"
    },
    {
        "<leader>gsh", function()
            require("gitsigns").stage_hunk()
        end,
        desc = "Stage hunk"
    },
    {
        "<leader>guh", function()
            require("gitsigns").reset_hunk()
        end,
        desc = "Undo hunk"
    },
    {
        "<leader>gp", function()
            require("gitsigns").preview_hunk()
        end,
        desc = "Preview hunk"
    },
    {
        "<leader>gnh", function()
            require("gitsigns").next_hunk()
        end,
        desc = "Next hunk"
    },
    {
        "<leader>gph", function()
            require("gitsigns").prev_hunk()
        end,
        desc = "Previous hunk"
    },
    {
        "<leader>gr", function()
            require("gitsigns").reset_buffer()
        end,
        desc = "Reset buffer"
    },
    {
        "<leader>gS", function()
            require("gitsigns").stage_buffer()
        end,
        desc = "Stage buffer"
    },
    {
        "<leader>gd", function()
            require("gitsigns").toggle_deleted()
        end,
        desc = "Toggle deleted lines"
    },
    {
        "<leader>gw", function()
            require("gitsigns").toggle_word_diff()
        end,
        desc = "Toggle word diff"
    },
    {
        "<leader>gB", function()
            require("gitsigns").toggle_current_line_blame()
        end,
        desc = "Toggle line blame"
    },
    {
        "<leader>gbl", function()
            require("gitsigns").blame_line()
        end,
        desc = "Blame line"
    },

    ------------------------------------------------------------------------------
    -- SESSION
    ------------------------------------------------------------------------------
    { "<leader>sl", "<cmd>Telescope session-lens search_session<cr>", desc = "Search sessions" },

    ------------------------------------------------------------------------------
    -- BUFFERS (Barbar)
    ------------------------------------------------------------------------------
    { "<leader>b1", ":BufferGoto 1<CR>", desc = "Go to buffer 1" },
    { "<leader>b2", ":BufferGoto 2<CR>", desc = "Go to buffer 2" },
    { "<leader>b3", ":BufferGoto 3<CR>", desc = "Go to buffer 3" },
    { "<leader>b4", ":BufferGoto 4<CR>", desc = "Go to buffer 4" },
    { "<leader>b5", ":BufferGoto 5<CR>", desc = "Go to buffer 5" },
    { "<leader>b6", ":BufferGoto 6<CR>", desc = "Go to buffer 6" },
    { "<leader>b7", ":BufferGoto 7<CR>", desc = "Go to buffer 7" },
    { "<leader>b8", ":BufferGoto 8<CR>", desc = "Go to buffer 8" },
    { "<leader>b9", ":BufferGoto 9<CR>", desc = "Go to buffer 9" },

    { "<leader>bc", ":BufferClose<CR>",        desc = "Close current buffer" },
    { "<leader>bp", ":BufferPick<CR>",         desc = "Pick a buffer" },
    { "<leader>br", ":BufferMoveNext<CR>",     desc = "Move buffer right" },
    { "<leader>bl", ":BufferMovePrevious<CR>", desc = "Move buffer left" },

    ------------------------------------------------------------------------------
    -- AERIAL (Code Outline)
    ------------------------------------------------------------------------------
    { "<leader>a",  "<cmd>AerialToggle!<CR>", desc = "Toggle code outline" },
    { "<leader>as", "<cmd>Telescope aerial<CR>", desc = "Search symbols with Aerial" },

    ------------------------------------------------------------------------------
    -- FORMATTER
    ------------------------------------------------------------------------------
    { "<leader>F",  "<cmd>Format<CR>",      desc = "Format current buffer" },
    { "<leader>FW", "<cmd>FormatWrite<CR>", desc = "Format & save buffer" },

    ------------------------------------------------------------------------------
    -- YANK & DELETE ENTIRE FILE
    ------------------------------------------------------------------------------
    { "<leader>ya", "ggVGy", desc = "Yank entire file" },
    { "<leader>da", "ggdG",  desc = "Delete entire file contents" },

    ------------------------------------------------------------------------------
    -- CLOSE NOTIFICATIONS
    ------------------------------------------------------------------------------
    {
        "<leader>x",
        function()
            require("notify").dismiss()
        end,
        desc = "Close all notifications"
    },

    ------------------------------------------------------------------------------
    -- HARPOON
    ------------------------------------------------------------------------------
    { "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>",      desc = "Add file to Harpoon" },
    { "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Toggle Harpoon menu" },
    { "<leader>h1", ":lua require('harpoon.ui').nav_file(1)<CR>",       desc = "Go to Harpoon file 1" },
    { "<leader>h2", ":lua require('harpoon.ui').nav_file(2)<CR>",       desc = "Go to Harpoon file 2" },
    { "<leader>h3", ":lua require('harpoon.ui').nav_file(3)<CR>",       desc = "Go to Harpoon file 3" },
    { "<leader>h4", ":lua require('harpoon.ui').nav_file(4)<CR>",       desc = "Go to Harpoon file 4" },

    -- Clear search highlights (if you want <leader>hc)
    { "<leader>hc", ":noh<CR>", desc = "Clear search highlights" },

    ------------------------------------------------------------------------------
    -- LSP
    ------------------------------------------------------------------------------
    { "<leader>ld", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document symbols" },

    ------------------------------------------------------------------------------
    -- NON-LEADER NORMAL MODE
    ------------------------------------------------------------------------------
    { "<C-h>", ":BufferPrevious<CR>", desc = "Go to previous buffer", mode = "n" },
    { "<C-l>", ":BufferNext<CR>",     desc = "Go to next buffer",     mode = "n" },

    -- Leap.nvim
    { "s", "<Plug>(leap-forward-to)",  desc = "Leap forward",  mode = "n" },
    { "S", "<Plug>(leap-backward-to)", desc = "Leap backward", mode = "n" },

    ------------------------------------------------------------------------------
    -- INSERT MODE
    ------------------------------------------------------------------------------
    { "<M-BS>", "<C-w>", desc = "Delete word in insert mode", mode = "i" },

})

local wk = require("which-key")

wk.add({
    ------------------------------------------------------------------------------
    -- FILE & TEXT SEARCHING (Telescope)
    ------------------------------------------------------------------------------
    { "<leader>ff",  "<cmd>Telescope find_files<cr>",          desc = "Find files" },
    { "<leader>fg",  "<cmd>Telescope live_grep<cr>",           desc = "Search text in files" },
    { "<leader>fb",  "<cmd>Telescope buffers<cr>",             desc = "List open buffers" },
    { "<leader>fh",  "<cmd>Telescope help_tags<cr>",           desc = "Search help tags" },
    { "<leader>fm",  "<cmd>Telescope media_files<cr>",         desc = "Search media files" },
    { "<leader>fbr", "<cmd>Telescope file_browser<cr>",        desc = "Open file browser" },
    { "<leader>fp",  "<cmd>Telescope project<cr>",             desc = "Search projects" },
    { "<leader>fo",  "<cmd>Telescope oldfiles<cr>",            desc = "Recently opened files" },
    { "<leader>fk",  "<cmd>Telescope keymaps<cr>",             desc = "Show key mappings" },
    { "<leader>fq",  "<cmd>Telescope quickfix<cr>",            desc = "Show quickfix list" },
    { "<leader>fl",  "<cmd>Telescope loclist<cr>",             desc = "Show location list" },

    -- Search in config
    { "<leader>fc",  "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", desc = "Search in config files" },

    -- Diagnostics & LSP references
    { "<leader>fd",  "<cmd>Telescope diagnostics<cr>",         desc = "Show diagnostics" },
    { "<leader>fr",  "<cmd>Telescope lsp_references<cr>",      desc = "Show LSP references" },

    -- Command/Buffer History
    { "<leader>fhc", "<cmd>Telescope command_history<cr>",     desc = "Show command history" },
    { "<leader>fhb", "<cmd>Telescope buffer_history<cr>",      desc = "Show buffer history" },

    -- Registers
    { "<leader>frg", "<cmd>Telescope registers<cr>",           desc = "Show registers" },

    -- Another config alias
    { "<leader>fvc", "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", desc = "Search Neovim config" },

    ------------------------------------------------------------------------------
    -- GIT (Telescope + GitSigns)
    ------------------------------------------------------------------------------
    { "<leader>gs",  "<cmd>Telescope git_status<cr>",          desc = "Git status" },
    { "<leader>gb",  "<cmd>Telescope git_branches<cr>",        desc = "Git branches" },
    { "<leader>gc",  "<cmd>Telescope git_commits<cr>",         desc = "Git commits" },
    { "<leader>gf",  "<cmd>Telescope git_files<cr>",           desc = "Git tracked files" },

    -- GitSigns
    {
        "<leader>gl", function()
            require("gitsigns").toggle_linehl()
        end,
        desc = "Toggle Git line highlights"
    },
    {
        "<leader>gsh", function()
            require("gitsigns").stage_hunk()
        end,
        desc = "Stage hunk"
    },
    {
        "<leader>guh", function()
            require("gitsigns").reset_hunk()
        end,
        desc = "Undo hunk"
    },
    {
        "<leader>gp", function()
            require("gitsigns").preview_hunk()
        end,
        desc = "Preview hunk"
    },
    {
        "<leader>gnh", function()
            require("gitsigns").next_hunk()
        end,
        desc = "Next hunk"
    },
    {
        "<leader>gph", function()
            require("gitsigns").prev_hunk()
        end,
        desc = "Previous hunk"
    },
    {
        "<leader>gr", function()
            require("gitsigns").reset_buffer()
        end,
        desc = "Reset buffer"
    },
    {
        "<leader>gS", function()
            require("gitsigns").stage_buffer()
        end,
        desc = "Stage buffer"
    },
    {
        "<leader>gd", function()
            require("gitsigns").toggle_deleted()
        end,
        desc = "Toggle deleted lines"
    },
    {
        "<leader>gw", function()
            require("gitsigns").toggle_word_diff()
        end,
        desc = "Toggle word diff"
    },
    {
        "<leader>gB", function()
            require("gitsigns").toggle_current_line_blame()
        end,
        desc = "Toggle line blame"
    },
    {
        "<leader>gbl", function()
            require("gitsigns").blame_line()
        end,
        desc = "Blame line"
    },

    ------------------------------------------------------------------------------
    -- SESSION
    ------------------------------------------------------------------------------
    { "<leader>sl", "<cmd>Telescope session-lens search_session<cr>", desc = "Search sessions" },

    ------------------------------------------------------------------------------
    -- BUFFERS (Barbar)
    ------------------------------------------------------------------------------
    { "<leader>b1", ":BufferGoto 1<CR>", desc = "Go to buffer 1" },
    { "<leader>b2", ":BufferGoto 2<CR>", desc = "Go to buffer 2" },
    { "<leader>b3", ":BufferGoto 3<CR>", desc = "Go to buffer 3" },
    { "<leader>b4", ":BufferGoto 4<CR>", desc = "Go to buffer 4" },
    { "<leader>b5", ":BufferGoto 5<CR>", desc = "Go to buffer 5" },
    { "<leader>b6", ":BufferGoto 6<CR>", desc = "Go to buffer 6" },
    { "<leader>b7", ":BufferGoto 7<CR>", desc = "Go to buffer 7" },
    { "<leader>b8", ":BufferGoto 8<CR>", desc = "Go to buffer 8" },
    { "<leader>b9", ":BufferGoto 9<CR>", desc = "Go to buffer 9" },

    { "<leader>bc", ":BufferClose<CR>",        desc = "Close current buffer" },
    { "<leader>bp", ":BufferPick<CR>",         desc = "Pick a buffer" },
    { "<leader>br", ":BufferMoveNext<CR>",     desc = "Move buffer right" },
    { "<leader>bl", ":BufferMovePrevious<CR>", desc = "Move buffer left" },

    ------------------------------------------------------------------------------
    -- AERIAL (Code Outline)
    ------------------------------------------------------------------------------
    { "<leader>a",  "<cmd>AerialToggle!<CR>", desc = "Toggle code outline" },
    { "<leader>as", "<cmd>Telescope aerial<CR>", desc = "Search symbols with Aerial" },

    ------------------------------------------------------------------------------
    -- FORMATTER
    ------------------------------------------------------------------------------
    { "<leader>F",  "<cmd>Format<CR>",      desc = "Format current buffer" },
    { "<leader>FW", "<cmd>FormatWrite<CR>", desc = "Format & save buffer" },

    ------------------------------------------------------------------------------
    -- YANK & DELETE ENTIRE FILE
    ------------------------------------------------------------------------------
    { "<leader>ya", "ggVGy", desc = "Yank entire file" },
    { "<leader>da", "ggdG",  desc = "Delete entire file contents" },

    ------------------------------------------------------------------------------
    -- CLOSE NOTIFICATIONS
    ------------------------------------------------------------------------------
    {
        "<leader>x",
        function()
            require("notify").dismiss()
        end,
        desc = "Close all notifications"
    },

    ------------------------------------------------------------------------------
    -- HARPOON
    ------------------------------------------------------------------------------
    { "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>",      desc = "Add file to Harpoon" },
    { "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Toggle Harpoon menu" },
    { "<leader>h1", ":lua require('harpoon.ui').nav_file(1)<CR>",       desc = "Go to Harpoon file 1" },
    { "<leader>h2", ":lua require('harpoon.ui').nav_file(2)<CR>",       desc = "Go to Harpoon file 2" },
    { "<leader>h3", ":lua require('harpoon.ui').nav_file(3)<CR>",       desc = "Go to Harpoon file 3" },
    { "<leader>h4", ":lua require('harpoon.ui').nav_file(4)<CR>",       desc = "Go to Harpoon file 4" },

    -- Clear search highlights (if you want <leader>hc)
    { "<leader>hc", ":noh<CR>", desc = "Clear search highlights" },

    ------------------------------------------------------------------------------
    -- LSP
    ------------------------------------------------------------------------------
    { "<leader>ld", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document symbols" },

    ------------------------------------------------------------------------------
    -- NON-LEADER NORMAL MODE
    ------------------------------------------------------------------------------
    { "<C-h>", ":BufferPrevious<CR>", desc = "Go to previous buffer", mode = "n" },
    { "<C-l>", ":BufferNext<CR>",     desc = "Go to next buffer",     mode = "n" },

    -- Leap.nvim
    { "s", "<Plug>(leap-forward-to)",  desc = "Leap forward",  mode = "n" },
    { "S", "<Plug>(leap-backward-to)", desc = "Leap backward", mode = "n" },

    ------------------------------------------------------------------------------
    -- INSERT MODE
    ------------------------------------------------------------------------------
    { "<M-BS>", "<C-w>", desc = "Delete word in insert mode", mode = "i" },

})
