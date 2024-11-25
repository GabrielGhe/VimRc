local colors = require('quiet').colors

local a = 1
local b = 3
local c = 5

return {
  insert = {
    a = {fg = colors.Normal[1], bg = colors.Warning[a], gui = 'bold'},
    b = {fg = colors.Normal[1], bg = colors.Warning[b]},
    c = {fg = colors.Normal[1], bg = colors.Warning[c]},
 },
  normal = {
    a = {fg = colors.Normal[1], bg = colors.Focus[a], gui = 'bold'},
    b = {fg = colors.Normal[1], bg = colors.Focus[b]},
    c = {fg = colors.Normal[1], bg = colors.Focus[c]},
 },
  inactive = {
    a = {fg = colors.Normal[3], bg = colors.Normal[6], gui = 'bold'},
    b = {fg = colors.Normal[3], bg = colors.Normal[6]},
    c = {fg = colors.Normal[3], bg = colors.Normal[6]},
 },
  visual = {
    a = {fg = colors.Normal[1], bg = colors.Info[a], gui = 'bold'},
    b = {fg = colors.Normal[1], bg = colors.Info[b]},
    c = {fg = colors.Normal[1], bg = colors.Info[c]},
 },
  replace = {
    a = {fg = colors.Normal[1], bg = colors.HighInterest[a], gui = 'bold'},
    b = {fg = colors.Normal[1], bg = colors.HighInterest[b]},
    c = {fg = colors.Normal[1], bg = colors.HighInterest[c]},
 },
}
