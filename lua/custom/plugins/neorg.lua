return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {
          config = {
            folds = true,
            icon_preset = "basic",
            init_open_folds = "never",
          }
        }, -- Adds pretty icons to your documents
        ["core.syntax"] = {}, -- Adds syntax to code blocks
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp"
          }
        },                  -- Adds completion
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/Documents",
            },
          },
        },
      },
    }
  end,
}
