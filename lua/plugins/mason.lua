return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls",
				"gopls",
				"dockerls",
				"bashls",
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"pyright",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"gomodifytags",
				"gotests",
				"prettier",
				"stylua",
				"isort",
				"black",
				"beautysh",
			},
		})
	end,
}
