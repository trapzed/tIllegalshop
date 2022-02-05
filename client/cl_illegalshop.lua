ESX = nil
ped = nil

local GUI = {}

GUI.Time = 0
labelSelected = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

-- FONCTION DU SHOP ILLEGAL
function tIllegalshop()
    local IllegalShop = RageUI.CreateMenu(Config.PedName, "Tu veux un truc ?")
    local IllegalShopArmes = RageUI.CreateSubMenu(IllegalShop, Config.PedName, "Armes")
    local IllegalShopDrogues = RageUI.CreateSubMenu(IllegalShop, Config.PedName, "Drogues")

    RageUI.Visible(IllegalShop, not RageUI.Visible(IllegalShop))

    while IllegalShop do
        
        Citizen.Wait(0)

        RageUI.IsVisible(IllegalShop, true, true, true, function()
    
                RageUI.Separator("→ ~r~ Vendeur illégal ~s~ ←")
                RageUI.Button("🔪 Armes", nil, {RightLabel = "~g~ »"}, true, function(Hovered, Active, Selected)
                end, IllegalShopArmes)

                RageUI.Button("🧩 Drogues", nil, {RightLabel = "~g~ »"}, true, function(Hovered, Active, Selected)
                end, IllegalShopDrogues)

        end)

        RageUI.IsVisible(IllegalShopArmes, true, true, true, function()
            RageUI.Separator("→ ~y~ Armes ~s~ ←")
            for k,v in pairs(Config.IllegalItem.Armes) do
                RageUI.Button(v.Label, nil, {RightLabel = "~g~"..(v.Price).."$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    labelSelected = v.Label
                    TriggerServerEvent('tIllegalshop:ShopWeapon', v.Name, v.Price, labelSelected)
                    end
                end)
            end
        end)

        RageUI.IsVisible(IllegalShopDrogues, true, true, true, function()
            RageUI.Separator("→ ~g~ Drogues ~s~ ←")
            for k,v in pairs(Config.IllegalItem.Drogues) do
                RageUI.Button(v.Label, nil, {RightLabel = "~g~"..(v.Price).."$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    labelSelected = v.Label
                    TriggerServerEvent('tIllegalshop:ShopDrug', v.Name, v.Price, labelSelected)
                    end
                end)
            end
        end)

        if not RageUI.Visible(IllegalShop) and not RageUI.Visible(IllegalShopArmes) and not RageUI.Visible(IllegalShopDrogues) then
            IllegalShop = RMenu:DeleteType("IllegalShop", true)
        end
    end
end

-- Gestion de l'interaction
Citizen.CreateThread(function()
    while true do

        local interval = 750

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.Position)

            heure		= tonumber(GetClockHours())
            GUI.Time 	= GetGameTimer()

            if Config.Hours then
                if heure >= Config.OpenHours and heure < Config.CloseHours then
                    if dist <= 10 then
                        interval = 1
                        SetEntityVisible(ped, true, 0)

                        if dist <= 1.5 then
                            --ESX.ShowHelpNotification('Appuyez sur ~INPUT_CONTEXT~ pour intéragir')
                            --ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour ~b~intéragir")
                            draw2dText(("Appuyez sur [~o~E~s~] pour parler à " .. Config.PedName), { 0.424, 0.955 } )

                            if IsControlJustReleased(1, 51) then                          
                                tIllegalshop() 	
                            end
                        end
                    else 
                        SetEntityVisible(ped, false, 0)
                    end
                else
                    SetEntityVisible(ped, false, 0)
                end
            else 
                if dist <= 10 then
                    interval = 1
                    SetEntityVisible(ped, true, 0)

                    if dist <= 1.5 then
                        --ESX.ShowHelpNotification('Appuyez sur ~INPUT_CONTEXT~ pour intéragir')
                        --ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour ~b~intéragir")
                        draw2dText(("Appuyez sur [~o~E~s~] pour parler à " .. Config.PedName), { 0.424, 0.955 } )

                        if IsControlJustReleased(1, 51) then                          
                            tIllegalshop() 	
                        end
                    end
                else 
                    SetEntityVisible(ped, false, 0)
                end
            end

        Wait(interval)
    end
end)

-- Création du ped
Citizen.CreateThread(function()
    LoadModel(Config.Ped)
    ped = CreatePed(2, GetHashKey(Config.Ped), Config.Position, Config.Heading, 0, 0)
    DecorSetInt(ped, "Yay", 5431)
    FreezeEntityPosition(ped, 1)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_SMOKING_POT", 0, 1) 
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, 1)
end)

function LoadModel(model)
while not HasModelLoaded(model) do
    RequestModel(model)
    Wait(1)
end
end


function draw2dText(text, pos)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextScale(0.55, 0.55)
	SetTextColour(255, 255, 255, 255)
	SetTextDropShadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()

	BeginTextCommandDisplayText('STRING')
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(table.unpack(pos))
end