return {
  "nvim-treesitter/nvim-treesitter",
  build = "TSUpdate",
  event = "VeryLazy",
  main = "nvim-treesitter.configs",
  opts = {
    -- A list of parser names, or "all" (the listed parsers MUST always be installed)
    ensure_installed = { "c", "lua", "luadoc", "vim", "vimdoc", "query", "markdown", "markdown_inline",
      "python", "html", "css", "json", "bash", },
    -- remarcado
    highlight = { enable = true, },
  },
}
