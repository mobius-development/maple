--[[
	A private function, it is used for abstract markers for the library.
	It is an implementation of JavaScript's Symbol type.
]]

local function Symbol(name : string) 
	local self = newproxy(true)
	
	getmetatable(self).__tostring = function()
		return ('Symbol(%s)'):format(name)
	end
	
	return self
end

return Symbol