{
  config.vim = {
    dashboard.alpha = {
      enable = true;
      layout = let
        padding = val: {
          type = "padding";
          inherit val;
        };
      in [
        (padding 4)
        {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = [
            " ██▓     █    ██  ███▄ ▄███▓ ██▓"
            "▓██▒     ██  ▓██▒▓██▒▀█▀ ██▒▓██▒"
            "▒██░    ▓██  ▒██░▓██    ▓██░▒██▒"
            "▒██░    ▓▓█  ░██░▒██    ▒██ ░██░"
            "░██████▒▒▒█████▓ ▒██▒   ░██▒░██░"
            "░ ▒░▓  ░░▒▓▒ ▒ ▒ ░ ▒░   ░  ░░▓  "
            "░ ░ ▒  ░░░▒░ ░ ░ ░  ░      ░ ▒ ░"
            "  ░ ░    ░░░ ░ ░ ░      ░    ▒ ░"
            "    ░  ░   ░            ░    ░  "
          ];
        }
        (padding 2)
        {
          type = "button";
          val = "📄 New     ";
          on_press.raw = "<cmd>ene<CR>";
          opts = {
            # hl = "comment";
            keymap = [
              "n"
              "n"
              "<cmd>:ene<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "n";

            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "🌺 Recent  ";
          on_press.__raw = "require('telescope.builtin').oldfiles";
          opts = {
            # hl = "comment";
            keymap = [
              "n"
              "r"
              "<cmd>:Telescope oldfiles<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "r";

            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "💼 Projects";
          on_press.raw = "require'telescope'.extensions.projects.projects{}";
          opts = {
            # hl = "comment";
            keymap = [
              "n"
              "p"
              "<cmd>:Telescope projects<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "p";

            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "🔎 Restore";
          on_press.raw = "require('persistence').load({ last = true })";
          opts = {
            # hl = "comment";
            keymap = [
              "n"
              "s"
              "<cmd>:lua require('persistence').load({ last = true })<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "s";

            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "❌ Quit";
          on_press.__raw = "function() vim.cmd[[qa]] end";
          opts = {
            # hl = "comment";
            keymap = [
              "n"
              "q"
              ":qa<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "q";

            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        # (padding 3)
        # {
        #   opts = {
        #     hl = "AlphaFooter";
        #     position = "center";
        #   };
        #
        #   type = "text";
        #   val = [
        #     "  Loaded X plugins  in Y ms  "
        #     ".............................."
        #   ];
        # }
      ];
    };
    # pluginRC.alpha =
    #   /*
    #   lua
    #   */
    #   ''
    #      local alpha = require("alpha")
    #      local dashboard = require("alpha.themes.dashboard")
    #
    #      -- Set header
    #      dashboard.section.header.val = {
    #       [[                                ]],
    #       [[                                ]],
    #       [[ ██▓     █    ██  ███▄ ▄███▓ ██▓]],
    #       [[▓██▒     ██  ▓██▒▓██▒▀█▀ ██▒▓██▒]],
    #       [[▒██░    ▓██  ▒██░▓██    ▓██░▒██▒]],
    #       [[▒██░    ▓▓█  ░██░▒██    ▒██ ░██░]],
    #       [[░██████▒▒▒█████▓ ▒██▒   ░██▒░██░]],
    #       [[░ ▒░▓  ░░▒▓▒ ▒ ▒ ░ ▒░   ░  ░░▓  ]],
    #       [[░ ░ ▒  ░░░▒░ ░ ░ ░  ░      ░ ▒ ░]],
    #       [[  ░ ░    ░░░ ░ ░ ░      ░    ▒ ░]],
    #       [[    ░  ░   ░            ░    ░  ]],
    #      }
    #
    #      dashboard.section.header.opts.hl = "AlphaHeader"
    #
    #      -- Set menu
    #      dashboard.section.buttons.val = {
    #          dashboard.button( "n", "📄 New     ", ":ene <BAR> startinsert <CR>"),
    #          dashboard.button( "r", "🌺 Recent  ", ":Telescope oldfiles<CR>"),
    #          dashboard.button( "s", "🔎 Restore ", "<cmd>lua require('persistence').load({ last = true })<CR>"),
    #          dashboard.button( "p", "💼 Projects", ":Telescope projects<CR>"),
    #          dashboard.button( "q", "❌ Quit", "<cmd>exit<CR>"),
    #      }
    #
    #     alpha.setup(dashboard.opts)
    #
    #      -- Disable folding on alpha buffer
    #      vim.cmd([[
    #          autocmd FileType alpha setlocal nofoldenable
    #      ]])
    #   '';
  };
}
