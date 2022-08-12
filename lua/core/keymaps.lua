local maps = {
  -- Normal --
  n = {
    -- Standard Operations
    [";"] = { ":", desc = "Remap ; to :" },
    ["<leader>q"] = { "<cmd>q<cr>", desc = "Quit" },
    ["<leader>w"] = { "<cmd>w<cr>", desc = "Save" },

    -- Move around splits using Ctrl + {h,j,k,l}
    ["<C-h>"] = { "<C-w>h", desc = "Focus split on the left" },
    ["<C-j>"] = { "<C-w>j", desc = "Focus split on the bottom" },
    ["<C-k>"] = { "<C-w>k", desc = "Focus split on the top" },
    ["<C-l>"] = { "<C-w>l", desc = "Focus split on the right" },

    -- Resize with arrows
    ["<C-Up>"] = { ":resize -2<CR>", desc = "Resize up" },
    ["<C-Down>"] = { ":resize +2<CR>", desc = "Resize down" },
    ["<C-Left>"] = { ":vertical resize -2<CR>", desc = "Resize left" },
    ["<C-Right>"] = { ":vertical resize +2<CR>", desc = "Resize right" },

    -- Buffers
    ["<leader>bc"] = { ":bdelete<CR>", desc = "Close buffer" },
    ["<leader>bh"] = { ":bnext<CR>", desc = "Next buffer" },
    ["<leader>bl"] = { ":bprevious<CR>", desc = "Previous buffer" },

    -- Explorer
    ["<leader>e"] = { ":Explore<cr>", desc = "Open Explore" },

    -- Files
    ["<leader>bn"] = { "<cmd>enew<cr>", desc = "New File" },

    -- Search
    ["<leader>xh"] = { "<cmd>nohlsearch<CR>", desc = "Clear hghlights" },

    -- Terminal
    ["<leader>t"] = { "<cmd>terminal<cr>", desc = "Open Terminal" },

    -- end Normal --
  },

  -- Insert --
  i = {
    ["jj"] = { "<Esc>", desc = "Map Esc to jj" },

    -- end Insert --
  },

  -- Visual --
  v = {
    ["<"] = { "<gv", desc = "unindent line" },
    [">"] = { ">gv", desc = "indent line" },

    -- end Visual --
  },

  -- Visual block --
  x = {

    -- Visual block --
  },

  -- Term --
  t = {
    ["<Esc>"] = { "<C-\\><C-n>", desc = "Exit terminal" },

    -- end Term --
  },

  -- Command --
  c = {

    -- Command --
  },

}

function setMappings(map_table, base)
  local map = vim.keymap.set

  -- iterate over the first keys for each mode
  for mode, maps in pairs(map_table) do
    -- iterate over each keybinding set in the current mode
    for keymap, options in pairs(maps) do
      -- build the options for the command accordingly
      if options then
        local cmd = options
        if type(options) == "table" then
          cmd = options[1]
          options[1] = nil
        else
          options = {}
        end
        -- extend the keybinding options with the base provided and set the mapping
        map(mode, keymap, cmd, vim.tbl_deep_extend("force", options, base or {}))
      end
    end
  end
end
setMappings(maps)
