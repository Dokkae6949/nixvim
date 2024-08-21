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
      key = "<leader>g"; }
    { action = "<cmd>Telescope fd<CR>";
      key = "<leader>f"; }

    # Lsp
    { action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      key = "<leader>a"; }
    { action = "<cmd>lua vim.lsp.buf.rename()<CR>";
      key = "<leader>r"; }

    # Oil
    { action = "<cmd>Oil<CR>";
      key = "<leader>d"; }
  ];
}
