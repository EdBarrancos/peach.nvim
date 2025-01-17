require('swagger-preview').setup {
  port = 8000,
  host = 'localhost',
}
vim.keymap.set('n', '<leader>wp', ':SwaggerPreview<CR>', { desc = 's[W]agger [P]review' })
vim.keymap.set('n', '<leader>wr', ':SwaggerPreviewStop<CR> <BAR> :SwaggerPreview<CR>', { desc = 's[W]agger [R]estart' })
