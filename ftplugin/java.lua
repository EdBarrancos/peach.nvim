local config = {
  cmd = { '/home/ebarrancos/lsp/jdtls/bin/jdtls-custom' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}

vim.api.nvim_set_option_value('colorcolumn', '120', {})

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

require('jdtls').start_or_attach(config)
require('simaxme-java').setup {
  rename = {
    enable = true,
    nvimtree = true,
    write_and_close = false,
  },
  snippets = {
    enable = true,
  },
  root_markers = {
    'main/java/',
    'test/java/',
  },
}
