--[[
	A private function, it is not exposed directly to the developer.
	It is used to prevent unexpected errors and disallow writing to the table, making it read-only using metatables.
]]

local function Strict(friendlyName : string, lib : {[string] : any?})
	local new = setmetatable(lib, {
		__index = function(self, k)
			if not self[k] then
				warn(("`%s` was not found in table `%s`."):format(k, friendlyName))
			end
		end,
		__newindex = function()
			warn(("You may not write to table `%s`."):format(friendlyName))
		end,
	})
	
	return new
end

return Strict