return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      harpoon:setup()

      local toggle_opts = {
        title = " Harpoon ",
        border = "rounded",
        title_pos = "center",
        ui_width_ratio = 0.40,
      }

      vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "[a]dd to Harppon List" })
      vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list(), toggle_opts) end,
        { desc = "Open Harpoon List" })

      vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Harpoon list 1" })
      vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end, { desc = "Harpoon list 2" })
      vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end, { desc = "Harpoon list 3" })
      vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end, { desc = "Harpoon list 4" })
      vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end,
        { desc = "Replace Harpoon list 1" })
      vim.keymap.set("n", "<leader><C-j>", function() harpoon:list():replace_at(2) end,
        { desc = "Replace Harpoon list 2" })
      vim.keymap.set("n", "<leader><C-k>", function() harpoon:list():replace_at(3) end,
        { desc = "Replace Harpoon list 3" })
      vim.keymap.set("n", "<leader><C-l>", function() harpoon:list():replace_at(4) end,
        { desc = "Replace Harpoon list 4" })
    end
  }
}
