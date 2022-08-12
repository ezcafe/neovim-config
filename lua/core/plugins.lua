-- Disable builtin plugins
local disabled_built_ins = {
   --"2html_plugin",
   "bugreport",
   --"compiler",
   --"ftplugin",
   --"getscript",
   --"getscriptPlugin",
   --"gzip",
   --"logipat",
   --"matchit",
   --"netrw",
   --"netrwPlugin",
   --"netrwSettings",
   --"netrwFileHandlers",
   --"optwin",
   --"remote_plugins",
   --"rplugin",
   --"rrhelper",
   --"spellfile_plugin",
   --"synmenu",
   --"tar",
   --"tarPlugin",
   "tutor",
   --"vimball",
   --"vimballPlugin",
   --"zip",
   --"zipPlugin",
}

local g = vim.g
for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end
