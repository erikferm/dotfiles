local server = {}

server = {
  name = 'yaml',
  filetypes = { 'yaml', 'yml' },
  cmd = { 'yaml-language-server --stdio' },
  settings = {}
}
return server
