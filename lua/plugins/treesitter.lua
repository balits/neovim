return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      local status, ts = pcall(require, "nvim-treesitter.configs")
      if (not status) then return end

      ts.setup {
        highlight = {
          enable = true,
          disable = {},
        },
        indent = {
          enable = true,
          disable = {},
        },
        --[[ ensure_installed = {
          "tsx",
          "json",
          "css",
          "html",
          "lua",
          "c",
        }, ]]
        autotag = {
          enable = true,
        },
      }
    end
  }
}
