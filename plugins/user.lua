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
    "folke/tokyonight.nvim",
  },

  {
    "petertriho/nvim-scrollbar",
    config = function()
    local colors = require("tokyonight.colors").setup()
    require('hlslens').setup();
    require("scrollbar").setup({
      handle = {
        text = " ",
        blend = 50, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
        color = colors.orange,
        color_nr = nil, -- cterm
        highlight = "CursorColumn",
        hide_if_all_visible = true, -- Hides handle if all lines are visible
    }, 
    handlers = {
        cursor = true,
        diagnostic = true,
        gitsigns = true, -- Requires gitsigns
        handle = true,
        search = true, -- Requires hlslens
        ale = true, -- Requires ALE
    },
        marks = {
            Search = { color = colors.orange },
            Error = { color = colors.error },
            Warn = { color = colors.warning },
            Info = { color = colors.info },
            Hint = { color = colors.hint },
            Misc = { color = colors.purple },
        }
    })
    end,
    dependencies =
    {
      "lewis6991/gitsigns.nvim",
      "kevinhwang91/nvim-hlslens"
    },
    lazy = false,
  },
  {
    "HiPhish/nvim-ts-rainbow2",
    config = function()
require('nvim-treesitter.configs').setup {
  rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = { 'jsx' },
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
    -- Highlight the entire buffer all at once
    strategy = require('ts-rainbow').strategy.global,
  }
}
    end,
    lazy = false,
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require('onedark').setup {
        style = 'darker'
      }
      require('onedark').load()
    end,
  },
  {
    "nanotech/jellybeans.vim",
  },
  {
    "glepnir/oceanic-material",
  },

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
      "dense-analysis/ale",
      "OmniSharp/omnisharp-roslyn",
    },
  }
}
