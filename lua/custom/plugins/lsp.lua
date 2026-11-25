---@module 'lazy'
---@type LazySpec
return {
  { 'mrcjkb/rustaceanvim', ft = { 'rust' } },
  {
    'seblyng/roslyn.nvim',
    ft = { 'cs', 'razor' },
    dependencies = {
      -- Optional: gives you excellent completion UI and snippet triggers
      'hrsh7th/nvim-cmp',
    },
    opts = {
      -- Zero config needed for modern iterations; it falls back to your local dotnet env
    },
  },
  {
    'TheLeoP/powershell.nvim',
    ft = { 'ps1', 'psm1', 'psd1' },
    opts = {
      -- Optional: Path to your PowerShell Editor Services bundle if not using mason.nvim
      bundle_path = vim.fn.stdpath 'data' .. '/mason/packages/powershell-editor-services',
    },
    dependencies = {
      'neovim/nvim-lspconfig',
      'rcarriga/nvim-dap', -- Optional: Only needed if you want debugging support
    },
  },
}
