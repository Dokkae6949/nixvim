{ pkgs, ... }:

{
  imports = [
    ./theme.nix
    ./globals.nix
    ./options.nix
    ./keymaps.nix
    ./clipboard.nix

    # plugins
    ./plugins/bufferline.nix
    ./plugins/lualine.nix
    ./plugins/lsp.nix
  ];

  extraPackages = with pkgs; [
    ripgrep
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
