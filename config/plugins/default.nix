{ inputs
, pkgs
, ...
}:

{
  imports = [
    ./bufferline.nix
    ./lualine.nix
    ./luasnip.nix
    ./lsp.nix
    ./cmp.nix
    ./copilot.nix
    ./parinfer-rust.nix
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

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin { 
      name = "markdown.nvim";
      src = inputs.plugin-markdown;
    })
  ];

  extraConfigLua = "require('render-markdown').setup({})";
}
