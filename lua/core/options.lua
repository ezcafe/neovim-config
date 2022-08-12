local options = {
	g = {
		mapleader = " ", -- set leader key
	},
	opt = {
		-- General
	  mouse = 'a', -- Enable mouse support
	  timeoutlen = 300, -- Length of time to wait for a mapped sequence
	  updatetime = 300, -- Length of time to wait before triggering the plugin

	  -- Neovim UI
    cursorline = true, -- Highlight the text line of the cursor
    fillchars = { eob = " " }, -- Disable `~` on nonexistent lines
    number = true, -- Show line number
    showmatch = true, -- Highlight matching parenthesis
    signcolumn = "yes", -- Always show the sign column
    termguicolors = true, -- Enable 24-bit RGB colors

    -- Tabs, indent
    copyindent = true, -- Copy the previous indentation on autoindenting
    expandtab = true, -- Use spaces instead of tabs
    preserveindent = true, -- Preserve indent structure as much as possible
    shiftwidth = 2, -- Shift 2 spaces when tab
    smartindent = true, -- Autoindent new lines
    tabstop = 2, -- 1 tab == 2 spaces

    -- Memory, CPU
    history = 100, -- Remember N lines in history
    lazyredraw = true, -- Faster scrolling
    synmaxcol = 240, -- Max column for syntax highlight

  }
}

function setOptions(options)
  for scope, table in pairs(options) do
    for setting, value in pairs(table) do
      vim[scope][setting] = value
    end
  end
end
setOptions(options)
