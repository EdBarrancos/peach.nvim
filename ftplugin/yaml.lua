require('swagger-preview').setup {
  port = 8000,
  host = 'localhost',
}
vim.keymap.set('n', '<leader>gp', ':SwaggerPreview<CR>', { desc = 'swa[G]ger [P]review' })
vim.keymap.set('n', '<leader>gr', ':SwaggerPreviewStop<CR> <BAR> :SwaggerPreview<CR>', { desc = 'swa[G]ger [R]estart' })
