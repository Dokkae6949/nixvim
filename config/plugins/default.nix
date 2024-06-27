{ ... }:

{
  import = [
    ./bufferline.nix
    ./lualine.nix
    ./luasnip.nix
    ./lsp.nix
    ./cmp.nix
  ];
  
  plugins = {
    # fuzzy finder thingy
    telescope.enable = true;
    
    # better file browser
    oil.enable = true;
    
    # better default syntax highlighting
    treesitter.enable = true;
    
    # code snippets
    luasnip.enable = true;
  };
}
