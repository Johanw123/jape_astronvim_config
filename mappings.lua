-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {

--    ["<F5>"] = { "<cmd>ToggleTerm dotnet build<cr>", desc = "test" },
    ["<F5>"] = {
      function()
        require("astronvim.utils").toggle_term_cmd("dotnet run")
      end, desc = "Dotnet Run" },

      ["<F7>"] = {
        function()
          require("astronvim.utils").toggle_term_cmd({cmd = "dotnet build", close_on_exit = false})
        end, desc = "Dotnet build" },

        ["<C-F7>"] = {
          function()
            require("astronvim.utils").toggle_term_cmd({cmd = "dotnet build", close_on_exit = false})
          end, desc = "Dotnet build" },

    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,

    --["<F5>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    --["<F6>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },

  i = {

    ["<F5>"] = {
      function()
        require("astronvim.utils").toggle_term_cmd("dotnet run")
      end, desc = "Dotnet Run" },

      ["<F7>"] = {
        function()
          require("astronvim.utils").toggle_term_cmd({cmd = "dotnet build", close_on_exit = false})
        end, desc = "Dotnet build" },

        ["<C-F7>"] = {
          function()
            require("astronvim.utils").toggle_term_cmd({cmd = "dotnet build", close_on_exit = false})
          end, desc = "Dotnet build" },

  },
}
