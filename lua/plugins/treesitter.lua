return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    init = function()
      require 'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all" (the four listed parsers should always be installed)
        ensure_installed = {
          "lua", "vim", "html", "javascript", "typescript", "tsx",
        },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
        -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

        highlight = { enable = true },
        -- Disable the experimental feature
        -- indent = { enable = true }
      }
    end
  },
  -- Auto close/rename tags
  {
    'windwp/nvim-ts-autotag',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = true
  },
}
