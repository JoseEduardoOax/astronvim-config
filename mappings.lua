-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Register which-key menu name with `name` and without command
--
-- This mappings table is the lower level configuration and more robust approach
-- which-key will automatically pick-up stored data by this setting

-- Icons can be copied from https://www.nerdfonts.com/cheat-sheet

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    ["<leader><tab>"] = { "<cmd>b#<cr>", desc = "Last tab" },

    -- Save prompting for file name
    ["<leader>W"] = { ":write ", desc = "Save as file" },


    -- mappings seen under group name "Buffer"
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- ["<leader>bD"] = { "<cmd>Bdelete<cr>", desc = "Delete buffer" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker( function(bufnr)
          require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- this is useful for naming menus
    ["<leader>j"] = { name = "Jump" },


    -- Markdown
    ["<leader>m"] = { name = "Markdown" },
    ["<Leader>mf"] = { ":lua require(\"tablemd\").format()<cr>", desc = "Markdown" },
    ["<Leader>mc"] = { ":lua require(\"tablemd\").insertColumn(false)<cr>", desc = "Markdown" },
    ["<Leader>md"] = { ":lua require(\"tablemd\").deleteColumn()<cr>", desc = "Markdown" },
    ["<Leader>mr"] = { ":lua require(\"tablemd\").insertRow(false)<cr>", desc = "Markdown" },
    ["<Leader>mR"] = { ":lua require(\"tablemd\").insertRow(true)<cr>", desc = "Markdown" },
    ["<Leader>mj"] = { ":lua require(\"tablemd\").alignColumn(\"left\")<cr>", desc = "Markdown" },
    ["<Leader>mk"] = { ":lua require(\"tablemd\").alignColumn(\"center\")<cr>", desc = "Markdown" },
    ["<Leader>ml"] = { ":lua require(\"tablemd\").alignColumn(\"right\")<cr>", desc = "Markdown" },


    -- Projects
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Projects" },

    -- Editing
    ["zZ"] = { "<cmd>ZenMode<cr>", desc = " Zen mode" },

    -- Git Menu
    -- Menu mappings
    ["<leader>gh"] = false, -- disable Reset Git Hunk mapping, used for Octo
    ["<leader>gn"] = { name = " Neogit" }, -- Neogit menu
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer"
    },

    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    ["<C-t>"] = { "<cmd>2ToggleTerm direction=float<cr>", desc = "ToggleTerm float" },
    ["<M-1>"] = { "<cmd>3ToggleTerm direction=vertical size=80<cr>", desc = "ToggleTerm vertical" },
    ["<M-2>"] = { "<cmd>4ToggleTerm direction=horizontal size=20<cr>", desc = "ToggleTerm vertical" },
    ["<M-3>"] = { "<cmd>2ToggleTerm direction=float<cr>", desc = "ToggleTerm float" },


    ["<M-j>"] = {"<Esc>:m .+1<CR>==", desc = "Bajar una linea"},
    ["<M-k>"] = {"<Esc>:m .-2<CR>==", desc = "Subir una linea"},


    ["<leader>i"] = { name = " Cpp" },
        ["<leader>iy"] = { ":w <CR> :!./run compile<CR>", desc = "Compile cpp"},
    ["<leader>ii"] = { ":w <CR> :!./run<CR>", desc = "Run cpp"},

    ["<C-A>"] = {"gg0vG$", desc="Selected all text"},
  },
  
  i = {
    ["<M-j>"] = {"<Esc>:m .+1<CR>==gi", desc = "Bajar una linea"},
    ["<M-k>"] = {"<Esc>:m .-2<CR>==gi", desc = "Subir una linea"},
  },

  v = {
    [">"] = {">gv", desc = "Identar bloque de codigo"},
    ["<"] = {"<gv", desc = "Identar bloque de codigo"},
  },
  
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    --
    ["<C-t>"] = { "<cmd>2ToggleTerm<cr>", desc = "ToggleTerm float" },
    ["<M-1>"] = { "<cmd>3ToggleTerm<cr>", desc = "ToggleTerm vertical" },
    ["<M-2>"] = { "<cmd>4ToggleTerm<cr>", desc = "ToggleTerm horizontal" },
    ["<M-3>"] = { "<cmd>2ToggleTerm<cr>", desc = "ToggleTerm float" },
  },
}
