{ pkgs, ... }:

{
  imports = [
    ./theme.nix
    ./globals.nix
    ./options.nix
    ./keymaps.nix
    ./clipboard.nix
    
    ./plugins
  ];
  
  extraPackages = with pkgs; [
    ripgrep
  ];
}
