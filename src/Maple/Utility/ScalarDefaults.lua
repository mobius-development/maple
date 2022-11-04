--[[
	This module holds values about defaults for scalar widgets.
	Some widgets can be constructed with string or no arguments, in that case, these defaults will be used for the widget instead.
]]

return {
	TextLabel = {
		Size = UDim2.new(0, 200, 0, 100),
		Position = UDim2.new(0, 100, 0, 100),
		BorderSizePixel = 0,
		BackgroundColor = Color3.fromRGB(255, 255, 255)
	}
}