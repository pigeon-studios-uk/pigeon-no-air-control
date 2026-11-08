Config = {}

-- Also stop drivers rocking an upside-down vehicle back onto its wheels by steering. GTA lets a car on
-- its roof roll itself over; with this on, it stays on its roof until someone flips it another way.
Config.BlockWhenUpsideDown = true

-- Include motorcycles. Leaning a motorbike forward and back in the air is how riders land jumps, so
-- they're left alone by default.
Config.Motorcycles = false

-- Vehicle classes that are always left alone. Aircraft fly with these controls, so they're here.
-- 13 cycles · 14 boats · 15 helicopters · 16 planes · 21 trains
-- The full list: https://docs.fivem.net/natives/?_0x29439776AAA00A62
Config.SkipClasses = { 13, 14, 15, 16, 21 }

-- Vehicles that are always left alone, by spawn name, such as a stunt car for an event. Use {} for none.
Config.SkipVehicles = {
    -- 'bf400',
}

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"
