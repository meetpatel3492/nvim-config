function ColorMeDaddy(color)
    local themeMap = {}
    themeMap[1] = "gruvbox"
    themeMap[2] = "catppuccin_mocha"
    themeMap[3] = "monokai"
    themeMap[4] = "sonokai"
    themeMap[5] = "rose-pine"
    themeMap[6] = "xcode"
    themeMap[7] = "one"

    local randomNum = math.random(1, 7)
    print(themeMap[randomNum])

	color = color or themeMap[randomNum]
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMeDaddy()
