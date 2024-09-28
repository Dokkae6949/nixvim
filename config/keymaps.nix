{ ... }:

{
  keymaps = [
    ### Built-In ###
    # Buffers
    { action = "<cmd>bnext<CR>";
      key = "<leader>n"; }
    { action = "<cmd>bprevious<CR>";
      key = "<leader>p"; }
    { key = "<13>";
      action = "<CR>"; }

    { action = "<cmd>noh<CR>";
      key = "<leader><escape>"; }

    ### PLUGINS ###
    # Telescope
    { action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>fg"; }
    { action = "<cmd>Telescope fd<CR>";
      key = "<leader>ff"; }

    # Oil
    { action = "<cmd>Oil<CR>";
      key = "<leader>fd"; }
  ];
}
