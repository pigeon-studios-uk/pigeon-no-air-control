--[[
    Pigeon No Air Control: client.

    In GTA, a driver can spin, flip and roll their car in mid-air with the steering and lean controls, and
    rock a car on its roof back onto its wheels. While the player is driving a vehicle that's in the air
    (and, with Config.BlockWhenUpsideDown, one that's upside down), those controls are switched off, so a
    car goes where its jump sends it.

    Outside a vehicle, and in skipped ones, it only checks four times a second.
]]

local IDLE_MS = 250
local MOTORCYCLES = 8

-- INPUT_VEH_MOVE_LR, _UD, _UP_ONLY, _DOWN_ONLY, _LEFT_ONLY, _RIGHT_ONLY: steering and leaning.
local MOVE_CONTROLS = { 59, 60, 61, 62, 63, 64 }

local skipClasses, skipVehicles = {}, {}
for _, class in ipairs(Config.SkipClasses or {}) do skipClasses[tonumber(class)] = true end
for _, name in ipairs(Config.SkipVehicles or {}) do skipVehicles[joaat(name) & 0xFFFFFFFF] = true end
if not Config.Motorcycles then skipClasses[MOTORCYCLES] = true end

local function covered(vehicle)
    return not skipClasses[GetVehicleClass(vehicle)] and not skipVehicles[GetEntityModel(vehicle) & 0xFFFFFFFF]
end

local function block()
    for _, control in ipairs(MOVE_CONTROLS) do DisableControlAction(0, control, true) end
end

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local vehicle = IsPedInAnyVehicle(ped, false) and GetVehiclePedIsIn(ped, false) or 0

        if vehicle ~= 0 and GetPedInVehicleSeat(vehicle, -1) == ped and covered(vehicle) then
            if IsEntityInAir(vehicle) or (Config.BlockWhenUpsideDown and IsEntityUpsidedown(vehicle)) then
                block()
            end
            Wait(0)
        else
            Wait(IDLE_MS)
        end
    end
end)
