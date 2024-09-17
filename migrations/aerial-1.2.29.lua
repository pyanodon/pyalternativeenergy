if storage.aerials and not storage.aerials.aerial_counts then
    storage.aerials = nil
end

if not storage.aerials then -- Init didn't get run because it's also on_configuration_changed, lmao
    Aerial.events.on_init()
end

-- .init from aerial.lua has already been run at this point
local aerials = storage.aerials

local poles_by_network = aerials.poles_by_network
local accumulators = aerials.accumulators
local aerial_data = aerials.aerial_data
local aerial_counts = aerials.aerial_counts

if storage.aerial_data then -- There's data to migrate
    for unit_number, struct in pairs(storage.aerial_data) do
        local entity = struct.entity
        if not entity or not entity.valid then
            goto continue
        end
        local network_id
        -- First, try the target if we have one
        local target = struct.target
        if target and target.valid then
            network_id = target.electric_network_id
        end
        -- Next, see if there's an accumulator we can get the target from
        -- Yes, the typo is intentional @notnotmelon
        local child_accumulator = struct.acculumator
        if not network_id and child_accumulator and child_accumulator.valid then
            network_id = child_accumulator.electric_network_id
        end
        -- If we have no network, we're just gonna error when the aerial arrives
        if not network_id then
            goto continue
        end
        --If we have a network_id but no accumulator on the network, let's create it
        -- It's not nil now
        ---@cast network_id integer
        local name = entity.name
        local accumulator = accumulators[network_id][name]
        local first_pole
        -- There's already an accumulator on this network
        if accumulator then
            goto skip_accumulator
        end
        -- Is there a pole we can use for placement?
        first_pole = poles_by_network[network_id][1]
        first_pole = first_pole and first_pole.entity
        -- Yep
        if first_pole and first_pole.valid then
            accumulator = entity.surface.create_entity{
                name = name .. '-accumulator',
                position = first_pole.position,
                force = entity.force,
                create_build_effect_smoke = false
            }
            accumulator.destructible = false
            accumulator.operable = false
            accumulator.power_production = 0
            accumulator.power_usage = 0
            accumulators[network_id][name] = accumulator
        end
        ::skip_accumulator::
        -- Finally, move the relevant data into the new table
        aerial_data[unit_number] = {
            entity = entity,
            target = target,
            network_id = network_id,
            previous_position = struct.previous_position,
            starting_position = struct.starting_position,
            lifetime_generation = struct.lifetime_generation,
            last_20 = struct.last_20
        }
        -- and add to our counts
        aerial_counts[network_id][name] = (aerial_counts[network_id][name] or 0) + 1
        ::continue::
    end
    -- Update the accumulators
    for network_id, type_list in pairs(aerial_counts) do
        for type_name, type_count in pairs(type_list) do
            local accumulator = accumulators[network_id][type_name]
            if accumulator and accumulator.valid then
                accumulator.electric_buffer_size = accumulator.prototype.electric_energy_source_prototype.buffer_capacity * type_count
                accumulator.energy = accumulator.electric_buffer_size
            end
        end
    end
    storage.aerial_data = nil
end

-- Migrate the base (launch base thing) data
if storage.aerial_base_data then
    aerials.base_data = storage.aerial_base_data
    storage.aerial_base_data = nil
end

storage.last_aerial = nil
storage.all_electric_poles = nil
storage.electric_networks = nil
storage.existing_turbines_invalid = nil
storage.surfaces_to_refresh = nil
storage.existing_turbines = nil
storage.electric_network_id_override = nil