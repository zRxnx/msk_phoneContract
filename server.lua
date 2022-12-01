ESX = exports[Config.es_extended]:getSharedObject()

CreateThread(function()
    while true do
		for _, xPlayer in pairs(ESX.GetExtendedPlayers()) do
			if not xPlayer then return end
			local hasItem = xPlayer.getInventoryItem(Config.Item).count

			if hasItem then
				xPlayer.removeAccountMoney(Config.Account, Config.Price)
				TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, Translation[Config.Locale]['title'], Translation[Config.Locale]['subtitle'], string.format(Translation[Config.Locale]['message'], Config.Price), Config.Icon, 1)
			end
		end
        Wait(Config.Interval)
    end
end)