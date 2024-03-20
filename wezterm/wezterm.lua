-- Pull in wezterm API
local wezterm = require('wezterm')

local config = {}

-- This will hold the configuration.
if wezterm.config_builder then
   config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- Font Config
local base_font = 'Monaspace Neon'
local string_font = 'FiraCode Nerd Font'
local comment_font = 'Maple Mono'
local diagnostics_font = 'Monaspace Krypton'

-- Regular
config.enable_tab_bar = true
config.font = wezterm.font({
   family = base_font,
   weight = 'Regular',
})
config.font_size = 13
config.font_rules = {
   {
      italic = false,
      intensity = 'Bold',
      font = wezterm.font({
         family = string_font,
         weight = 'Regular',
      }),
   },
   {
      italic = true,
      intensity = 'Bold',
      font = wezterm.font({
         family = diagnostics_font,
         style = 'Normal',
         weight = 'Light',
      }),
   },
   {
      italic = true,
      intensity = 'Half',
      font = wezterm.font({
         family = comment_font,
         weight = 'DemiBold',
      }),
   },
   {
      italic = true,
      intensity = 'Normal',
      font = wezterm.font({
         family = comment_font,
         style = 'Italic',
         weight = 'Light',
      }),
   },
}
config.harfbuzz_features = {
   'cv01',
   'cv02',
   'cv03',
   'cv04',
   'ss01',
   'ss02',
   'ss03',
   'ss04',
   'ss05',
   'ss06',
   'ss07',
   'ss08',
   'calt',
   'dlig',
}

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'

config.automatically_reload_config = true
config.scrollback_lines = 5000
config.hyperlink_rules = {
   -- Matches: a URL in parens: (URL)
   {
      regex = '\\((\\w+://\\S+)\\)',
      format = '$1',
      highlight = 1,
   },
   -- Matches: a URL in brackets: [URL]
   {
      regex = '\\[(\\w+://\\S+)\\]',
      format = '$1',
      highlight = 1,
   },
   -- Matches: a URL in curly braces: {URL}
   {
      regex = '\\{(\\w+://\\S+)\\}',
      format = '$1',
      highlight = 1,
   },
   -- Matches: a URL in angle brackets: <URL>
   {
      regex = '<(\\w+://\\S+)>',
      format = '$1',
      highlight = 1,
   },
   -- Then handle URLs not wrapped in brackets
   {
      regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
      format = '$0',
   },
   -- implicit mailto link
   {
      regex = '\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b',
      format = 'mailto:$0',
   },
}

-- and finally, return the configuration to wezterm
return config
