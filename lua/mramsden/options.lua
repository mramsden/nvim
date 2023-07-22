local api = vim.api
local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

local cmds = {
  BufWritePre = {
    {
      pattern = "*.go",
      callback = function()
        vim.cmd "GoFmt"
      end,
    },
  }
}

local goGrp = api.nvim_create_augroup("FormatGo", { clear = true })

for event, opt_tbls in pairs(cmds) do
  for _, opt_tbl in pairs(opt_tbls) do
    opt_tbl["group"] = goGrp
    api.nvim_create_autocmd(event, opt_tbl)
  end
end

