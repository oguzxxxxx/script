-- INFO RIGHT HERE --
-- SCRIPT VER 4.10 --
-- PLACE IDS:  
--LOBBY      - 1730877806
--SECOND SEA - 7465136166             
--IMPEL      - 11424731604



local privateserver = "S4xTUhg7G6"
local autoexec = 1
local newspeed = 3000
local UrlSpecial = "https://discord.com/api/webhooks/1245703142843092992/TCRsbBgC9tI992DnhaUXXaMSBuJpnrmXWPSWL4tFCOFgeCFTK68QfjvEb9Tnar_M4LGl" 



if autoexec == 1 then 
	wait(16)
end



local player = game.Players.LocalPlayer
local name = player.Name
local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
local humanoid = character:WaitForChild("Humanoid")
local humrt = character:WaitForChild("HumanoidRootPart")
local tweenservice = game:GetService("TweenService")
local replicatedstorage = game:GetService("ReplicatedStorage")



local teleportedyet = 0
local djcount = 0
local thinktime = 0
local magnitudenumber = 120
local normalmode = 0
local bosstype = 0
local magucd = 0
local totalmagu = 0
local usingkkblade = 1
local killedyet = 0
local speed = 45 
local keypickupped = 0
local tweeningyet = 0
local higher1 = 0.75
local waitformoment32 = 1
local repeatkill = 0
local waitonce = 0
local specialspot = 0
local cframe22 = CFrame.new(0,0,0)
local magucd1 = 0
local waitonce12 = 0
local weaponname = "BlackLeg"
local waitkelvin = 0
local waitwafel = 1




local function geppo()
	if djcount < 4 then
		djcount += 1
	else
		djcount = 0
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humrt = character:WaitForChild("HumanoidRootPart")
		local fun1 = 6.28
		local fun2 = "dash"
		game:GetService("ReplicatedStorage").Events.takestam:FireServer(fun1,fun2)
	end
end

local function geppo1()

	djcount = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character:WaitForChild("HumanoidRootPart")
	local fun1 = 6.28
	local fun2 = "dash"
	game:GetService("ReplicatedStorage").Events.takestam:FireServer(fun1,fun2)

end

local function createbox(cframe,height)
	local cframe = CFrame.new(cframe.X,cframe.Y+height,cframe.Z)
	local x = cframe.X
	local y = cframe.Y 
	local z = cframe.Z
	local name = game.Players.LocalPlayer.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character:WaitForChild("HumanoidRootPart")
	local part = Instance.new("Part")
	part.Size = Vector3.new(30,4,30)
	part.CFrame = CFrame.new(x,y + 5,z)
	part.Parent = workspace
	part.Anchored = true
	part.Transparency = 1
	local part = Instance.new("Part")
	part.Size = Vector3.new(30,4,30)
	part.CFrame = CFrame.new(x,y - 4.5,z)
	part.Parent = workspace
	part.Anchored = true
	part.Transparency = 1
	local part = Instance.new("Part")
	part.Size = Vector3.new(30,6,4)
	part.CFrame = CFrame.new(x,y,z + 13)
	part.Parent = workspace
	part.Anchored = true
	part.Transparency = 1
	local part = Instance.new("Part")
	part.Size = Vector3.new(30,6,4)
	part.CFrame = CFrame.new(x,y,z - 13)
	part.Parent = workspace
	part.Anchored = true
	part.Transparency = 1
	local part = Instance.new("Part")
	part.Size = Vector3.new(4,6,30)
	part.CFrame = CFrame.new(x + 13,y,z)
	part.Parent = workspace
	part.Anchored = true
	part.Transparency = 1
	local part = Instance.new("Part")
	part.Size = Vector3.new(4,6,30)
	part.CFrame = CFrame.new(x - 13,y,z)
	part.Parent = workspace
	part.Anchored = true
	part.Transparency = 1
	local name = game.Players.LocalPlayer.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character:WaitForChild("HumanoidRootPart")
	humrt.CFrame = cframe
end

local function createlongfloor(cframe,height)
	local cframe = CFrame.new(cframe.X,cframe.Y-height,cframe.Z)
	local x = cframe.X
	local y = cframe.Y 
	local z = cframe.Z
	local name = game.Players.LocalPlayer.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character.HumanoidRootPart
	local part = Instance.new("Part")
	part.Size = Vector3.new(10000,4,10000)
	part.CFrame = CFrame.new(x,y,z)
	part.Parent = workspace
	part.Anchored = true
	part.Transparency = 0.9
end

local function maguridding()
	local player = game.Players.LocalPlayer
	local name = player.Name
	local replicatedstorage = game:GetService("ReplicatedStorage"):GetChildren()
	if #replicatedstorage == 0 then 
		print("No here")
	end
	for i,replicatedevent in replicatedstorage do 
		if replicatedevent.Name == name.."|ServerScriptService.Skills.Skills.SkillContainer.Magu-Magu.Magma Swamp" then 
			if replicatedevent:IsA("RemoteFunction") then
				print("Remote")
				replicatedevent:InvokeServer()
			else
				print("Not remote")
			end
		else 
			print("Not finded remote")
		end 					
	end		
	geppo1()
end

local function stackleg()
	wait(5.1)
	local args = {
		[1] = "Concasser",
		[2] = {
			["char"] = game:GetService("Players").LocalPlayer.Character,
			["t"] = 1,
			["en2"] = Vector3.new(-3793.98828125, 20.927303314208984, -5618.5791015625),
			["x0"] = Vector3.new(-3898.217529296875, 49.7537841796875, -5647.49462890625),
			["v0"] = Vector3.new(11.118408203125, 97.0250015258789, 3.08447265625),
			["nt"] = 0,
			["g"] = Vector3.new(0, -196.1999969482422, 0)
		}
	}

	game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
