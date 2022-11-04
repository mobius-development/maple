--[[
	`Text` is the constructor for the scalar widget `Text`. 
	It returns a table detailing the widget's name, properties, and associated Roblox instance.
	
	This table should never be directly indexed (e.g. Text().Name), instead should be associated in App collections and rendered later.
]]

local Package = script.Parent.Parent
local assert = require(Package.Utility.InternalAssert)
local Defaults = require(Package.Utility.ScalarDefaults)

local function Text(properties)
	assert(
		typeof(properties) == 'string' or typeof(properties) == 'table',
		('`properties` must be a `string` or `table`, got %s.'):format(typeof(properties))
	)

	local TextLabel = {
		Name = properties.Name, 
		Properties = properties,
		Instance = Instance.new("TextLabel") 
	}

	--[[
		If properties is a table, then we'll iterate through the table and apply the properties from the table to the Instance in TextLabel, to be later rendered.
		Else, (properties is a string, since we asserted earlier that properties is either a string or table), we will get the ScalarWidget's default properties from Utility.
	]]

	if typeof(properties) == 'table' then
		for property, value in pairs(properties) do
			local Instance = TextLabel.Instance

			if Instance[property] then
				if typeof(Instance[property]) ~= 'RBXScriptSignal' then
					if typeof(value) == typeof(Instance[property]) then

					end
				else
					if typeof(value) == 'function' then
						Instance[property]:Connect(value)
					end
				end
			end
		end
	else
		local Instance = TextLabel.Instance

		for property, value in pairs(Defaults.TextLabel) do
			Instance[property] = value
		end
	end

	return TextLabel
end

return Text