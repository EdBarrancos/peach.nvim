local config = {
  cmd = { '/home/ebarrancos/.local/share/nvim/mason/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}
vim.opt.colorcolumn = '120'
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
