----------------------------------------------------------------------------------------------------------------------------
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Sonc104 Hub - Nanny", 5013109572)

local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Players")
local section2 = page:addSection("Others")

section1:addButton("Inf jump - Geppo", function()
	print("Clicked")
	for i,v in pairs(game.Players:GetChildren()) do
		if v:IsA("Player") then
			local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
	local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1)
	local new = state == "Off" and "On" or state == "On" and "Off"
	InfiniteJumpEnabled = new == "On"
	InfiniteJump.Text = "Infinite Jump: " .. new
			end
	end
end)

section1:addButton("Speed", function()
	print("Clicked")
	for i,v in pairs(game.Players:GetChildren()) do
		if v:IsA("Player") then
			v.Character.Humanoid.WalkSpeed = v.Character.Humanoid.WalkSpeed + 10
			end
	end
end)

section2:addKeybind("Toggle Hub", Enum.KeyCode.RightControl, function()
	print("Activated Keybind")
	venyx:toggle()
end, function()
	print("Changed Keybind")
end)
--page 2
local theme = venyx:addPage("Misc", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end
local GuiSettings = theme:addSection("Gui Setting")
GuiSettings:addButton("Destroy Gui", function()
venyx:Destroy()
end)

-- load
venyx:SelectPage(venyx.pages[1], true)