end

if game.PlaceId == 1730877806 then -- LOBBY
	wait(8 * autoexec)
	local fun1 = privateserver
	local fun2 = true
	replicatedstorage.Events.reserved:InvokeServer(fun1)
	wait(0.05)
	player.PlayerGui.chooseType.Frame.RemoteEvent:FireServer(fun2)
elseif game.PlaceId == 7465136166 then -- SECOND SEA
	wait(19 * autoexec)
	local function teleport(cframe)
		workspace.Gravity = 0
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local newcframe = CFrame.new(cframe.X,cframe.Y + 600,cframe.Z)
		humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y + 600,humrt.CFrame.Z)
		wait(1)
		local speedtime = (humrt.Position - newcframe.Position).magnitude
		local tinfo = TweenInfo.new(speedtime/speed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
		local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})

		tween:Play()
		local function tweens()
			if teleportedyet == 0 then 
				geppo()
				wait(0.25)
				tweens()
			else 
				teleportedyet = 0
				humrt.CFrame = CFrame.new(cframe.X,cframe.Y,cframe.Z)
				createbox(cframe,2)
			end
		end
		local function tweencomplete()
			teleportedyet = 1
		end
		tween.Completed:Connect(tweencomplete)
		tweens()
	end
	local cframe = CFrame.new(5866,7,-10227)
	teleport(cframe)
