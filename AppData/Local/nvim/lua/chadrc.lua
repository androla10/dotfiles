-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "solarized_dark",
  transparency = false,

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = { 
  load_on_startup = true,
  header = {
    " _____  _____  ____   _____  _____ ",
    "|__   //   __\\/  _/  /   __\\/  _  \\",
    " /  _/ |   __||  |---|   __||  _  <",
    "/_____|\\_____/\\_____/\\_____/\\__|\\_/",
    "                                        ",
    "                                        ",
  }

}
M.ui = {
       tabufline = {
          lazyload = false
      }
}

return M
