return {
  {
    -- https://github.com/gpanders/nvim-parinfer
    'gpanders/nvim-parinfer',
  },
  {
    -- https://github.com/Olical/conjure
    'Olical/conjure',
    ft = { 'clojure', 'fennel', 'python', 'janet' }, -- etc
    lazy = true,
    init = function()
      -- Set configuration options here
      -- Uncomment this to get verbose logging to help diagnose internal Conjure issues
      -- This is VERY helpful when reporting an issue with the project
      -- vim.g["conjure#debug"] = true
    end,

    dependencies = {
      {
        -- Optional cmp-conjure integration
        'PaterJason/cmp-conjure',
        lazy = true,
        config = function()
          local cmp = require 'cmp'
          local config = cmp.get_config()
          table.insert(config.sources, { name = 'conjure' })
          return cmp.setup(config)
        end,
      },
      {
        -- https://github.com/Olical/nfnl
        'Olical/nfnl',
        ft = 'fennel',
      },
    },
  },
  {
    -- https://github.com/goropikari/lua-repl.nvim
    -- https://zenn.dev/hituzi_no_sippo/articles/871c06cdbc45b53181e3
    'goropikari/lua-repl.nvim',
    config = true,
    cmd = { 'LuaREPL' },
  },
  {
    -- https://github.com/kkharji/sqlite.lua
    -- Do `luarocks install sqlite luv`
    'kkharji/sqlite.lua',
  },
}
