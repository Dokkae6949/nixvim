{ ... }:

{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;

    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "buffer";}
        {name = "path";}
        {name = "luasnip";}
      ];

      mapping = {
        "<C-y>" = "cmp.mapping.complete()";
        # "<C-K>" = "cmp.mapping.scroll_docs(-4)";
        "<Esc>" = "cmp.mapping.close()";
        # "<C-J>" = "cmp.mapping.scroll_docs(4)";
        "<Tab>" = "cmp.mapping.confirm({ select = true })";
        "<C-k>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<C-j>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      };
    };
  };
}
