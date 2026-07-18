return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "night",
    on_highlights = function(hc)
      -- comment test
      hc.comment = { fg = "#aaaaaa" }
      hc.Comment = { fg = "#aaaaaa" }
    end,
  },
}
