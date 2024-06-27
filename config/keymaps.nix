{ ... }:

{
  keymaps = [
    ### Built-In ###
    # Buffers
    { action = "<cmd>bnext<CR>";
      key = "<leader>n"; }
    { action = "<cmd>bprevious<CR>";
      key = "<leader>p"; }

    ### PLUGINS ###
    # Telescope
    { action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>g"; }
    { action = "<cmd>Telescope fd<CR>";
      key = "<leader>f"; }

    # Oil
    { action = "<cmd>Oil<CR>";
      key = "<leader>d"; }
  ];
}
