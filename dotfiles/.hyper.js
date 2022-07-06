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
const colors = darkColors
const backgroundColor = colors.black
const foregroundColor = colors.white

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
		fontSize: 13,

		// font family with optional fallbacks
		fontFamily: 'MonoLisa-Light',

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

		// custom padding (CSS format, i.e.: `top right bottom left`)
		padding: '13px',

		// the full list. if you're going to provide the full color palette,
		// including the 6 x 6 color cubes and the grayscale map, just provide
		// an array here instead of a color map object
		colors: colors,

		// set to `false` for no bell
		bell: false,

		// if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
		copyOnSelect: true,

		// if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
		defaultSSHApp: true,

		// if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
		// selection is present (`true` by default on Windows and disables the context menu feature)
		quickEdit: true,

		// shell: "/bin/zsh",
		// for advanced config flags please refer to https://hyper.is/#cfg
		lineHeight: 1.4,
	},

	keymaps: {
		'pane:next': 'cmd+]',
		'pane:prev': 'cmd+[',
	},
}
