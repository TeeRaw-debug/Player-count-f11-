-- FiveM F11 Menu Script for ESX and QBCore

local ESX = nil
local QBCore = nil
local players = {}

if GetResourceState('es_extended') == 'started' then
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
elseif GetResourceState('qb-core') == 'started' then
    QBCore = exports['qb-core']:GetCoreObject()
end

RegisterCommand('showplayers', function()
    players = GetPlayers()
    SendNUIMessage({
        action = 'open',
        players = players
    })
    SetNuiFocus(true, true)
end, false)

RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 344) then -- F11 key
            ExecuteCommand('showplayers')
        end
    end
end)

AddEventHandler('playerConnecting', function()
    players = GetPlayers()
    SendNUIMessage({
        action = 'update',
        players = players
    })
end)

AddEventHandler('playerDropped', function()
    players = GetPlayers()
    SendNUIMessage({
        action = 'update',
        players = players
    })
end)

function GetPlayers()
    local players = {}
    for _, playerId in ipairs(GetActivePlayers()) do
        table.insert(players, {
            id = playerId,
            name = GetPlayerName(playerId)
        })
    end
    return players
end