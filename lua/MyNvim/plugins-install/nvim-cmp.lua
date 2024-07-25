return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    -- autopairing
    {
      "windwp/nvim-autopairs",
      opts = {
        fast_wrap = {},
        disable_filetype = { "TelescopePrompt" },
      },
      config = function(_, opts)
        require("nvim-autopairs").setup(opts)

        -- setup cmp for autopairs
        local cmp_autopairs = require "nvim-autopairs.completion.cmp"
        require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
      end,
    },

    -- cmp sources plugins
    {
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/vim-vsnip",
    },
  },
  opts = function()
    return require "MyNvim.plugins-config.nvim-cmp"
  end,
  config = function(_, opts)
    require("cmp").setup(opts)
  end,
}
