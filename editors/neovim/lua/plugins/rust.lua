return {
	{
		"mrcjkb/rustaceanvim",
		opts = {
			server = {
				default_settings = {
					["rust-analyzer"] = {
						procMacro = {
							enable = true,
							ignored = {},
						},
						diagnostics = {
							enable = diagnostics == "rust-analyzer",
							disabled = { "unresolved-proc-macro" },
						},
					},
				},
			},
		},
	},
}
