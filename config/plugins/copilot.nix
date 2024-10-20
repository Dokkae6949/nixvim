{ ... }:

{
  plugins.copilot-lua = {
    enable = true;

    filetypes = {
      markdown = true;
    };

    suggestion = {
      enabled = true;
      autoTrigger = true;

      keymap = {
        accept = "<S-CR>";
        acceptWord = "<C-CR>";
        dismiss = "<C-space>";

        next = "<C-j>";
        prev = "<C-k>";
      };
    };
  };
}
