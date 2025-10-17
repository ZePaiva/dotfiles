-- open as vsplit on current node
local function vsplit_preview()
  local api = require("nvim-tree.api")
  local node = api.tree.get_node_under_cursor()
  if node.nodes ~= nil then
    -- expand or collapse folder
    api.node.open.edit()
  else
    -- open file as vsplit
    api.node.open.vertical()
  end
  -- Finally refocus on tree if it was lost
  api.tree.focus()
end

local function split_preview()
  local api = require("nvim-tree.api")
  local node = api.tree.get_node_under_cursor()
  if node.nodes ~= nil then
    -- expand or collapse folder
    api.node.open.edit()
  else
    -- open file as vsplit
    api.node.open.horizontal()
  end
  -- Finally refocus on tree if it was lost
  api.tree.focus()

end

local VIEW_WIDTH_FIXED = 30
local view_width_max = VIEW_WIDTH_FIXED -- fixed to start

-- toggle the width and redraw
local function toggle_width_adaptive()
  if view_width_max == -1 then
    view_width_max = VIEW_WIDTH_FIXED
  else
    view_width_max = -1
  end

  require("nvim-tree.api").tree.reload()
end
-- get current view width
local function get_view_width_max()
  return view_width_max
end

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  local treeutils = require("treeutils")

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
  vim.keymap.set("n", "L", vsplit_preview,        opts("vertical open"))
  vim.keymap.set("n", "H", split_preview,        opts("horizontal Preview"))
  vim.keymap.set('n', 'A',        toggle_width_adaptive,                        opts('Toggle Adaptive Width'))
  vim.keymap.set('n', '<c-f>', treeutils.launch_find_files, opts('Launch Find Files'))
  vim.keymap.set('n', '<c-g>', treeutils.launch_live_grep,  opts('Launch Live Grep'))
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      on_attach = my_on_attach,
      view = {
        width = {
          min = 30,
          max = get_view_width_max,
        }
      }
    }
  end,
}
