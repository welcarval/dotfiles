local M = {}

local java_project_cache = {}

function M.is_java_project()
    local dir = vim.fn.expand("%:p:h")
    if java_project_cache[dir] ~= nil then
        return java_project_cache[dir]
    end

    local build_markers = { "pom.xml", "build.gradle", "build.gradle.kts" }
    local found_build = vim.fs.find(build_markers, { upward = true, path = dir })

    if #found_build > 0 then
        java_project_cache[dir] = true
        return true
    end

    local found_java = vim.fs.find(function(name)
        return name:match("%.java$") ~= nil
    end, {
        path = dir,
        upward = false,
        limit = 1,
        type = "file",
    })

    local result = #found_java > 0
    java_project_cache[dir] = result
    return result
end

function M.setup_autocmd()
    vim.api.nvim_create_autocmd({ "BufEnter" }, {
        callback = function()
            if M.is_java_project() then
                vim.api.nvim_exec_autocmds("User", { pattern = "JavaProjectDetected" })
            end
        end,
    })

    vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost" }, {
        pattern = "*.java",
        callback = function(args)
            local filepath = args.file

            -- Só age se o buffer estiver vazio (arquivo novo/em branco)
            local line_count = vim.api.nvim_buf_line_count(args.buf)
            local first_line = vim.api.nvim_buf_get_lines(args.buf, 0, 1, false)[1] or ""
            if line_count > 1 or first_line ~= "" then
                return
            end

            local class_name = vim.fn.fnamemodify(filepath, ":t:r")
            local package_path = filepath:match("src/main/java/(.+)/" .. class_name .. "%.java$")

            local lines = {}
            if package_path then
                local package_name = package_path:gsub("/", ".")
                table.insert(lines, "package " .. package_name .. ";")
                table.insert(lines, "")
            end
            table.insert(lines, "public class " .. class_name .. " {")
            table.insert(lines, "")
            table.insert(lines, "}")

            vim.api.nvim_buf_set_lines(args.buf, 0, -1, false, lines)
            vim.api.nvim_win_set_cursor(args.win or 0, { #lines - 1, 1 })
        end,
    })
end

return M
