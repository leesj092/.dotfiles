local quotesByChad = {
  '🗡️ Why do I always see these things after they\'re done and gone...? 🗡️',
  '🗡️ Whether it suits them or not, people yearn for a dream 🗡️',
  '🐉🔮 Push through the pain. Giving up hurts more. 🔮🐉',
  '🔥 Its the duty of those born strong to help who may be less fortunate 🔥',
  '⛫  It\'s not dying that frightens us. It\'s living without ever having done our best. ⛫',
  '🪽 It\'s us who gives meaning to our comrades\'s lives. 🪽',
  '🪽 If you begin to regret, you\'ll dull your future decisions and let others make your choices for you. All that\'s left for you then is to die. 🪽',
  '👾 The weaker you are, the faster you get thrown away 👾',
  '🪽 If you win, you live. If you lose, you die. If you don\'t fight, you can\'t win 🪽',
  '🍃 Those who do not understand true pain can never understand true peace 🍃',
  '🧿 Are you the strongest because you are _ _ _, or are you _ _ _ because you are the strongest..? 🧿',
}


local function GetGreatestQuote()
  local current_day = os.date("*t").yday
  math.randomseed(current_day)
  local quote_index = math.random(#quotesByChad)
  return quotesByChad[quote_index]
end

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
        },
        footer = {
          '',
          GetGreatestQuote(),
        }
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
};
