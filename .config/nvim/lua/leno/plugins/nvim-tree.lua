-- return {
--  "nvim-tree/nvim-tree.lua",
--  dependencies = {
--    "nvim-tree/nvim-web-devicons"
--  },
--  config = function()
--    -- disable netrw at the very start of your init.lua
--    vim.g.loaded_netrw = 1
--    vim.g.loaded_netrwPlugin = 1
--
--    -- set termguicolors to enable highlight groups
--    vim.opt.termguicolors = true
--
--    -- empty setup using defaults
--    require("nvim-tree").setup()
--  end
-- }

return {
  "preservim/nerdtree",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "tiagofumo/vim-nerdtree-syntax-highlight",
    "ryanoasis/vim-devicons"
  },
  config = function()
    local global = vim.g

    global.NERDTreeShowHidden = 1

    global.NERDTreeDirArrowExpandable = ''
    global.NERDTreeDirArrowCollapsible = ''

    -- Start NERDTree and leave the cursor in it.
    vim.cmd [[ autocmd VimEnter * NERDTree ]]
  end 
}
