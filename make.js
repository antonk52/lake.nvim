if (parseFloat(process.version.slice(1)) < 11) {
    console.error('You need Node.js v11 or newer to run this script.')
    process.exit(1);
}

const fs = require('fs');
const path = require('path');

const palette = require('./palette.json');
const theme = require('./theme.json');

function main() {
    const content = [
        '" ==================================================',
        '"             This is a generated file',
        '"     to regenerate theme run `node ./make.js`',
        '" ==================================================',
        '',
        'let g:lake_palette=' + JSON.stringify(palette),
        'hi clear',
        'syntax reset',
        'let g:colors_name = "lake"',
        '',
        ...getTerminalColors(),
        '',
        ...getHighlights(),
    ]
        .flat()
        .join('\n');

    const filepath = path.resolve(__dirname, './colors/lake.vim');

    fs.writeFileSync(filepath, content);

    console.log('lake.vim has been updated');
}

function getTerminalColors() {
    const colorDefinitions = [
        ['00', '00'],
        ['03', '08'],
        ['05', '07'],
        ['07', '15'],
        ['08', '01'],
        ['0A', '03'],
        ['0B', '02'],
        ['0C', '06'],
        ['0D', '04'],
        ['0E', '05'],
    ].map(([left, right]) =>
        [
            `let s:cterm${left}="${right}"`,
            `let g:lake_cterm${left}="${right}"`,
        ].join('\n'),
    );
    const terminalIndexedColors = [
        '00',
        '08',
        '0B',
        '0A',
        '0D',
        '0E',
        '0C',
        '05',
        '03',
        '08',
        '0B',
        '0A',
        '0D',
        '0E',
        '0C',
        '07',
    ].map((key, i) => `  let g:terminal_color_${i}="${palette[key].gui}"`);
    const terminalAnsiColors = [
        '00',
        '08',
        '0B',
        '0A',
        '0D',
        '0E',
        '0C',
        '05',
        '03',
        '08',
        '0B',
        '0A',
        '0D',
        '0E',
        '0C',
        '07',
    ]
        .map(x => `"${palette[x].gui}"`)
        .join(',');

    return [
        ...colorDefinitions,

        'if has("nvim")',
        ...terminalIndexedColors,
        `  let g:terminal_color_background=g:terminal_color_0`,
        `  let g:terminal_color_foreground=g:terminal_color_5`,
        `  if &background == "light"`,
        `    let g:terminal_color_background=g:terminal_color_7`,
        `    let g:terminal_color_foreground=g:terminal_color_2`,
        `  endif`,

        'elseif has("terminal")',
        `  let g:terminal_ansi_colors=[${terminalAnsiColors}]`,
        'endif',
    ];
}

function getHighlights() {
    return Object.entries(theme).map(([kind, groups]) =>
        Object.keys(groups).map(x => highlightGroup(x, kind)),
    );
}

function highlightGroup(group, kind) {
    const options = Object.entries(theme[kind][group])
        .map(([key, val]) => {
            if (key === 'attr') {
                return `gui=${val} cterm=${val}`;
            }
            return `${key}=${getColorValue(key, val)}`;
        })
        .join(' ');

    return `hi ${group} ${options}`;
}

function getColorValue(key, val) {
    const colorKey = key === 'guisp' ? 'gui' : key.replace(/(fg|bg)$/, '');

    return val in palette ? palette[val][colorKey] : val;
}

main();
