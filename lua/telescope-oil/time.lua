local M = {}

local table = {}

M.time_start = function(name)
	table[name] = vim.uv.hrtime() / 1e9
end

M.time_end = function(name)
	if table[name] then
		local time = vim.uv.hrtime() / 1e9 - table[name]
		table[name] = nil
		return time
	else
		return nil
	end
end

return M
