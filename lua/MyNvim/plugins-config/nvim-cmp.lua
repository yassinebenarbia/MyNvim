local cmp = require("cmp")
local capability = require('MyNvim.capabilities.borders')

local status, lspkind = pcall(require, "lspkind")
if not status then
  lspkind = {}
end

local options = {
  window = {
    completion = {
      side_padding = 1,
      scrollbar = true,
      border = capability.border "CmpDocBorder",
      winhighlight = "Normal:CmpNormal,FloatBorder:Pmenu,Search:None",
    },
    documentation = {
      border = capability.border "CmpDocBorder",
      winhighlight = "Normal:CmpDoc",
    },
  },
  completion = {
    completeopt = "menu,menuone",
  },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. (strings[1] or "") .. " "
      kind.menu = "    (" .. (strings[2] or "") .. ")"
      return kind
    end,
  },
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<C-j>"] = cmp.mapping.scroll_docs(4),
    ["<C-k>"] = cmp.mapping.scroll_docs(-4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif require("luasnip").expand_or_jumpable() then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif require("luasnip").jumpable(-1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = 'nvim_lsp_signature_help' },
    { name = "luasnip" },
    { name = "nvim_lua" },
    { name = "tsserver" },
    { name = 'cmp-tw2css' },
    { name = "buffer" },
    { name = "path" },
  },
  view = {
    view = {
      entries = "wildmenu" -- can be "custom", "wildmenu" or "native"
    }
  }
}

return options
