return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    keys = {
      { '<M-w>', ':NvimTreeToggle<CR>' },
      { '<C-j>w', ':NvimTreeFindFile<CR>' }
    },
    config = function()
      require("nvim-tree").setup()
    end
}
