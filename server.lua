ESX = exports["es_extended"]:getSharedObject()

CreateThread(function()
    while true do
        for k,players in pairs(GetPlayers()) do
            local xPlayer = ESX.GetPlayerFromId(players)

			if xPlayer then
				local hasItem = xPlayer.getInventoryItem(Config.Item).count

				if hasItem then
					xPlayer.removeAccountMoney(Config.Account, Config.Price)
					TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, Translation[Config.Locale]['title'], Translation[Config.Locale]['subtitle'], Translation[Config.Locale]['message'], Config.Icon, 1)
				end
			end
        end

        Wait(Config.Interval * 1000 * 60)
    end
end)