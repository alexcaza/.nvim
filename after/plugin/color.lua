
function ColorMyPencil(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme('rose-pine')

	-- Would be cool for this function to be able to take 
	-- in a settings object or be flexible across multiple themes.
	--require('rose-pine').setup({
	--	variant = "moon"
	--})
end

ColorMyPencil()
