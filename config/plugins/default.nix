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
    # ./hlchunk.nix
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
    
    # Required by telescope and bufferline
    web-devicons.enable = true;
  };

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin { 
      name = "markdown.nvim";
      src = inputs.plugin-markdown;
    })
  ];

  extraConfigLua = ''
    require('render-markdown').setup({})
  
    cmp.event:on('menu_opened', function()
      vim.b.copilot_suggestion_hidden = true
    end)

    cmp.event:on('menu_closed', function()
      vim.b.copilot_suggestion_hidden = false
    end)
  '';
}
