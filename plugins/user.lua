return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },


  {
    "dense-analysis/ale",
    --config = function()
   --   require("alex").setup()
   -- end,
  },

  {
    "BenGH28/neo-runner.nvim",
    --config = function()
    --   require("alex").setup()
    -- end,
  },
  
  "OmniSharp/omnisharp-roslyn",
  {
    --opts =
    --{
     -- TabSize = 2,
    --  IndentationSize = 2,
    --},
  },
  {
    "OmniSharp/omnisharp-vim",
    --cmd = "SymbolsOutline",
    keys = { { "<leader>jd", "<cmd>omnisharp_go_to_definition<cr>", desc = "Go to Definition" } },
    config = true,
    dependencies =
    {
      "OmniSharp/omnisharp-roslyn",
    },
  }
}
