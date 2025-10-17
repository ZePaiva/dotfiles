return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'andrew-george/telescope-themes',
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "ivy",
          },
          diagnostics = {
            theme = "dropdown",
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
          }
        },
      }
      require('telescope').load_extension('fzf')
      require('telescope').load_extension('themes')
      vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
      vim.keymap.set("n", "<leader>fg", require('telescope.builtin').live_grep, {})
      vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
      vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, {})
      vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})
      vim.keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_implementations, {})
      vim.keymap.set('n', '<leader>fd', require('telescope.builtin').lsp_references, {})
    end
  }
