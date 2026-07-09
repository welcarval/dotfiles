---@type Base46Table
local M = {}

M.base_30 = {
  white         = "#c8d3f5",
  darker_black  = "#191B29",
  black         = "#222436", -- nvim bg
  black2        = "#1e2030",
  one_bg        = "#2f334d",
  one_bg2       = "#2d3f76",
  one_bg3       = "#3b4261",
  grey          = "#545c7e",
  grey_fg       = "#737aa2",
  grey_fg2      = "#636da6",
  light_grey    = "#828bb8",
  red           = "#ff757f",
  baby_pink     = "#ff8d94",
  pink          = "#fca7ea",
  line          = "#3b4261",
  green         = "#c3e88d",
  vibrant_green = "#4fd6be",
  nord_blue     = "#65bcff",
  blue          = "#82aaff",
  seablue       = "#0db9d7",
  yellow        = "#ffc777",
  sun           = "#ffd8ab",
  purple        = "#c099ff",
  dark_purple   = "#ff007c",
  teal          = "#4fd6be",
  orange        = "#ff966c",
  cyan          = "#86e1fc",
  statusline_bg = "#1e2030",
  lightbg       = "#2f334d",
  pmenu_bg      = "#65bcff",
  folder_bg     = "#82aaff",
}

M.base_16 = {
  base00 = "#222436",
  base01 = "#1e2030",
  base02 = "#2f334d",
  base03 = "#636da6",
  base04 = "#828bb8",
  base05 = "#c8d3f5",
  base06 = "#c8d3f5",
  base07 = "#444a73",
  base08 = "#ff757f",
  base09 = "#ff966c",
  base0A = "#ffc777",
  base0B = "#c3e88d",
  base0C = "#86e1fc",
  base0D = "#82aaff",
  base0E = "#c099ff",
  base0F = "#ff007c",
}

M.type = "dark"

M = require("base46").override_theme(M, "tokyonight_moon")

return M
