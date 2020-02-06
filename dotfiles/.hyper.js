// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

const darkColors = {
  black: '#282828',
  red: '#cc241d',
  green: '#98971a',
  yellow: '#d79921',
  blue: '#458588',
  magenta: '#b16286',
  cyan: '#689d6a',
  white: '#ebdbb2',
  orange: '#d65d0e',
  lightBlack: '#928374',
  lightRed: '#fb4934',
  lightGreen: '#b8bb26',
  lightYellow: '#fabd2f',
  lightBlue: '#83a598',
  lightMagenta: '#d3869b',
  lightCyan: '#8ec07c',
  lightWhite: '#d5c4a1',
  lightOrange: '#fe8019',
}
const colors = darkColors;
const backgroundColor = colors.black;
const foregroundColor = colors.white;

// const lightColors = {
//   black: '#282828',
//   red: '#9d0006',
//   green: '#79740e',
//   yellow: '#b57614',
//   blue: '#076678',
//   magenta: '#8f3f71',
//   cyan: '#427b58',
//   white: '#fbf1c7',
//   orange: '#af3a03',
//   lightBlack: '#928374',
//   lightRed: '#cc241d',
//   lightGreen: '#98971a',
//   lightYellow: '#d79921',
//   lightBlue: '#458588',
//   lightMagenta: '#b16286',
//   lightCyan: '#689d6a',
//   lightWhite: '#ebdbb2',
//   lightOrange: '#d65d0e',
// }
// const colors = lightColors;
// const backgroundColor = colors.white;
// const foregroundColor = colors.black;

module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 16,

    // font family with optional fallbacks
    fontFamily: 'Inconsolata-Light',

    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'normal',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: colors.orange,

    // terminal text color under BLOCK cursor
    cursorAccentColor: '#000',

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BEAM',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: foregroundColor,

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: backgroundColor,

    // terminal selection color
    selectionColor: 'rgba(248,28,229,0.3)',

    // border color (window, tabs)
    borderColor: '#333',

    // custom CSS to embed in the main window
    css: `
      .tab_text, .tabs_title {
        color: ${foregroundColor};
      }
      .tab_active .tab_text, .tabs_title {
        color: ${colors.orange};
      }
      .tabs_borderShim {
        border-color: transparent !important;
      }
      .term_fit:not(.term_term) .term_wrapper {
        opacity: 0.7;
      }
      .term_fit.term_active .term_wrapper {
        opacity: 1;
      }
    `,

    // custom CSS to embed in the terminal window
    termCSS: '',

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: colors,

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // PowerShell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: false,

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: true,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    quickEdit: true,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    "pane:next": "cmd+]",
    "pane:prev": "cmd+[",
  },
};