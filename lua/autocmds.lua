vim.cmd([[ set tabstop=2 ]])
vim.cmd([[ set shiftwidth=2 ]])
vim.cmd([[ set expandtab ]])

vim.opt.number = true
vim.opt.relativenumber = true

vim.o.laststatus = 3
vim.o.cmdheight = 1

vim.diagnostic.config({ update_in_insert = true })
vim.opt.signcolumn = "yes"

local signs = {
	Error = "", -- Error icon
	Warn = "", -- Warning icon
	Hint = "", -- Hint icon
	Info = " ", -- Information icon
}
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.cmd("autocmd TermOpen * setlocal nonumber norelativenumber")

-- Disable line numbers in the Lazy.nvim overview window
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lazy",
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
    end,
})

vim.lsp.inlay_hint.enable(true)

package.path = package.path .. vim.fn.getcwd() .. "/?.lua;" .. vim.fn.getcwd() .. "/lua/?.lua;" .. vim.fn.getcwd() .. "/plugin/?.lua;"

vim.cmd[[ colorscheme catppuccin ]]
