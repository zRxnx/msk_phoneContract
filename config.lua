local seconds, minutes, hours = 1000, 60000, 3600000
Config = {}

Config.es_extended = 'es_extended' --| If you changed the folder name of es_extended, change it also here.
----------------------------------------------------------------
Config.Locale = 'en' -- Select your language (en, de, fr, es)
----------------------------------------------------------------
Config.Item = 'phone' -- Enter the name of your phone item
----------------------------------------------------------------
Config.Account = 'bank' -- Choose the account where the cost should be paid (money, bank, black_money)
Config.Interval = 60 * minutes -- Interval when the player have to pay its contract
Config.Price = 250 -- How much should the contract cost?
----------------------------------------------------------------
Config.Icon = 'CHAR_CHAT_CALL'    -- Select the icon for the paid notification