elseif game.PlaceId == 11424731604 then-- IMPEL FARM
	wait(14 * autoexec)
	local function startchecker()
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humrt = character.HumanoidRootPart
		local cframe = CFrame.new(5971,7,-10139)
		local startx = cframe.X
		local starty = cframe.Y 
		local startz = cframe.Z
		local numberrangex =NumberRange.new(startx - 200,startx + 200)
		local numberrangey =NumberRange.new(starty - 200,starty + 200)
		local numberrangez =NumberRange.new(startz - 200,startz + 200)
		local currentx = humrt.CFrame.X
		local currenty = humrt.CFrame.Y
		local currentz = humrt.CFrame.Z
		local checkerx = 0 
		local checkery = 0
		local checkerz = 0
		local function checks() 
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humrt = character.HumanoidRootPart
			local currentx = humrt.CFrame.X
			local currenty = humrt.CFrame.Y
			local currentz = humrt.CFrame.Z
			if currentx < numberrangex.Min or currentx > numberrangex.Max then 


			else 
				checkerx = 1
			end
			if currenty < numberrangey.Min or currenty > numberrangey.Max then 


			else 
				checkery = 1
			end
			if currentz < numberrangez.Min or currentz > numberrangez.Max then 


			else 
				checkerz = 1
			end
			if checkerx == 1 and checkery == 1 and checkerz == 1 then 
				print("Checks end")
			else
				print("Still Checking")
				wait(1)

				checks()
			end
		end
		checks()
	end
	local function Kill(table1,table2,method,cframe1)
		if method == "Magu" then
			
			
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npc = table1[1]
			if npc.Name == "Kelvin, the Nutcracker" then 
				repeatkill = 0
			else 
				repeatkill = 1
			end
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			if magucd == 0 then
				if npc.Name == "Elo The Bunny" then
					humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 12,cframe22.Z)
				else 
					humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 5,cframe22.Z)
				end
				geppo1()
				magucd = 1
				local args = {
					[1] = false,
					[2] = weaponname
				}

				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
				local args = {
					[1] = "Magma Swamp"
				}

				game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
				totalmagu += 1
				wait(0.25)
				geppo1()
				local cframe = cframe22
				createbox(cframe,35)
				wait(0.45)
				local args = {
					[1] = true,
					[2] = weaponname,
					[3] = true
				}
				geppo1()
				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
				geppo1()
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
			humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				geppo1()
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
	humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				geppo1()
			elseif magucd > 0 then

				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 5,cframe22.Z)
				geppo1()
				magucd = 1
				local args = {
					[1] = false,
					[2] = weaponname
				}

				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
				local args = {
					[1] = "Magma Swamp"
				}

				game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
				totalmagu += 1
				wait(0.25)
				geppo1()
				local cframe = cframe22
				createbox(cframe,35)
				wait(0.45)
				local args = {
					[1] = true,
					[2] = weaponname,
					[3] = true
				}
				geppo1()
				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
				geppo1()
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
			humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				geppo1()
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
	humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				wait(0.5)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40 * waitwafel,cframe22.Z)
				geppo1()
			end
		elseif method == "Clicks" then 
			if normalmode == 0 then
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npchum = npc:FindFirstChild("Humanoid")
				local npchumrt = npc:FindFirstChild("HumanoidRootPart")
				local cframe = npchumrt.CFrame
				createbox(cframe,30)
				local function equip()
					local kkblade = character:FindFirstChild("Kraken Blade (Red)")
					if kkblade then 

					else 

						local player = game.Players.LocalPlayer
						local name = player.Name
						local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
						local humanoid = character:WaitForChild("Humanoid")
						local humrt = character:WaitForChild("HumanoidRootPart")
						local bar1 = player.PlayerGui.BackpackGui.Hotbar.One:GetChildren()
						for i,item in bar1 do 
							if item.Name == "Kraken Blade (Red)" then 
								local keycode = Enum.KeyCode.One
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar2 = player.PlayerGui.BackpackGui.Hotbar.Two:GetChildren()
						for i,item in bar2 do 
							if item.Name == "Kraken Blade (Red)" then 
								local keycode = Enum.KeyCode.Two
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar3 = player.PlayerGui.BackpackGui.Hotbar.Three:GetChildren()
						for i,item in bar3 do 
							if item.Name == "Kraken Blade (Red)" then 
								local keycode = Enum.KeyCode.Three
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar4 = player.PlayerGui.BackpackGui.Hotbar.Four:GetChildren()
						for i,item in bar4 do 
							if item.Name == "Kraken Blade (Red)" then 
								local keycode = Enum.KeyCode.Four
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar5 = player.PlayerGui.BackpackGui.Hotbar.Five:GetChildren()
						for i,item in bar5 do 
							if item.Name == "Kraken Blade (Red)" then 
								local keycode = Enum.KeyCode.Five
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar6 = player.PlayerGui.BackpackGui.Hotbar.Six:GetChildren()
						for i,item in bar6 do 
							if item.Name == "Kraken Blade (Red)" then 
								local keycode = Enum.KeyCode.Six
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar7 = player.PlayerGui.BackpackGui.Hotbar.Seven:GetChildren()
						for i,item in bar7 do 
							if item.Name == "Kraken Blade (Red)" then  
								local keycode = Enum.KeyCode.Seven
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar8 = player.PlayerGui.BackpackGui.Hotbar.Eight:GetChildren()
						for i,item in bar8 do 
							if item.Name == "Kraken Blade (Red)" then 
								local keycode = Enum.KeyCode.Eight
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar9 = player.PlayerGui.BackpackGui.Hotbar.Nine:GetChildren()
						for i,item in bar9 do 
							if item.Name == "Kraken Blade (Red)" then 
								local keycode = Enum.KeyCode.Nine
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local args = {
							[1] = false,
							[2] = weaponname
						}

						game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
						wait(0.1)
						local virtualinputservice = game:GetService("VirtualInputManager")
						virtualinputservice:SendMouseButtonEvent(450, 300, 0,true,nil,1)
						wait(0.1)
						virtualinputservice:SendMouseButtonEvent(450, 300, 0,false,nil,1)
						wait(0.25)
						local virtualinputservice = game:GetService("VirtualInputManager")
						virtualinputservice:SendMouseButtonEvent(450, 300, 0,true,nil,1)
						wait(0.1)
						virtualinputservice:SendMouseButtonEvent(450, 300, 0,false,nil,1)
						wait(0.25)
						local args = {
							[1] = true,
							[2] = weaponname,
							[3] = true
						}

						game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
					end
				end
				equip()
				wait(0.1)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = "Sword",
					[4] = {
						[1] = 1,
						[2] = "Ground",
						[3] = "Sword" 
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Ground"
				}
				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = "Sword",
					[4] = {
						[1] = 2,
						[2] = "Ground",
						[3] = "Sword" 
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Ground"
				}
				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = "Sword",
					[4] = {
						[1] = 3,
						[2] = "Ground",
						[3] = "Sword" 
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Ground"
				}
				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = "Sword",
					[4] = {
						[1] = 4,
						[2] = "Ground",
						[3] = "Sword" 
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Ground"
				}
				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = "Sword",
					[4] = {
						[1] = 5,
						[2] = "Ground",
						[3] = "Sword" 
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Ground"
				}
				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
			else 
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npchum = npc:FindFirstChild("Humanoid")
				local npchumrt = npc:FindFirstChild("HumanoidRootPart")
				geppo()
				local function equip()
					local melee = character:FindFirstChild(weaponname)
					if melee then 

					else 
						local player = game.Players.LocalPlayer
						local name = player.Name
						local bar1 = player.PlayerGui.BackpackGui.Hotbar.One:GetChildren()
						for i,item in bar1 do 
							if item.Name == weaponname then 
								local keycode = Enum.KeyCode.One
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar2 = player.PlayerGui.BackpackGui.Hotbar.Two:GetChildren()
						for i,item in bar2 do 
							if item.Name == weaponname then 
								local keycode = Enum.KeyCode.Two
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar3 = player.PlayerGui.BackpackGui.Hotbar.Three:GetChildren()
						for i,item in bar3 do 
							if item.Name == weaponname then 
								local keycode = Enum.KeyCode.Three
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar4 = player.PlayerGui.BackpackGui.Hotbar.Four:GetChildren()
						for i,item in bar4 do 
							if item.Name == weaponname then 
								local keycode = Enum.KeyCode.Four
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar5 = player.PlayerGui.BackpackGui.Hotbar.Five:GetChildren()
						for i,item in bar5 do 
							if item.Name == weaponname then  
								local keycode = Enum.KeyCode.Five
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar6 = player.PlayerGui.BackpackGui.Hotbar.Six:GetChildren()
						for i,item in bar6 do 
							if item.Name == weaponname then  
								local keycode = Enum.KeyCode.Six
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar7 = player.PlayerGui.BackpackGui.Hotbar.Seven:GetChildren()
						for i,item in bar7 do 
							if item.Name == weaponname then 
								local keycode = Enum.KeyCode.Seven
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar8 = player.PlayerGui.BackpackGui.Hotbar.Eight:GetChildren()
						for i,item in bar8 do 
							if item.Name == weaponname then 
								local keycode = Enum.KeyCode.Eight
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local bar9 = player.PlayerGui.BackpackGui.Hotbar.Nine:GetChildren()
						for i,item in bar9 do 
							if item.Name == weaponname then 
								local keycode = Enum.KeyCode.Nine
								local virtualinputservice = game:GetService("VirtualInputManager")
								virtualinputservice:SendKeyEvent(true,keycode,false,nil)
								wait(0.1)
								virtualinputservice:SendKeyEvent(false,keycode, false, nil)

							end
						end
						local args = {
							[1] = false,
							[2] = weaponname
						}

						game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
						wait(0.1)
						local virtualinputservice = game:GetService("VirtualInputManager")
						virtualinputservice:SendMouseButtonEvent(450, 300, 0,true,nil,1)
						wait(0.1)
						virtualinputservice:SendMouseButtonEvent(450, 300, 0,false,nil,1)
						wait(0.25)
						local virtualinputservice = game:GetService("VirtualInputManager")
						virtualinputservice:SendMouseButtonEvent(450, 300, 0,true,nil,1)
						wait(0.1)
						virtualinputservice:SendMouseButtonEvent(450, 300, 0,false,nil,1)
						wait(0.25)
						local args = {
							[1] = true,
							[2] = weaponname,
							[3] = true
						}

						game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
					end
				end
				equip()
				wait(0.25)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = weaponname,
					[4] = {
						[1] = 1,
						[2] = "Air",
						[3] = weaponname 
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Air"
				}


				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = weaponname,
					[4] = {
						[1] = 2,
						[2] = "Air",
						[3] = weaponname 
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Air"
				}
				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = weaponname,
					[4] = {
						[1] = 3,
						[2] = "Air",
						[3] = weaponname
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Air"
				}
				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = weaponname,
					[4] = {
						[1] = 4,
						[2] = "Air",
						[3] = weaponname 
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Air"
				}
				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local npc = table1[1]
				local npccframe = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 7.5,npchumrt.CFrame.Z) 
				humrt.CFrame = npccframe
				local fun1 = {
					[1] = "damage",
					[2] = table2,
					[3] = weaponname,
					[4] = {
						[1] = 5,
						[2] = "Air",
						[3] = weaponname 
					},
					[5] = true,
					[6] = humrt.CFrame,
					["aircombo"] = "Air"
				}
				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(fun1)
				wait(0.1)
				geppo()
			end
		elseif method == "MaguNpc" then 
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npc = table1[1]
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			if magucd1 == 0 then
				magucd1 = 16	
				humrt.CFrame = npchumrt.CFrame
				wait(0.1)
				local args = {
					[1] = false,
					[2] = weaponname
				}

				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
				local args = {
					[1] = "Magma Swamp"
				}

				game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))

				totalmagu += 1
				wait(0.25)
				humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 25,cframe22.Z)
				geppo1()
				local cframe = cframe22
				maguridding()
				createbox(cframe,25)
				wait(0.5)
				local args = {
					[1] = true,
					[2] = weaponname,
					[3] = true
				}
				geppo1()
				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))

			elseif magucd1 > 0 then 
				wait(0.25) 
				magucd1 -=1
				geppo()
			end
		end
	end
	local function killnpc(table1,table2,killdecide,killthink,cframe1)
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local npc = table1[1]
		print(npc)
		if npc == nil then 
			killthink("H/D Nil!")
		end
		local npchum = npc:FindFirstChild("Humanoid")
		if npchum then 
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			if npchumrt then 
				if npchum.Health > 0 then 
					local magnitude = (humrt.Position - npchumrt.Position).magnitude
					if magnitude < magnitudenumber then
						local player = game.Players.LocalPlayer
						local name = player.Name
						local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
						local humanoid = character:WaitForChild("Humanoid")
						local humrt = character:WaitForChild("HumanoidRootPart")
						local function tweens()
							if npc.Name == "Cupid Queen" or npc.Name == "Love Empress" or npc.Name == "Elo The Bunny" or npc.Name == "Santa" or npc.Name == "Krampus, The Ravager" or npc.Name == "Ba'al" or npc.Name == "Demon Jester" or npc.Name == "Jailer Han" or npc.Name == "Head Jailer of Impel Down" or npc.Name == "Blugori" or npc.Name == "Warden of Impel Down, Vera" or npc.Name == "Sphinx" or npc.Name == "Impel Down Elite High Guard" then
								print("BossType!")
								bosstype = 1
							elseif npc.Name == "Kelvin, the Nutcracker" then 
								if waitkelvin == 0 then 
									waitkelvin = 1
									cframe22 = npchumrt.CFrame
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									geppo1()
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									geppo1()
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									wait(0.5)
									humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 40,cframe22.Z)
									geppo1()
								end
								bosstype = 1
							elseif npc.Name == "Mini Bunny" then 
								npc:Destroy()
								killdecide(killthink,{},{},cframe1)
							elseif npc.Name == "Kramprus" then 
								cframe22 = npchumrt.CFrame
								bosstype = 1
							end
							if normalmode == 1 then
							if waitonce12 == 0 then 
								waitonce12 = 1
								wait(0.5)
								humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 35,cframe22.Z)
								wait(0.5)
								humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 35,cframe22.Z)
								wait(0.5)
								humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 35,cframe22.Z)
								wait(0.5)
								humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 35,cframe22.Z)
								wait(0.5)
								humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 35,cframe22.Z)
								wait(0.5)
								humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 35,cframe22.Z)
								wait(0.5)
								humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 35,cframe22.Z)
								wait(0.5)
								humrt.CFrame = CFrame.new(cframe22.X,cframe22.Y + 35,cframe22.Z)
								end
							end
							if bosstype == 1 and normalmode == 0 then
								Kill(table1,table2,"Magu",cframe1)
								local args = {
									[1] = true,
									[2] = weaponname,
									[3] = true
								}
								geppo()
								game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
								killdecide(killthink,{},{},cframe1)
							elseif bosstype == 0 and normalmode == 1 then
								Kill(table1,table2,"Clicks",cframe1)
								local cframe2 = CFrame.new(humrt.CFrame.X,cframe22.Y,humrt.CFrame.Z)
								createbox(cframe2,30 * higher1)

								local args = {
									[1] = true,
									[2] = weaponname,
									[3] = true
								}

								game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
								geppo()
								wait(0.25)
								geppo()
								wait(0.25)
								geppo()
								wait(0.25)
								geppo()
								wait(0.25)
								killdecide(killthink,{},{},cframe1)
							elseif bosstype == 1 and normalmode == 1 then
								Kill(table1,table2,"Clicks",cframe1)
								local cframe2 = CFrame.new(humrt.CFrame.X,cframe22.Y,humrt.CFrame.Z)
								createbox(cframe2,45)

								local args = {
									[1] = true,
									[2] = weaponname,
									[3] = true
								}

								game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
								geppo()
								wait(0.25)
								geppo()
								wait(0.25)
								geppo()
								wait(0.25)
								geppo()
								wait(0.25)
								killdecide(killthink,{},{},cframe1)
							elseif bosstype == 0 and normalmode == 0 then
								Kill(table1,table2,"MaguNpc",cframe1)
								local args = {
									[1] = true,
									[2] = weaponname,
									[3] = true
								}
								geppo()
								game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
								killdecide(killthink,{},{},cframe1)
							end
						end		
						tweens()
					end

				end
			end
		end
		killthink("H/D Nil!")
	end
	local function killdecide(killthink,table1,table2,cframe1)
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local npcs = workspace:WaitForChild("NPCs"):GetChildren()
		local number = 0
		table1 = {}
		table2 = {}
		if #npcs > 0 then
			local function tablefuller()
				for i,npc in npcs do 
					local npchumrt = npc:FindFirstChild("HumanoidRootPart")
					if npchumrt then 
						local npchum = npc:FindFirstChild("Humanoid")
						if npchum then
							if npchum.Health > 0 then
								local magnitude = (humrt.Position - npchumrt.Position).magnitude
								if magnitude < magnitudenumber then
									number+=1
									table.insert(table1,number,npc)
									table.insert(table2,number,npchumrt)
								end
							end
						end
					end
				end
			end
			local function tablelauncher()
				if table1 == "{}" then 
					killthink("H/D Nil!")
				elseif table1[1] == nil then
					killthink("H/D Nil!")
				else
					killnpc(table1,table2,killdecide,killthink,cframe1)
				end
			end
			tablefuller()
			tablelauncher()
		else 
			killthink("Not Finded!")
		end
	end
	local function killthink(reason,cframe1)
		local table1 = {}
		local table2 = {}
		if reason == "Start" then 
			print("Starting Think")
			thinktime = 0
			killdecide(killthink,table1,table2,cframe1)
		elseif reason == "Not Finded" then 
			if thinktime < 6 then
				wait(0.2)
				thinktime += 1
				killdecide(killthink,table1,table2,cframe1)
			else
				print("Not Finded NPCS!")
				killedyet = 1
			end
		elseif reason == "H/D Nil!" then 
			if thinktime < 6 then
				wait(0.25)
				thinktime += 1
				killdecide(killthink,table1,table2,cframe1)
			else
				print("Health Or Distance Nil!")
				killedyet = 1

			end
		else 
			killedyet = 1


		end
	end 
	local function teleportkill(cframe)
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local newcframe = CFrame.new(cframe.X,cframe.Y + 600,cframe.Z)
		humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y + 600,humrt.CFrame.Z)
		wait(0.5)
		local magnitude =(humrt.Position - newcframe.Position).magnitude
		local tinfo = TweenInfo.new(magnitude/speed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
		local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
		local baseparts = workspace:GetDescendants()
		for i,basepart in baseparts do 
			if basepart:IsA("BasePart") then 
				basepart.Transparency = 1
			end
		end
		tween:Play()
		local function tweens()
			if teleportedyet == 0 then 
				geppo()
				wait(0.25)
				tweens()
			else 
				teleportedyet = 0
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y+2,cframe.Z)
				geppo()
				wait(0.25 * waitformoment32)
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y+2,cframe.Z)
				geppo()
				wait(0.25 * waitformoment32)
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y+2,cframe.Z)
				geppo()
				wait(0.25 * waitformoment32)
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y+2,cframe.Z)
				geppo()
				wait(0.25 * waitformoment32)
                humrt.CFrame =CFrame.new(cframe.X,cframe.Y+2,cframe.Z)
				geppo()
				wait(0.25 * waitformoment32) 
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y+2,cframe.Z)
				geppo()
				wait(0.25 * waitformoment32)
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y+2,cframe.Z)
				local cframe1 =CFrame.new(cframe.X,cframe.Y + 5,cframe.Z)
				createbox(cframe1,30 * higher1)
				geppo()
				killthink("Start",cframe)
			end
		end
		local function tweencomplete()
			teleportedyet = 1
		end
		tween.Completed:Connect(tweencomplete)
		tweens()
		wait(0.5)
		if repeatkill == 0 then 
			repeatkill = 1 
			teleportkill(cframe)
		elseif repeatkill == 1 then 
			repeatkill = 0
		end
	end
	local function teleportkillspecial(cframe)
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local newcframe = CFrame.new(cframe.X,cframe.Y + 600,cframe.Z)
		humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y + 600,humrt.CFrame.Z)
		wait(0.5)
		local magnitude =(humrt.Position - newcframe.Position).magnitude
		local tinfo = TweenInfo.new(magnitude/speed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
		local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
		local baseparts = workspace:GetDescendants()
		for i,basepart in baseparts do 
			if basepart:IsA("BasePart") then 
				basepart.Transparency = 1
			end
		end
		tween:Play()
		local function tweens()
			if teleportedyet == 0 then 
				geppo()
				wait(0.25)
				tweens()
			else 
				teleportedyet = 0
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y+2,cframe.Z)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				local cframe1 =CFrame.new(cframe.X,cframe.Y + 5,cframe.Z)
				createbox(cframe1,30)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
			end
		end
		local function tweencomplete()
			teleportedyet = 1
		end
		tween.Completed:Connect(tweencomplete)
		tweens()
	end
	local function keyboardE()
		local keycode = Enum.KeyCode.E
		local virtualinputservice = game:GetService("VirtualInputManager")
		virtualinputservice:SendKeyEvent(true,keycode,false,nil)
		wait(1.25)
		virtualinputservice:SendKeyEvent(false,keycode, false, nil)
	end
	local function waitformoment()
		repeat
			wait(0.125)
			print("Waiting")
		until killedyet == 1
		killedyet = 0
		bosstype = 0
		magucd = 0
		waitonce = 0
		waitonce12 = 0
		magucd1 = 0
		maguridding()
		
		print("Done")
	end
	local function teleportE(cframe)
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local newcframe = CFrame.new(cframe.X,cframe.Y + 600,cframe.Z)
		humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y + 600,humrt.CFrame.Z)
		local magnitude =(humrt.Position - newcframe.Position).magnitude
		local tinfo = TweenInfo.new(magnitude/speed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
		local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
		local baseparts = workspace:GetDescendants()
		for i,basepart in baseparts do 
			if basepart:IsA("BasePart") then 
				basepart.Transparency = 1
			end
		end
		tween:Play()
		local function tweens()
			if teleportedyet == 0 then 
				geppo()
				wait(0.25)
				tweens()
			else 
				teleportedyet = 0
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y,cframe.Z)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				createbox(cframe,0)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				geppo()
				wait(0.25)
				keyboardE()

			end
		end
		local function tweencomplete()
			teleportedyet = 1
		end
		tween.Completed:Connect(tweencomplete)
		tweens()
	end
	local function teleportESpecial(cframe)
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local newcframe = CFrame.new(cframe.X,cframe.Y + 50,cframe.Z)
		humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y + 50,humrt.CFrame.Z)
		wait(0.5)
		local magnitude =(humrt.Position - newcframe.Position).magnitude
		local tinfo = TweenInfo.new(magnitude/speed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
		local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
		local baseparts = workspace:GetDescendants()
		for i,basepart in baseparts do 
			if basepart:IsA("BasePart") then 
				basepart.Transparency = 1
			end
		end
		tween:Play()
		local function tweens()
			if teleportedyet == 0 then 
				geppo()
				wait(0.25)
				tweens()
			else 
				teleportedyet = 0
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y + 5,cframe.Z)
				wait(0.5)
				createbox(cframe,5)
				wait(0.25)
				keyboardE()
				wait(0.25)
				keyboardE()
			end
		end
		local function tweencomplete()
			teleportedyet = 1
		end
		tween.Completed:Connect(tweencomplete)
		tweens()
	end
	local function teleport(cframe)
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local newcframe = CFrame.new(cframe.X,cframe.Y + 600,cframe.Z)
		humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y + 600,humrt.CFrame.Z)
		wait(0.5)
		local magnitude =(humrt.Position - newcframe.Position).magnitude
		local tinfo = TweenInfo.new(magnitude/speed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
		local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
		local baseparts = workspace:GetDescendants()
		for i,basepart in baseparts do 
			if basepart:IsA("BasePart") then 
				basepart.Transparency = 1
			end
		end
		tween:Play()
		local function tweens()
			if teleportedyet == 0 then 
				geppo()
				wait(0.25)
				tweens()
			else 
				teleportedyet = 0
				humrt.CFrame =CFrame.new(cframe.X,cframe.Y + 5,cframe.Z)
				wait(0.5)
				createbox(cframe,5)

			end
		end
		local function tweencomplete()
			teleportedyet = 1
		end
		tween.Completed:Connect(tweencomplete)
		tweens()
	end
	local function diffucultset()
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local bar1 = player.PlayerGui.BackpackGui.Hotbar.One:GetChildren()
		for i,item in bar1 do 
			if item.Name == "Magu-Magu" then 
				normalmode = 0
			end
		end
		local bar2 = player.PlayerGui.BackpackGui.Hotbar.Two:GetChildren()
		for i,item in bar2 do 
			if item.Name == "Magu-Magu" then 
				normalmode = 0
			end
		end
		local bar3 = player.PlayerGui.BackpackGui.Hotbar.Three:GetChildren()
		for i,item in bar3 do 
			if item.Name == "Magu-Magu" then 
				normalmode = 0
			end
		end
		local bar4 = player.PlayerGui.BackpackGui.Hotbar.Four:GetChildren()
		for i,item in bar4 do 
			if item.Name == "Magu-Magu" then 
				normalmode = 0
			end
		end
		local bar5 = player.PlayerGui.BackpackGui.Hotbar.Five:GetChildren()
		for i,item in bar5 do 
			if item.Name == "Magu-Magu" then 
				normalmode = 0
			end
		end
		local bar6 = player.PlayerGui.BackpackGui.Hotbar.Six:GetChildren()
		for i,item in bar6 do 
			if item.Name == "Magu-Magu" then 
				normalmode = 0
			end
		end
		local bar7 = player.PlayerGui.BackpackGui.Hotbar.Seven:GetChildren()
		for i,item in bar7 do 
			if item.Name == "Magu-Magu" then 
				normalmode = 0
			end
		end
		local bar8 = player.PlayerGui.BackpackGui.Hotbar.Eight:GetChildren()
		for i,item in bar8 do 
			if item.Name == "Magu-Magu" then 
				normalmode = 0
			end
		end
		local bar9 = player.PlayerGui.BackpackGui.Hotbar.Nine:GetChildren()
		for i,item in bar9 do 
			if item.Name == "Magu-Magu" then 
				normalmode = 0
			end
		end
	end
	local function keypickup()
		local keychecker = workspace.Effects:FindFirstChild("Key")
		if keychecker then
			if keypickupped > 0 then 
				wait(2)
				local key = workspace.Effects:WaitForChild("Key"):WaitForChild("Key")
				local cframe = CFrame.new(key.Position.X,key.Position.Y+2,key.Position.Z)
				teleportESpecial(cframe)
				keypickupped = 2
				keypickup()

			elseif keypickupped == 0 then
				wait(2)
				local key = workspace.Effects:WaitForChild("Key"):WaitForChild("Key")
				local cframe = CFrame.new(key.Position.X,key.Position.Y+2,key.Position.Z)
				teleportESpecial(cframe)
				keypickupped = 1
				wait(1)
				keypickup()
			end
		else
			if keypickupped == 0 then
				wait(1)
				keypickup()
			else
				wait(1)
			end
		end

	end
	---      ---
























	---      ---
	startchecker()
	repeatkill = 1
	waitformoment32 = 3.5
	workspace.Gravity= 0
	wait(3)
	cframe22 =CFrame.new(5866,7,-10227)
	teleportkill(cframe22)
	waitformoment()

	wait(15)
	workspace.Gravity = 0
	keypickup()
	normalmode = 1
	wait(2)
	diffucultset()
	wait(3)
	speed = newspeed
	if normalmode == 1 then 
		local function statsUp()
			local args = {
				[1] = "BlackLeg"
			}

			game:GetService("ReplicatedStorage").Events.learnStyle:FireServer(unpack(args))
			local args = {
				[1] = "BlackLeg"
			}

			game:GetService("ReplicatedStorage").Events.learnSkill:FireServer(unpack(args))
			wait(2)
			
			wait(0.05)
			local fun1 = "FightingStyleMastery"
			local fun2 = nil
			local fun3 = 30
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(fun1,fun2,fun3)
			wait(0.05)
			local fun1 = "Defense"
			local fun2 = nil
			local fun3 = 495
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(fun1,fun2,fun3)
			wait(0.05)
			local fun1 = "Strength"
			local fun2 = nil
			local fun3 = 600
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(fun1,fun2,fun3)
		end
		statsUp()
	end
	workspace.Gravity= 0
	magnitudenumber = 120
	waitformoment32 = 3
	higher1 = 0.6
	wait(2)
	if normalmode == 1 then
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	end
	cframe22 = CFrame.new(2943.087890625, 2129.49365234375, -13818.97265625) -- 1.1
	teleportE(cframe22)
	cframe22 = CFrame.new(2954.192626953125, 2075.445556640625, -13954.1328125) -- 1
	teleportkill(cframe22)
	waitformoment()
	waitformoment32 = 2
	cframe22 = CFrame.new(2952.61328125, 2136.442626953125, -15376.771484375) -- 2.1
	teleportE(cframe22)
	repeatkill = 1
	cframe22 = CFrame.new(2667.587890625, 2074.741455078125, -15512.123046875) -- 2
	teleportkill(cframe22)
	waitformoment()
	wait(6)
	waitformoment32 = 1
	magnitudenumber = 800

	cframe22 = CFrame.new(3194.72216796875, 2380.4306640625, -20271.548828125) -- 3
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(3202.842041015625, 2378.4306640625, -20392.052734375) -- 4
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(3449.654052734375, 2378.4306640625, -20376.408203125) -- 5
	teleportkill(cframe22)
	waitformoment()
	waitformoment32 = 2
	cframe22 = CFrame.new(2871.26025390625, 2384.61376953125, -20370.84375) -- 6
	teleportkill(cframe22)
	waitformoment()
	waitformoment32 = 1.25
	cframe22 = CFrame.new(2917.198974609375, 2378.38037109375, -20600.73046875) -- 7
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(3198.374755859375, 2343.620361328125, -20529.490234375) -- 8
	teleportE(cframe22)
	waitformoment32 = 1.25
	cframe22 = CFrame.new(3198.039306640625, 2378.4306640625, -20395.5) -- 9
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(3199.22607421875, 2378.380859375, -20560.46875) -- 10
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(3197.741943359375, 2375.48095703125, -20838.3671875) -- 11
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(3198.759521484375, 2378.380615234375, -21078.46484375) -- 12
	teleport(cframe22)
	cframe22 = CFrame.new(4976.70849609375, 2306.330810546875, -20745.947265625) -- 13
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(4785.177734375, 2306.330078125, -20766.677734375) -- 14
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(5108.2919921875, 2306.330078125, -20790.15234375) -- 15
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(5165.056640625, 2311.310302734375, -20796.853515625)-- 16
	teleportE(cframe22)
	cframe22 = CFrame.new(4703.20751953125, 2308.577392578125, -20719.33984375)  -- 17
	teleportE(cframe22)
	cframe22 = CFrame.new(4986.65234375, 2306.330078125, -20863.931640625) -- 18.1
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(4850.943359375, 2368.330078125, -21009.361328125) -- 18
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(4763.72021484375, 2398.830078125, -20785.625) -- 19
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(5245.45263671875, 2398.1298828125, -20798.67578125) -- 20
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(5520.41357421875, 2405.830078125, -20803.14453125) -- 21
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(5593.65673828125, 2499.830078125, -20974.90234375) -- 22
	teleportkill(cframe22)
	waitformoment()
	higher1 = -0.6
	waitformoment32 = 0.5
	waitwafel = 1.75
	cframe22 = CFrame.new(5668.29150390625, 2482.162109375, -20476.57421875) -- 23
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(5668.29150390625, 2482.162109375, -20476.57421875) -- 23
	teleportkill(cframe22)
	waitformoment()
	waitwafel = 1
	cframe22 = CFrame.new(5668.52197265625, 2489.330322265625, -20261.974609375) -- 24
	teleport(cframe22)
	waitformoment32 = 1.25
	higher1 = 0.6
	tweeningyet = 1
	cframe22 = CFrame.new(10022.1044921875, 1612.52490234375, -19234.732421875) -- 25
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(9961.470703125, 1628.5535888671875, -19649.857421875) -- 26
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(9700.9345703125, 1628.5537109375, -19692.38671875) -- 27
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(9677.5712890625, 1628.5535888671875, -20237.515625) -- 28
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(10109.9169921875, 1628.5537109375, -20323.015625) -- 29
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(10680.81640625, 1628.5537109375, -20339.556640625) -- 30
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(10938.724609375, 1628.5535888671875, -20506.76171875) -- 31
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(10938.5087890625, 1628.822021484375, -20929.453125) -- 32
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(10619.283203125, 1628.5535888671875, -20985.57421875) -- 33
	teleportkill(cframe22)
	waitformoment()
	waitformoment32 = 1.25
	higher1 = 2
	tweeningyet = 0
	cframe22 = CFrame.new(9952.3251953125, 1644.553466796875, -21947.376953125) -- 34
	teleportkill(cframe22)
	waitformoment()
	waitformoment32 = 1.25
	higher1 = 0.6
	tweeningyet = 1
	cframe22 = CFrame.new(9974.77734375, 1657.553466796875, -22141.06640625) -- 35
	teleport(cframe22)
	cframe22 = CFrame.new(9400.0712890625, 572.8726806640625, -27929.95703125) -- 36
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(10164.9541015625, 573.2198486328125, -27367.369140625) -- 37
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(10644.552734375, 542.719970703125, -27493.0234375) -- 38
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(10604.146484375, 490.7202453613281, -28430.986328125) -- 39
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(10265.3876953125, 460.71990966796875, -28450.2890625) -- 40
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(9735.857421875, 512.72021484375, -28480.580078125) -- 41
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(9634.5390625, 512.7200317382812, -28434.779296875) -- 42
	teleportkill(cframe22)
	waitformoment()
	cframe22 = CFrame.new(9640.421875, 596.3516235351562, -27910.451171875) -- 42.1
	teleportE(cframe22)
	wait(8)
	repeatkill = 1
	cframe22 = CFrame.new(9635.1240234375, 458.86572265625, -27552.8359375) -- 43
	teleportkill(cframe22)
	waitformoment()
	wait(15)
	local function setvariables(webhook)
		local diffuculty = nil
		if normalmode == 1 then 
			diffuculty = "Нормальная"
		else 
			diffuculty = "Кошмар"
		end
		local pointstotal =  game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BattleReportGui"):WaitForChild("Points").Text
		local time1 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BattleReportGui"):WaitForChild("BattleReport"):WaitForChild("LeftContainer"):WaitForChild("Clear Time"):WaitForChild("Display").Text
		local points = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BattleReportGui"):WaitForChild("BattleReport"):WaitForChild("RightContainer"):WaitForChild("Total Score"):WaitForChild("Display").Text
		webhook(diffuculty,time1,points,pointstotal)
	end
	local function webhook(dif,time1,points,pointstotal)
		local response = request({
			Url = UrlSpecial,
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json"
			},
			Body = game.HttpService:JSONEncode({
				content = "",
				embeds = {
					{
						title = "Impel Down Farm",
						description = "Игрок "..name,
						color = 16711680,
						fields = {
							{
								name = "Прошел за "..time1,
								value = "Сложность:"..dif
							},
							{
								name = "Получил "..points,
								value = "Сейчас всего "..pointstotal.." очков"
							}
						}
					}
				},
				username = "Sosal",
				avatar_url = "https://media.discordapp.net/attachments/1092936535298539550/1245737429994967070/cat-with-glasses-suit-holding-glass-champagne_888396-2219.png?ex=6659d6e3&is=66588563&hm=eb63d81ddbd8f0b873f765d2290182097c4c903def5d93b40ec1dad4d18f5515&=&format=webp&quality=lossless",
				attachments = {}
			})
		})
	end
	setvariables(webhook)
	local mythicchest = workspace.Islands:WaitForChild("Impel Base - Finished").Models:FindFirstChild("Mythical Fruit Chest")
	if mythicchest then
		local models = workspace.Islands["Impel Base - Finished"].Models:GetChildren()
		for i,model in models do 
			if model == mythicchest then 

			else 
				model:Destroy()
			end
		end
		wait(2)
		local cframe = mythicchest.Part.CFrame
		teleportE(cframe)
	end
	wait(2)
	local cframe = CFrame.new(6396.14208984375, 657.998046875, -27927.330078125)
	teleportE(cframe)
	workspace.Gravity = 192.6
end
