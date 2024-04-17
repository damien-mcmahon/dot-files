return {
	"phaazon/hop.nvim",
	branch = "v2", -- optional but strongly recommended
	config = function()
		local hop = require("hop")
		--
		-- you can configure Hop the way you like here; see :h hop-config
		hop.setup({ keys = "etovxqpdygfblzhckisuran" })
		local directions = require("hop.hint").HintDirection
		vim.keymap.set("", "<leader>f", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
		end, { remap = true })
		vim.keymap.set("", "<leader>F", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
		end, { remap = true })
		vim.keymap.set("", "<leader>t", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
		end, { remap = true })
		vim.keymap.set("", "<leader>T", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
		end, { remap = true })
	end,
}
