{ self, ... }:

{
  plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
      lua-ls.enable = true;
      
      clangd.enable = true;
      java-language-server.enable = true;
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      
      tsserver.enable = true;
      html.enable = true;
      cssls.enable = true;

      sqls.enable = true;
    };
  };
}
