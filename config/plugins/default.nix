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
