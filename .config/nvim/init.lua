require('ismiabbas.base')
require('ismiabbas.highlights')
require('ismiabbas.maps')
require('ismiabbas.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('ismiabbas.macos')
end
if is_win then
  require('ismiabbas.windows')
end
