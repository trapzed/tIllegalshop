fx_version 'adamant'

author 'TrapZed#1725'
description 'tIllegalshop'
version '1.0'

game 'gta5'
lua54 'on'

escrow_ignore {
    'shared/sh_config.lua',
    'client/cl_config.lua',
    'server/sv_config.lua'
}

shared_scripts {
    'shared/sh_config.lua',
}

client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua"
}

client_scripts {
    'client/cl_illegalshop.lua',
    'client/cl_config.lua',
}

server_scripts {
    'server/sv_illegalshop.lua',
    'server/sv_config.lua',
}
