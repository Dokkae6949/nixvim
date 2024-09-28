{ ...
}:

{
  plugins.lspkind = {
    enable = true;
    symbolMap = {
      Text = "󰊄";
      Method = "";
      Function = "󰡱";
      Constructor = "";
      Field = "";
      Variable = "󱀍";
      Class = "";
      Interface = "";
      Module = "󰕳";
      Property = "";
      Unit = "";
      Value = "";
      Enum = "";
      Keyword = "";
      Snippet = "";
      Color = "";
      File = "";
      Reference = "";
      Folder = "";
      EnumMember = "";
      Constant = "";
      Struct = "";
      Event = "";
      Operator = "";
      TypeParameter = "";
      Copilot = "";
    };
    extraOptions = {
      maxwidth = 50;
      ellipsis_char = "...";
    };
  };
}
