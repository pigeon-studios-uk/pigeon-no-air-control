fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-no-air-control'
author 'Pigeon Studios'
description 'Stops drivers spinning and flipping cars in mid-air, and rocking upside-down cars back onto their wheels.'
version '0.1.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-no-air-control'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-no-air-control'

client_scripts {
    'configuration/config.lua',
    'client/main.lua',
}

server_scripts {
    'server/version_check.lua',
}
