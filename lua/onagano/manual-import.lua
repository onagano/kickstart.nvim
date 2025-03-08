-- Consider to make this a package, i.e. returning a table.

function hoge(whom)
  local whom = whom or 'Hoge'
  print('Hello, ' .. whom .. '!')
end

vim.cmd 'echo "Loaded."'

--[[
-- Reload this package by select and ":source"
local pkg = 'onagano.manual-import'
package.loaded[pkg] = nil
require(pkg)
--]]
