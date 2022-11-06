# Hello, world

The ["Hello, world" program](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program) is ubiquitously known - for every language and tool, there is a guaranteed **"Hello, world" program** for it. These programs are also excellent ways of expressing your syntactical features in short, concise forms.

The **"Hello, world" program** in Maple is simple:

```lua title="hello_world.luau"
local Maple = require(path.to.module)
local App, Text = Maple.App, Maple.Text

local Model = App({
    HelloWorld = Text("Hello, world")
})

Model 
    :render()
    :mount(game.Players.LocalPlayer.PlayerGui)
```

Let's compare this to Roact:

```lua title="hello_world.luau"
local Roact = require(path.to.module)

local app = Roact.createElement("ScreenGui", {}, {
    HelloWorld = Roact.createElement("TextLabel", {
        Size = UDim2.new(0, 400, 0, 300),
        Text = "Hello, Roact!"
    })
})

Roact.mount(app, game.Players.LocalPlayer.PlayerGui)
```

Maple achieves what you would in Roact in 198 characters compared to 269 characters, and has a much more versatile and simple syntax.