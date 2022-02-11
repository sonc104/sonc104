local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local EspName = Instance.new("TextButton")
local Fullbright = Instance.new("TextButton")
local InfiniteJump = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local OpenMain = Instance.new("Frame")
local Open = Instance.new("TextButton")

local uicorner = Instance.new("UICorner")
uicorner.Parent = Main
local uicorner2 = Instance.new("UICorner")
uicorner2.Parent = Name
local uicorner3 = Instance.new("UICorner")
uicorner3.Parent = Close
local uicorner4 = Instance.new("UICorner")
uicorner4.Parent = EspName
local uicorner22 = Instance.new("UICorner")
uicorner22.Parent = Fullbright
local uicorner24 = Instance.new("UICorner")
uicorner24.Parent = Speed
local uicorner245 = Instance.new("UICorner")
uicorner245.Parent = OpenMain
local uicornerwww = Instance.new("UICorner")
uicornerwww.Parent = Jump

--script by sonc104

ScreenGui.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Main.BackgroundTransparency = 0.700
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 4
Main.Position = UDim2.new(0.415615141, 0, 0.431466043, 0)
Main.Size = UDim2.new(0, 616, 0, 175)
Main.Visible = false
Main.Active = true
Main.Draggable = true

Name.Name = "Name"
Name.Parent = Main
Name.BackgroundColor3 = Color3.fromRGB(127, 127, 127)
Name.BackgroundTransparency = 0.500
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 4
Name.Position = UDim2.new(0.0108362176, 0, 0.0366899744, 0)
Name.Size = UDim2.new(0, 601, 0, 50)
Name.Font = Enum.Font.Bangers
Name.Text = "NANNY EXPLOIT - Cred : Sonc104#1127"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextStrokeTransparency = 0.000
Name.TextWrapped = true

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
Close.BackgroundTransparency = 0.500
Close.Position = UDim2.new(0.760303557, 0, 0.0829397738, 0)
Close.Size = UDim2.new(0, 131, 0, 32)
Close.Font = Enum.Font.Bangers
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextStrokeTransparency = 0.000
Close.TextWrapped = true
Close.MouseButton1Down:connect(function()
	Main.Visible = false
	OpenMain.Visible = true
end)

EspName.Name = "Esp"
EspName.Parent = Main
EspName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EspName.BackgroundTransparency = 0.900
EspName.BorderColor3 = Color3.fromRGB(0, 0, 0)
EspName.BorderSizePixel = 5
EspName.Position = UDim2.new(0.441676348, 0, 0.711077869, 0)
EspName.Size = UDim2.new(0, 70, 0, 50)
EspName.Font = Enum.Font.Bangers
EspName.Text = "Esp"
EspName.TextColor3 = Color3.fromRGB(255, 255, 255)
EspName.TextScaled = true
EspName.TextSize = 14.000
EspName.TextStrokeTransparency = 0.000
EspName.TextWrapped = true
EspName.MouseButton1Down:connect(function()
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v ~= game:GetService("Players").LocalPlayer then
    local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
--Properties:
BillboardGui.Parent = v.Character
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 0
BillboardGui.Size = UDim2.new(0, 200, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 4, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.TextColor3 = Color3.new(0, 1, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.Text = v.Name
end
end
end)

Fullbright.Name = "Fullbright"
Fullbright.Parent = Main
Fullbright.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fullbright.BackgroundTransparency = 0.900
Fullbright.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fullbright.BorderSizePixel = 5
Fullbright.Position = UDim2.new(0.440841585, 0, 0.351881504, 0)
Fullbright.Size = UDim2.new(0, 70, 0, 50)
Fullbright.Font = Enum.Font.Bangers
Fullbright.Text = "Fullbright"
Fullbright.TextColor3 = Color3.fromRGB(255, 255, 255)
Fullbright.TextScaled = true
Fullbright.TextSize = 14.000
Fullbright.TextStrokeTransparency = 0.000
Fullbright.TextWrapped = true
Fullbright.MouseButton1Down:connect(function()
if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
end)

InfiniteJump.Name = "InfiniteJump"
InfiniteJump.Parent = Main
InfiniteJump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfiniteJump.BackgroundTransparency = 0.900
InfiniteJump.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfiniteJump.BorderSizePixel = 5
InfiniteJump.Position = UDim2.new(0.62244463, 0, 0.54112041, 0)
InfiniteJump.Size = UDim2.new(0, 200, 0, 50)
InfiniteJump.Font = Enum.Font.Bangers
InfiniteJump.Text = "Inf Jump"
InfiniteJump.TextColor3 = Color3.fromRGB(255, 255, 255)
InfiniteJump.TextScaled = true
InfiniteJump.TextSize = 14.000
InfiniteJump.TextStrokeTransparency = 0.000
InfiniteJump.TextWrapped = true
InfiniteJump.MouseButton1Down:connect(function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
local InfiniteJump = CreateButton("Infinite Jump: Off", StuffFrame)
InfiniteJump.Position = UDim2.new(0,10,0,130)
InfiniteJump.Size = UDim2.new(0,150,0,30)
InfiniteJump.MouseButton1Click:connect(function()
	local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
	local new = state == "Off" and "On" or state == "On" and "Off"
	InfiniteJumpEnabled = new == "On"
	InfiniteJump.Text = "Infinite Jump: " .. new
end)
end)

Speed.Name = "Speed"
Speed.Parent = Main
Speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Speed.BackgroundTransparency = 0.900
Speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
Speed.BorderSizePixel = 5
Speed.Position = UDim2.new(0.0523065329, 0, 0.54112041, 0)
Speed.Size = UDim2.new(0, 200, 0, 50)
Speed.Font = Enum.Font.Bangers
Speed.Text = "Speed"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextScaled = true
Speed.TextSize = 14.000
Speed.TextStrokeTransparency = 0.000
Speed.TextWrapped = true
Speed.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

Jump.Name = "HighJump"
Jump.Parent = Main
Jump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Jump.BackgroundTransparency = 0.900
Jump.BorderColor3 = Color3.fromRGB(0, 0, 0)
Jump.BorderSizePixel = 5
Jump.Position = UDim2.new(0.0523065329, 0, 0.84112041, 0)
Jump.Size = UDim2.new(0, 200, 0, 50)
Jump.Font = Enum.Font.Bangers
Jump.Text = "High Jump"
Jump.TextColor3 = Color3.fromRGB(255, 255, 255)
Jump.TextScaled = true
Jump.TextSize = 14.000
Jump.TextStrokeTransparency = 0.000
Jump.TextWrapped = true
Jump.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 200
end)


OpenMain.Name = "OpenMain"
OpenMain.Parent = ScreenGui
OpenMain.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
OpenMain.BackgroundTransparency = 0.600
OpenMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenMain.BorderSizePixel = 5
OpenMain.Position = UDim2.new(-1.86264515e-09, 0, 0.423122764, 0)
OpenMain.Size = UDim2.new(0, 124, 0, 42)
OpenMain.Active = true
OpenMain.Draggable = true

Open.Name = "Open"
Open.Parent = OpenMain
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.BackgroundTransparency = 1.000
Open.Position = UDim2.new(-0.00319354795, 0, -0.0125238299, 0)
Open.Size = UDim2.new(0, 124, 0, 42)
Open.Font = Enum.Font.Arcade
Open.Text = " Open"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextStrokeTransparency = 0.000
Open.TextWrapped = true
Open.MouseButton1Down:connect(function()
	OpenMain.Visible = false
	Main.Visible = true
end)
