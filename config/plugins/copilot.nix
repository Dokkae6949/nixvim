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
        accept = "<C-l>";
        acceptWord = "<C-h>";
        dismiss = "<Esc>";

        next = "<C-j>";
        prev = "<C-k>";
      };
    };
  };
}
