local global = vim.g
local o = vim.opt

-- disable language provider support (lua and vimscript plugins only)
global.loaded_perl_provider = 0
global.loaded_ruby_provider = 0
global.loaded_node_provider = 0
global.loaded_python_provider = 0
global.loaded_python3_provider = 0


-- Editor options
o.number = true -- Print the line number in front of each line
o.relativenumber = false -- Show the line number relative to the line with the cursor in front of each line.
o.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.
o.syntax = "on" -- When this option is set, the syntax with this name is loaded.
o.cursorline = true -- Highlight the screen line of the cursor with CursorLine.
o.encoding = "UTF-8" -- Sets the character encoding used inside Vim.
o.ruler = true -- Show the line and column number of the cursor position, separated by a comma.
o.mouse = "a" -- Enable the use of the mouse. "a" you can use on all modes
o.title = true -- When on, the title of the window will be set to the value of 'titlestring'
o.hidden = true -- When on a buffer becomes hidden when it is |abandon|ed
o.ttimeoutlen = 0 -- The time in milliseconds that is waited for a key code or mapped key sequence to complete.
o.wildmenu = true -- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
o.showcmd = true -- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
o.showmatch = true -- When a bracket is inserted, briefly jump to the matching one.
o.inccommand = "split" -- When nonempty, shows the effects of :substitute, :smagic, :snomagic and user commands with the :command-preview flag as you type.
o.splitright = true
o.splitbelow = true -- When on, splitting a window will put the new window below the current one
o.termguicolors = true
-- <Tab>
o.softtabstop = 0 -- Number of spaces <Tab> inserts or removes when editing text
o.expandtab = false -- Use <Tab> characters instead of spaces when you press <Tab>
o.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent.
o.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for.


-- Key mapping
global.mapleader = " " -- leader
global.maplocalleader = "." -- local leader

local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")
-- Quit
map("n", "<leader>q", "<CMD>q<CR>")
-- Exit insert mode
map("i", "jk", "<ESC>")
-- Helix-like motion
map({'n', 'v'}, 'gh', '0')
map({'n', 'v'}, 'gs', '^')
map({'n', 'v'}, 'gl', '$')
map({'n', 'v'}, 'ge', 'G')
