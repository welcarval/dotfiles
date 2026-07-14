local M = {}

local function config_signs()
    vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DiagnosticError", linehl = "", numhl = "" })
    vim.fn.sign_define("DapBreakpointCondition", { text = "◆", texthl = "DiagnosticWarn", linehl = "", numhl = "" })
    vim.fn.sign_define("DapLogPoint", { text = "◉", texthl = "DiagnosticInfo", linehl = "", numhl = "" })
    vim.fn.sign_define("DapStopped", { text = "▶", texthl = "DiagnosticOk", linehl = "CursorLine", numhl = "" })
    vim.fn.sign_define("DapBreakpointRejected", { text = "✗", texthl = "DiagnosticError", linehl = "", numhl = "" })
end

local function apply_step_filters()
    local ok, dap = pcall(require, "dap")
    if not ok then return end
    if dap.configurations.java and dap.configurations.java[1] then
        local base_config = vim.deepcopy(dap.configurations.java[1])
        base_config.stepFilters = {
            skipClasses = {
                "$JDK",
                "sun.*",
                "com.sun.*",
                "com.sun.proxy.*",
                "jdk.*",
                "java.lang.*",
                "java.util.concurrent.*",
                "org.apache.tomcat.*",
                "org.apache.catalina.*",
                "org.apache.coyote.*",
                "org.apache.juli.*",
                "org.springframework.*",
                "*$$SpringCGLIB$$*",
                "*$$EnhancerBySpringCGLIB$$*",
                "*$$ByteBuddy$$*",
                "net.bytebuddy.*",
            },
            skipSynthetics = true,
            skipStaticInitializers = true,
        }
        dap.configurations.java = { base_config }
    end
end

function M.setup_autocmds()
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
            local client = vim.lsp.get_clients({ id = args.data.client_id })[1]
            if client and client.name == "jdtls" then
                vim.defer_fn(apply_step_filters, 1500)
            end
        end,
    })
    config_signs()
end

return M
