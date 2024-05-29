return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = function()
		local neogit = require("neogit")
		neogit.setup({
			graph_style = "unicode",
			signs = {
				hunk = { "", "" },
				item = { "", "" },
				section = { "", "" },
			},
			mappings = {
				popup = {
					["p"] = "PushPopup",
					["P"] = "PullPopup",
				},
			},
		})
	end,
}
