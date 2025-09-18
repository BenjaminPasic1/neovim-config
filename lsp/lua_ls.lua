return {

  cmd = {'lua-language-server'},

  filetypes = { 'lua' },

  -- let the language server recognize the vim global
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }

}
