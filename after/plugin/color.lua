
function ColorMyPencil(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme('kanagawa')

	-- Would be cool for this function to be able to take 
	-- in a settings object or be flexible across multiple themes.
	--require('rose-pine').setup({
	--	variant = "moon"
	--})
end

ColorMyPencil()
