ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local Players = ESX.GetPlayers()

        for i = 1, #Players do
            local xPlayer = ESX.GetPlayerFromId(Players[i])
            for k,v in pairs(Config.DupeBlocker) do
                local item = xPlayer.getInventoryItem(v.item)["count"]
                if item >= v.count then
        DropPlayer(xPlayer.source, "Dupe Yapma La Gardass")
            end
            end
        end
    end
end)
