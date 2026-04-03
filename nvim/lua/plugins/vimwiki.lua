return {
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {
        { path = "~/vimwiki/" },
      }
    end,
    keys = {
      { "<leader>ww", "<cmd>VimwikiIndex<CR>", desc = "Vimwiki Index" },
    },
    cmd = { "VimwikiIndex" },
  },
}
