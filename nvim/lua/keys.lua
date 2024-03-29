-- Other stuff (to do)

-- Multi cursor 
--map("m", "c", "")

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-e>", ":NvimTreeToggle<CR>", { silent = true })
map("n", "gd", ":ObsidianFollowLink<CR>", { silent = false })
