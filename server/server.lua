ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('esx:Armero')
AddEventHandler('esx:Armero', function(item, price, amount)
	 local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_police', function(account)
		account.addMoney(price)
		end)
		if xPlayer.getMoney() >= price then
		--if Config.ArgentSale then
			--if xPlayer.getAccount('black_money').money >= price then
			--xPlayer.removeAccountMoney('black_money', price)
			xPlayer.removeMoney(price)
			xPlayer.addInventoryItem(item, amount)
			TriggerClientEvent('esx:showNotification', _source, "~g~Gracias por visitarnos, vuelve pronto" )
		else
			TriggerClientEvent('esx:showNotification', _source, "~s~Te falta dinero")

		end
end)

--[[
]]
