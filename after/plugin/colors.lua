function ColorMeDaddy(color)
    local themeMap = {}
    themeMap[1] = "gruvbox"
    themeMap[2] = "catppuccin_mocha"
    themeMap[4] = "sonokai"
    themeMap[3] = "rose-pine"

    local randomNum = math.random(1, 4)
    print(themeMap[randomNum])

	color = color or themeMap[randomNum]
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMeDaddy()
