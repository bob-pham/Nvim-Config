return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  dependencies = { 'RchrdAriza/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    local time = os.date '%H:%M'
    local date = os.date '%a %d %b'
    local v = vim.version()
    local version = ' v' .. v.major .. '.' .. v.minor .. '.' .. v.patch

    -- Set header
    dashboard.section.header.val = {
      '',
      '                               ~5J:                         ',
      '                   .....        .5@&J:                      ',
      '                 .:!YB&@&&#P7:    G@@@B:   J?               ',
      '                      .?@@@@@B~   Y@@@@@7  ^@B              ',
      '              .:~~~~^   :@@@7    :@@@@BGY  ^@@#             ',
      '          :?B@@@@@@@&    G@@&?!?G@@@@?    .&@@@Y            ',
      '         ^7?!7?5B&@@@5!!5@@@@@@@@@@@@#~::7&@@@@&  7         ',
      '            .!^   ?@@@@@@@@@@@@@@@@@@@@@@@@@GYPY ^@.        ',
      '         .5&@@#...J@@@@@@@#57~^^!JB@@@@@@@@Y    !@@.        ',
      '        5@@&&&@@@@@@@@@B!.         .J@@@@@@@PJ5&@@&         ',
      '      .BB~.   :&@@@@@#:   :?PGBG?.   :&@@@@@@@@@@@7 :!      ',
      '      :: .P~..^&@@@@G   :B@@@@@@@@^   ~@@@@@@@:  . !@^      ',
      '        !@@@@@@@@@@&   .@@@@P77J&@5   .@@@@@@@Y~~?#@G       ',
      '       :@&J~~?&@@@@J   ?@@@J    7B.   5@@@@@@@@@@@@&.       ',
      '       YY     J@@@@5   7@@@G        :G@@@@@@@@@@@@&.        ',
      '       .  BGG&@@@@@@.   #@@@@GJ!!!Y#@@@@@@@@@@@@@G          ',
      '         :@@&J!J&@@@&.   5@@@@@@@@@@@@@@@@@@@@@&!           ',
      '         :@B    :@@@@&:   .Y&@@@@@@@@@@@@@@@@&J             ',
      '          B. 5GG@@@@@@@Y.    :?B&@@@@@@@@@@#7               ',
      '          .  Y@@P~^^?#@@@P^      :~JG#&@@P^                 ',
      '              5#      P@@@@&J:         ..                   ',
      '            .  .      Y@@@@@@@&B5~                          ',
      '            :77^:::^7#@@@@@@@@@&5:                          ',
      '              ^?PB&@@@@@@@&B5!.                             ',
    }

    dashboard.section.header.opts.hl = "Title"

    -- only for footer
    function centerText(text, width)
      local totalPadding = width - #text
      local leftPadding = math.floor(totalPadding / 2)
      local rightPadding = totalPadding - leftPadding
      return string.rep(' ', leftPadding) .. text .. string.rep(' ', rightPadding)
    end

    dashboard.section.footer.val = {
      centerText('glhf', 50),
      centerText(date, 50),
      centerText(time, 50),
      centerText(version, 50),
    }

    dashboard.section.footer.opts.hl = "Title"
    dashboard.section.buttons.val = {}
    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
