
local status_ok, configs = pcall(require, "telescope.configs")
if not status_ok then
	return
end

--configs.setup({
--})

local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
builtin.find_files(themes.get_dropdown())
