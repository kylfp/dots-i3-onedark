local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    --Plugins Here
    ----------------------------------------------------------------------------
    -- General Useful Plugins
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',

    ----------------------------------------------------------------------------
    -- LSP
    {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    },
    ----------------------------------------------------------------------------
    -- Completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',       -- LSP completions
    'hrsh7th/cmp-buffer',         -- Buffer Completions
    'hrsh7th/cmp-path',           -- Path completions
    'hrsh7th/cmp-cmdline',        -- CMD Line completions
    'saadparwaiz1/cmp_luasnip',   -- snippet completions
    'hrsh7th/cmp-nvim-lua',       -- Nvim config completions
    ----------------------------------------------------------------------------
    -- Snippets
    'L3MON4D3/LuaSnip',                 -- snippet engine
    'rafamadriz/friendly-snippets',     -- VS Code-like completions
    ----------------------------------------------------------------------------
    -- WhichKey
    {
        "folke/which-key.nvim",  -- Popup keybinding helper
        lazy = true,
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    },

    ----------------------------------------------------------------------------
    -- Telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',  -- Fuzzy Finder
        dependencies = {'nvim-lua/plenary.nvim'}
    },

    ----------------------------------------------------------------------------
    -- File Tree
    {
        'nvim-tree/nvim-tree.lua', -- File Tree
        lazy = true,
        dependencies = {'nvim-tree/nvim-web-devicons'}
    },

    ----------------------------------------------------------------------------
    -- Integrated Terminal
    'numToStr/FTerm.nvim',  -- Integraated floating terminal

    ----------------------------------------------------------------------------
    -- Syntax Highlighting
    {
        'nvim-treesitter/nvim-treesitter', -- Syntax highlighting
        build = ":TSUpdate"
    },

    ----------------------------------------------------------------------------
    -- Commenting Manager
    'numToStr/Comment.nvim', -- Easy block commenting

    ----------------------------------------------------------------------------
    -- Mini
    {
        'echasnovski/mini.nvim', -- A library of helpful plugins (list below)
        version = false
    },
    -- Currently implemented:
    --     Pairs (autopairing)
    --     Starter (startpage)
    --     Cursorword (highlight words under cursor)
    --     Surround (surround word with specified character)
    ----------------------------------------------------------------------------
    -- Indentation Line Guides
    'lucastavaresa/simpleIndentGuides.nvim',

    ----------------------------------------------------------------------------
    -- Bufferline
    {'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
          -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
          -- animation = true,
          -- insert_at_start = true,
          -- …etc.
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },

    ----------------------------------------------------------------------------
    -- Status Line
    'tamton-aquib/staline.nvim', -- Staline

    ----------------------------------------------------------------------------
    -- Hex Color Highlighting
    {
        'brenoprata10/nvim-highlight-colors', -- Hex Color highlighter
        lazy = true,
    },

    ----------------------------------------------------------------------------
    -- Colorscheme
    'folke/tokyonight.nvim', -- Tokyo Night
    'ellisonleao/gruvbox.nvim', -- Gruvbox
    'navarasu/onedark.nvim' --OneDark
})
