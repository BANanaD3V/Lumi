{...}: {
  plugins.comment = {
    enable = true;
    settings = {
      padding = true;
    };
  };
  keymaps = [
    {
      action.__raw = ''
        function()
              require("Comment.api").toggle.linewise.count(
                vim.v.count > 0 and vim.v.count or 1
              )
            end
      '';
      lua = true;
      options = {
        silent = true;
        desc = "Comment line";
      };
      mode = "n";
      key = "<leader>/";
    }
    {
      action = "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>";
      key = "<leader>/";
      mode = "x";
      options = {
        desc = "Comment line";
        silent = true;
      };
    }
  ];
}
