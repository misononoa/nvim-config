local mason_registry = require("mason-registry")
if not mason_registry.has_package("jdtls") then
	return {}
end

local jdtls_path = mason_registry.get_package("jdtls"):get_install_path()

return {
	cmd = function (dispatchers, config)
		local root_dir = config.root_dir or vim.fn.getcwd()
		local workspace = vim.fn.stdpath("cache") .. "/jdtls/workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")
		return vim.lsp.rpc.start({
			"jdtls",
			"--jvm-arg=-javaagent:" .. jdtls_path .. "/lombok.jar",
			"-data", workspace
		}, dispatchers)
	end
}

