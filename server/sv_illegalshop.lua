ESX = nil

TriggerEvent(Config.Events["esx:getSharedObject"], function(obj) ESX = obj end)

RegisterNetEvent('tIllegalshop:ShopDrug')
AddEventHandler('tIllegalshop:ShopDrug', function(ITEM,price,labelSelected)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local blackMoney = xPlayer.getAccount(Config.ArgentSale)

    if blackMoney.money >= price then

        xPlayer.removeAccountMoney(Config.ArgentSale, price)
        xPlayer.addInventoryItem(ITEM, 1)
        TriggerClientEvent(Config.Events["esx:showNotification"], source, "~r~-" .. price .."$~w~")
        TriggerClientEvent(Config.Events["esx:showNotification"], source, "~w~Vous avez reçu 1 ~g~" .. labelSelected .. "~w~ !")

    else
         TriggerClientEvent(Config.Events["esx:showNotification"], source, "Vous n'avez assez ~r~d\'argent sale")
    end
end)

RegisterNetEvent('tIllegalshop:ShopWeapon')
AddEventHandler('tIllegalshop:ShopWeapon', function(ITEM,price,labelSelected)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local blackMoney = xPlayer.getAccount(Config.ArgentSale)

    if blackMoney.money >= price then

        xPlayer.removeAccountMoney(Config.ArgentSale, price)
        --
        -- Pour changer le nombre de munitions à l'achat, modifiez le 1 en dessous
        --
        -- Si vos armes NE SONT PAS en ITEMS :
        -- xPlayer.addWeapon(ITEM, 1)

        -- Si vos armes sont en ITEMS :
        xPlayer.addInventoryItem(ITEM, 1)

        TriggerClientEvent(Config.Events["esx:showNotification"], source, "~r~-" .. price .."$~w~")
        TriggerClientEvent(Config.Events["esx:showNotification"], source, "~w~Vous avez reçu 1 ~g~" .. labelSelected .. "~w~ !")

    else
         TriggerClientEvent(Config.Events["esx:showNotification"], source, "Vous n'avez assez ~r~d\'argent sale")
    end
end)

print("")
print("[^5tIllegalshop^7] - Made by TrapZed#1725^7")
print("")