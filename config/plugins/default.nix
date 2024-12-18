{ inputs
, pkgs
, ...
}:

{
  imports = [
    ./completion

    ./bufferline.nix
    ./lualine.nix
    ./luasnip.nix
    ./lsp.nix
    ./copilot.nix
    ./parinfer-rust.nix
    ./indent-blankline.nix
    ./rustaceanvim.nix
    ./render-markdown.nix
    ./harpoon.nix
    ./which-key.nix
    ./treesitter.nix
    # ./hlchunk.nix
  ];
  
  plugins = {
    # fuzzy finder thingy
    telescope.enable = true;
    
    # better file browser
    oil.enable = true;
    
    # code snippets
    luasnip.enable = true;
    
    # Required by telescope and bufferline
    web-devicons.enable = true;
  };
}
