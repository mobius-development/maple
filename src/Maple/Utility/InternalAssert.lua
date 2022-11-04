--[[
	A private function, it is used as a replacement for the `assert` function.
	`InternalAssert` just uses a different format, it's much more easier than writing this into every 
]]

local function InternalAssert(value : boolean, errorMessage : string)
	if not value then -- Checking if `value` is `true` is much faster than calling `assert()`, plus `InternalAssert` is to replace `assert`.
		error(("Maple: %s This is most likely an internal error, make an issue on GitHub."):format(errorMessage), 3)
	end
end

return InternalAssert