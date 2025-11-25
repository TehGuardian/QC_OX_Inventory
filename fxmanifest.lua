fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
games { 'gta5', 'rdr3' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
name 'ox_inventory'
author 'Overextended & Quantum Projects'
version '2.44.8-redm'
repository 'https://github.com/communityox/ox_inventory'
description 'Slot-based inventory with item metadata support (FiveM & RedM)'

dependencies {
    '/server:6116',
    '/onesync',
    'oxmysql',
    'ox_lib',
}

shared_script '@ox_lib/init.lua'

ox_libs {
    'locale',
    'table',
    'math',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'init.lua'
}

client_script 'init.lua'

ui_page 'web/build/index.html'

files {
    'client.lua',
    'server.lua',
    'locales/*.json',
    'web/build/index.html',
    'web/build/assets/*.js',
    'web/build/assets/*.css',
    'web/build/assets/*.ttf',
    'web/images/*.png',
    'modules/**/shared.lua',
    'modules/**/client.lua',
    'modules/bridge/**/client.lua',
    'modules/bridge/**/server.lua',
    'modules/bridge/**/setup.lua',
    'data/*.lua',
}
