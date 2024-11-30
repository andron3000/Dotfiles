return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

  opts = {
    filesystem = {
      filtered_items = {
	      visible = true,
	      show_hidden_count = true,
	      hide_dotfiles = false,
	      hide_gitignored = true,
	      never_show = {},
      },
    },
  },

	config = function(_, opts)
    require("neo-tree").setup(opts)
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle left<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal toggle float<CR>", {})
	end,
}
