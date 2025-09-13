return {

  -- Lsp

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "lua",
        "make",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ast-grep",
        "bash-language-server",
        "lua-language-server",
        "stylua",
        "rust-analyzer",
        "tinymist",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {
      servers = {
        tinymist = {
          settings = {
            exportPdf = "onSave",
            outputPath = "$root/pdf/$name",
            formatterMode = "typstyle",
          },
        },
      },
    },
  },

  -- Extras

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        sort_by = "relative_directory",
        separator_style = "slant",

        always_show_bufferline = true,

        show_buffer_close_icons = false,
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      mappings = {
        reset = "<C-l>",
      },
    },
  },

  --  Custom

  "nyoom-engineering/oxocarbon.nvim",

  "lervag/wiki.vim",

  "jannis-baum/vivify.vim",

  {
    "akinsho/toggleterm.nvim",
    opts = { direction = "float" },
  },

  {
    "klen/nvim-config-local",
    config = function()
      require("config-local").setup()
    end,
  },

  -- Dashboard
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      center = {
        {
          action = "Telescope projects",
          desc = "Projects",
          icon = " ",
          key = "p",
        },
        {
          action = 'lua require("persistence").select()',
          desc = "Sessions",
          icon = " ",
          key = "s",
        },
        {
          action = "Telescope find_files",
          desc = " Find File",
          icon = " ",
          key = "f",
        },
        {
          action = "Telescope live_grep",
          desc = " Find Text",
          icon = " ",
          key = "g",
        },
        {
          action = "LazyExtras",
          desc = " Lazy Extras",
          icon = " ",
          key = "x",
        },
        {
          action = "Lazy",
          desc = " Lazy",
          icon = "󰒲 ",
          key = "l",
        },
        {
          action = "lua LazyVim.pick.config_files()()",
          desc = " Config",
          icon = " ",
          key = "c",
        },
        {
          action = function()
            vim.api.nvim_input("<cmd>qa<cr>")
          end,
          desc = " Quit",
          icon = " ",
          key = "q",
        },
      }

      for _, button in ipairs(center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      opts.config.center = center
    end,
  },
}
