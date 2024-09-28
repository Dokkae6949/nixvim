{ self, ... }:

{
  plugins.lsp = {
    enable = true;
    
    servers = {
      nixd.enable = true;
      lua-ls.enable = true;
      
      clangd.enable = true;
      java-language-server.enable = true;
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      
      tsserver.enable = true;
      html.enable = true;
      cssls.enable = true;
      svelte.enable = true;
      tailwindcss.enable = true;

      sqls.enable = true;
    };

    keymaps = {
      silent = true;
      lspBuf = {
        gd = {
          action = "definition";
          desc = "Goto Definition";
        };
        gD = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        gr = {
          action = "references";
          desc = "Goto References";
        };
        gi = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        gt = {
          action = "type_definition";
          desc = "Type Definition";
        };
        K = {
          action = "hover";
          desc = "Hover";
        };
        "<leader>cs" = {
          action = "workspace_symbol";
          desc = "Workspace Symbol";
        };
        "<leader>cr" = {
          action = "workspace_symbol";
          desc = "Workspace Symbol";
        };
      };
      diagnostic = {
        "<leader>do" = {
          action = "open_float";
          desc = "Line Diagnostics";
        };
        "<leader>dn" = {
          action = "goto_next";
          desc = "Next Diagnostic";
        };
        "<leader>dp" = {
          action = "goto_prev";
          desc = "Previous Diagnostic";
        };
      };
    };
  };

  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
}
