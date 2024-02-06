return  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
}

return {
    'lewis6991/gitsigns.nvim',
    event = {'BufNewFile', 'BufRead'},
    keys = {
      { '<C-j>d', ':Gitsigns preview_hunk<CR>' },
      { '<C-j>D', ':Gitsigns diffthis<CR>' },
      { '<C-j><C-u>', ':Gitsigns reset_hunk<CR>' },
      { '<Space>s', ':Gitsigns stage_hunk<CR>' },
      { '<Space>j', ':Gitsigns next_hunk<CR>' },
      { '<Space>k', ':Gitsigns prev_hunk<CR>' },
    },
    config = function()
      require('gitsigns').setup()
    end
}
