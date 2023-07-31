require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'material',
    component_separators = { left = ' | ', right = ' | '},
    section_separators = { left = ' | ', right = ' | '},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = false,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'branch', 'diff', 'diagnostics'},
    lualine_x = {'fileformat', 'filetype'},
    lualine_y = {'progress' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
