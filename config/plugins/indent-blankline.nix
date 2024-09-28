{ ...
}:

{
  plugins.indent-blankline = {
    enable = true;

    settings = {
      exclude = [
        "terminal"
      ];
      indent = {
        char = "|";
      };
      scope = {
        show_start = false;
        show_exact_scope = true;
        show_end = false;
      };
    };
  };
}
