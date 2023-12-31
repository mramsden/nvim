require('nvim-treesitter.configs').setup({
  ensure_installed = { 'go', 'javascript', 'typescript', 'lua', 'markdown', 'vim', 'vimdoc', 'query', 'sql' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
