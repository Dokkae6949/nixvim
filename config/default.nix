{ pkgs, ... }:

{
  imports = [
    ./theme.nix
    ./globals.nix
    ./options.nix
    ./keymaps.nix

    # plugins
    ./bufferline.nix
    ./lualine.nix
    ./lsp.nix
  ];

  extraPackages = with pkgs; [
    ripgrep
  ];

  plugins = {
    # fuzzy file browser
    telescope.enable = true;

    # better default syntax highlighting
    treesitter.enable = true;

    # code snippets
    luasnip.enable = true;
  };
}
