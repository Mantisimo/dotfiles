require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<Bslash>t]],
  -- open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = 'horizontal',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved',
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n><C-W><C-p>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-W><C-W>', [[<C-\><C-n><C-W><C-W>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-w>N', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<leader>n', [[<C-\><C-n><leader>n]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<leader>ff', [[<C-\><C-n> ?FAIL<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-w><C-h>', [[<C-\><C-n><C-W>h]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-w><C-j>', [[<C-\><C-n><C-W>j]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-w><C-k>', [[<C-\><C-n><C-W>k]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-w><C-l>', [[<C-\><C-n><C-W>l]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Right terminal
--------------------------------------------------------------------------------
local Terminal  = require('toggleterm.terminal').Terminal
local rightTerminal = Terminal:new({ direction = 'vertical', hidden = true, close_on_exit = true, size = 30 })

function _rightTerminal_toggle()
  rightTerminal:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>rt", "<cmd>lua _rightTerminal_toggle()<CR>", {noremap = true, silent = true})
