--[[
 Fix case where we accidentally placed accumulators in the table without specifying their network
--]]
if storage.aerials and storage.aerials.accumulators then
    for network_id, table_entry in pairs(storage.aerials.accumulators) do
        if table_entry.type then
            storage.aerials.accumulators[ network_id ] = nil
            if table_entry.valid and table_entry.electric_network_id then
                log("found an oopsie")
                -- Migrate to the correct place in the structure if possible
                if storage.aerials.accumulators[ table_entry.electric_network_id ][ table_entry.name ] then
                    table_entry.destroy()
                else
                    storage.aerials.accumulators[ table_entry.electric_network_id ][ table_entry.name ] = table_entry
                end
            end
        end
    end
end
