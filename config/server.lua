return {
    updateInterval = 5, -- how often to update player data in minutes

    money = {
        ---@alias MoneyType 'cash' | 'bank' | 'crypto'
        ---@alias Money {cash: number, bank: number, crypto: number}
        ---@type Money
        moneyTypes = { cash = 250, bank = 1500, crypto = 0 }, -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
        dontAllowMinus = { 'cash', 'crypto', 'bank' },        -- Money that is not allowed going in minus
        paycheckTimeout = 15,                                 -- The time in minutes that it will give the paycheck
        paycheckSociety = true                                -- If true paycheck will come from the society account that the player is employed at, requires qb-management
    },

    player = {
        hungerRate = 3.6, -- Rate at which hunger goes down.
        thirstRate = 3.8, -- Rate at which thirst goes down.

        ---@enum BloodType
        bloodTypes = {
            'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-',
        },

        ---@alias UniqueIdType 'citizenid' | 'AccountNumber' | 'PhoneNumber' | 'FingerId' | 'WalletId' | 'SerialNumber'
        ---@type table<UniqueIdType, {valueFunction: function}>
        identifierTypes = {
            citizenid = {
                valueFunction = function()
                    return lib.string.random('A.......')
                end,
            },
            AccountNumber = {
                valueFunction = function()
                    return 'MAR' .. math.random(1111, 9999) .. math.random(1111, 9999) .. math.random(11, 99)
                end,
            },
            PhoneNumber = {
                valueFunction = function()
                    return math.random(100, 999) .. math.random(1000000, 9999999)
                end,
            },
            FingerId = {
                valueFunction = function()
                    return lib.string.random('...............')
                end,
            },
            WalletId = {
                valueFunction = function()
                    return 'MV-' .. math.random(11111111, 99999999)
                end,
            },
            SerialNumber = {
                valueFunction = function()
                    return math.random(11111111, 99999999)
                end,
            },
        }
    },


    ---@alias TableName string
    ---@alias ColumnName string
    ---@type [TableName, ColumnName][]
    characterDataTables = {
        { 'bank_accounts_new',         'id' },
        { 'players',                   'citizenid' },
        { 'playerskins',               'citizenid' },
        --{ 'player_mails',              'citizenid' },
        { 'player_outfits',            'citizenid' },
        { 'player_vehicles',           'citizenid' },
        { 'player_groups',             'citizenid' },
        { 'playerskins',               'citizenid' },
        -- evolent_skills
        { 'player_skills',             'char_id' },
        -- mt_containers
        { 'containers',                'owner' },
        -- lation
        { 'lation_laundering',         'player_identifier' },
        { 'lation_selling',            'identifier' },
        { 'lation_detecting',          'identifier' },
        -- mv_fishing
        { 'fishing',                   'user_identifier' },
        -- m_insurance
        { 'm_insurance_health',        'citizenid' },
        { 'm_insurance_registration',  'citizenid' },
        { 'm_insurance_vehicles',      'citizenid' },
        -- phone
        { 'phone_backups',             'id' },
        { 'phone_phones',              'owner_id' },
        -- boosting
        { 'ra_boosting_contracts',     'owner_identifier' },
        { 'ra_boosting_user_settings', 'player_identifier' },
        -- prison
        { 'xt_prison',                 'identifier' },
        -- ps-housing
        { 'properties',                'owner_citizenid' },
        -- trucker job
        { 'trucker_users',             'user_id' },
        -- lunar_contractsheists
        { 'lunar_contracts_profiles',  'identifier' },
    }, -- Rows to be deleted when the character is deleted


    server = {
        pvp = true,                              -- Enable or disable pvp on the server (Ability to shoot other players)
        closed = false,                          -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
        closedReason = 'Server Closed',          -- Reason message to display when people can't join the server
        whitelist = false,                       -- Enable or disable whitelist on the server
        whitelistPermission = 'admin',           -- Permission that's able to enter the server when the whitelist is on
        discord = 'discord.gg/ykp3BjuRkM',       -- Discord invite link
        checkDuplicateLicense = true,            -- Check for duplicate rockstar license on join
        ---@deprecated use cfg ACE system instead
        permissions = { 'god', 'admin', 'mod' }, -- Add as many groups as you want here after creating them in your server.cfg
    },

    characters = {
        playersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
            ['license2:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'] = 5,
        },

        defaultNumberOfCharacters = 1, -- Define maximum amount of default characters (maximum 3 characters defined by default)
    },

    -- this configuration is for core events only. putting other webhooks here will have no effect
    logging = {
        webhook = {
            ['default'] = nil,    -- default
            ['joinleave'] = '',   -- default
            ['ooc'] = nil,        -- default
            ['anticheat'] = '',   -- default
            ['playermoney'] = '', -- default
        },
        role = {}                 -- Role to tag for high priority logs. Roles use <@%roleid> and users/channels are <@userid/channelid>
    },

    giveVehicleKeys = function(src, plate, vehicle)
        return exports['Renewed-Vehiclekeys']:addKey(src, plate)
    end,

    getSocietyAccount = function(accountName)
        return exports['Renewed-Banking']:getAccountMoney(accountName)
    end,

    removeSocietyMoney = function(accountName, payment)
        return exports['Renewed-Banking']:removeAccountMoney(accountName, payment)
    end,

    ---Paycheck function
    ---@param player Player Player object
    ---@param payment number Payment amount
    sendPaycheck = function(player, payment)
        player.Functions.AddMoney('bank', payment, 'Salary')
        exports['lb-phone']:SendNotification(player.PlayerData.source, {
            app = 'Wallet',                                      -- the app to send the notification to (optional)
            title = 'New incoming transfer',                     -- the title of the notification
            content = locale('info.received_paycheck', payment), -- the description of the notification
            icon = './img/icons/apps/Wallet.jpg',                -- the icon of the notification (optional)
        })
        --Notify(player.PlayerData.source, locale('info.received_paycheck', payment))
    end,

    --[[
    sendPaycheck = function(player, payment)
        player.Functions.AddMoney('bank', payment)
        TriggerClientEvent('ox_lib:notify', player.PlayerData.source, {
            title = 'salary',
            description = locale('info.received_paycheck', payment),
            type = 'success',
            position = 'top-right',
            duration = 6000,
            icon = 'sack-dollar',
            iconColor = '#72E68F',
        })
        --Notify(player.PlayerData.source, locale('info.received_paycheck', payment))
    end,
    ]]
}
