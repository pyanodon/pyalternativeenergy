---@diagnostic disable-next-line: assign-type-mismatch
---@type pyModData
local mod_data = data.raw["mod-data"].pyanodons.data

---@class (partial) pyModData
---@field microwave_reciever MicrowaveRecieverData

---@class MicrowaveRecieverData
---@field max_satellites_pre_reciever uint
---@field production_per_satellite data.Energy

mod_data.microwave_reciever = {
    max_satellites_pre_reciever = 15,
    production_per_satellite = "800kW"
}

if helpers.stage == "prototype" then
    py.yafc_integrations.pyalternativeenergy_microwave_reciever = function()
        ENTITY("microwave-receiver").energy_production = tostring(mod_data.microwave_reciever.max_satellites_pre_reciever * util.parse_energy(mod_data.microwave_reciever.production_per_satellite)) .. "W"
    end
end
