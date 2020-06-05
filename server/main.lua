ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


blueprint = {
    {
        items = ['diamond', 'copper']
        desire = "pistol"
        result = "WEAPON_PISTOL"
    }
}


function CraftItem(desire)
    for k,v in pairs(blueprint) do
        if local desire == v.desire then
        diamond = xPlayer.getInventoryItem(v.items[1])
        copper = xPlayer.getInventoryItem(v.items[2]) then
            if diamond >= 1 and copper >=1 then
        xPlayer.removeInventoryItem([v.items[1],v.items[2]], 1)
        xPlayer.addWeapon(v.result, 100)
        print("gave the user a gun :"..v.desire)
            end
        end
    end
end
RegisterCommand("craft", CraftItem)