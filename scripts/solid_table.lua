-- Set up a metamethod to guarantee tables have sub-tables when indexed
-- This helps avoid constant validation for indexing nested tables
local dynamic_index = {
    __index = function(self, index)
        local tbl = {}
        rawset(self, index, tbl)
        return tbl
    end
}
script.register_metatable("dynamic_index", dynamic_index)

---Returns a table where indexing always succeeds (initializes and returns an empty table if indexing would normally return nil)
---@return table # the table with our special metatable
return function()
    return setmetatable({}, dynamic_index)
end