-------------------------------------------------
-- COLORSCHEMES
-------------------------------------------------

-- Uncomment just ONE of the following colorschemes!
local ok, _ = pcall(vim.cmd, "colorscheme tokyonight-storm")
--local ok, _ = pcall(vim.cmd, "colorscheme tokyonight-storm ctermbg=none guibg=none")
--local ok, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
--local ok, _ = pcall(vim.cmd, "colorscheme tokyonight-day")

-- Highlight the region on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = num_au,
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 120 })
	end,
})
