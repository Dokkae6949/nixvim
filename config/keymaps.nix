{ ... }:

{
  keymaps = [
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>g";
    }
    {
      action = "<cmd>Telescope fd<CR>";
      key = "<leader>f";
    }
    {
      action = "<cmd>Oil --float<CR>";
      key = "<leader>d";
    }
  ];
}
