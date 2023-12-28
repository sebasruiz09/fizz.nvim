-- @github.com/sebasruiz09
local fizz = {}

local colors = {
    bg = "#262626",
    bg2 = "#373737",
    fg = "#ffffff",
    red = "#f44747",
    green = "#4EC9B0",
    blue = "#0a7aca",
    lightblue = "#5CB6F8",
    yellow = "#ffaf00",
    pink = "#DDB6F2",
}

fizz.normal = {
    b = { fg = colors.blue, bg = colors.bg2 },
    a = { fg = colors.fg, bg = colors.blue, gui = "bold" },
    c = { fg = colors.fg, bg = colors.bg },
}

fizz.visual = {
    a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
    b = { fg = colors.yellow, bg = colors.bg2 },
}

fizz.inactive = {
    b = { fg = colors.bg, bg = colors.fg },
    a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
}

fizz.replace = {
    b = { fg = colors.red, bg = colors.bg2 },
    a = { fg = colors.bg, bg = colors.red, gui = "bold" },
    c = { fg = colors.fg, bg = colors.bg },
}

fizz.insert = {
    a = { fg = colors.bg, bg = colors.green, gui = "bold" },
    b = { fg = colors.green, bg = colors.bg2 },
    c = { fg = colors.fg, bg = colors.bg },
}

fizz.command = {
    b = { fg = colors.pink, bg = colors.bg2 },
    a = { fg = colors.bg, bg = colors.pink, gui = "bold" },
    c = { fg = colors.fg, bg = colors.bg },
}

return fizz
