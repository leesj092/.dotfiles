return {
  {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    config = function()
      require("telescope").setup({})

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "[p]roject [f]iles" })
      vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Git files" })
      vim.keymap.set("n", "<leader>pws", function()
          local word = vim.fn.expand("<cword>")
          builtin.grep_string({ search = word })
        end,
        { desc = "[p]roject [w]ord [s]earch" })
      vim.keymap.set("n", "<leader>pWs", function()
          local word = vim.fn.expand("<cWORD>")
          builtin.grep_string({ search = word })
        end,
        { desc = "[p]roject [W]ord [s]earch" })
      vim.keymap.set("n", "<leader>ps", function()
          builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end,
        { desc = "[p]roject [s]tring search" })
      vim.keymap.set("n", "<leader>vh", builtin.help_tags, { desc = "[v]im [h]elp" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  },
}
