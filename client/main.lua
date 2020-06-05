ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)


RegisterCommand("whereami", function()
	print(GetEntityCoords(PlayerPedId()))
end)

Citizen.CreateThread(function()
	local location = Config.Location
	while true do
		Citizen.Wait(4)
		Draw3DText(130.78, 569.41, 183.33, 130.78, 569.41, 183.33, 130.78, 569.41, 183.33, "Press ~r~[E]~w~ to ~g~craft", 0.4)
	end
end)


function Draw3DText(x, y, z, text, scale)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local pX, pY, pZ = table.unpack(GetGameplayCamCoords())
	SetTextScale(scale, scale)
	SettextFont(4)
	SetTextProportional(1)
	SetTextEntry("STRING")
	SetTextCentre(true)
	SetTextColour(255, 255, 255, 215)
	AddTextComponentString(text)
	DrawText(_x, _y)
	local factor = (string.len(text)) / 700
	DrawRect(_x, _y, + 0.0150, 0.06 + factor, 0.03, 41, 11, 41, 100)
end