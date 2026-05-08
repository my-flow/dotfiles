return {
  -- Disable bufferline (use :bnext/:bprev or Shift+H/L)
  { "akinsho/bufferline.nvim", enabled = false },

  -- lazygit integration
  {
    "kdheepak/lazygit.nvim",
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
