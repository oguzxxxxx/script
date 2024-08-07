-----SCRIPT-VERSION-1.45-----
local idimpel = 11424731604
local idmain =  7465136166
local idlobby = 1730877806
local idlevel = 3978370137
-----                   -----
local privatecode = "0lulaQ6Aed"
local autoexec = 1
-----                   -----
local changingspeed = 1250
local webhookchest = "https://discord.com/api/webhooks/1266038978801307692/N9fhmZlx_JU2LF1Hu_DKew8V7VMcfP86SiJCzGW2e7qfwYVBWAfQjQ0uyNQT1mnEJrxy"
local webhookcomplete = "https://discord.com/api/webhooks/1266038904428167211/T2xGarwIwvisCp1AwDmpie0L-mFBz8-kqy-eRAPOd8LOvcdYITOQW58AlgHUA1ZVM8Dm"
-----                   ----- 







-----                   -----
local player = game.Players.LocalPlayer
local name = player.Name
local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
local humanoid = character:WaitForChild("Humanoid")
local humrt = character:WaitForChild("HumanoidRootPart")
local tweenservice = game:GetService("TweenService")
local replicatedstorage = game:GetService("ReplicatedStorage")
local virtualinputservice = game:GetService("VirtualInputManager")
-----                   -----
local speed = 45
local tweeningyet = 1
local killedyet = 0
local teleportedyet = 0
local dcount = 0
local height = 0
local tableofspots = {
	[1] = CFrame.new(2943.087890625, 2070.49365234375, -13818.97265625), -- 1.1
	[2] = CFrame.new(2954.192626953125, 2070.445556640625, -13954.1328125), --1
	[3] = CFrame.new(2952.61328125, 2134.442626953125, -15376.771484375), -- 2.1
	[4] = CFrame.new(2667.587890625, 2070.741455078125, -15512.123046875), -- 2
	[5] = CFrame.new(3194.72216796875, 2380.4306640625, -20271.548828125), -- 3
	[6] = CFrame.new(3202.842041015625, 2380.4306640625, -20392.052734375), -- 4
	[7] = CFrame.new(3449.654052734375, 2380.4306640625, -20376.408203125), -- 5
	[8] = CFrame.new(2871.26025390625, 2384.61376953125, -20370.84375), -- 6
	[9] = CFrame.new(2917.198974609375, 2378.38037109375, -20600.73046875), -- 7
	[10] = CFrame.new(3198.374755859375, 2343.620361328125, -20529.490234375), -- 8
	[11] = CFrame.new(3198.039306640625, 2378.4306640625, -20395.5), -- 9
	[12] = CFrame.new(3199.22607421875, 2378.380859375, -20560.46875), -- 10
	[13] = CFrame.new(3197.741943359375, 2375.48095703125, -20838.3671875), -- 11
	[14] = CFrame.new(3198.759521484375, 2378.380615234375, -21078.46484375), -- 12
	[15] = CFrame.new(4976.70849609375, 2306.330810546875, -20745.947265625), -- 13
	[16] = CFrame.new(4785.177734375, 2310.330078125, -20766.677734375), -- 14
	[17] = CFrame.new(5108.2919921875, 2310.330078125, -20790.15234375), -- 15
	[18] = CFrame.new(5165.056640625, 2311.310302734375, -20796.853515625), -- 16
	[19] = CFrame.new(4703.20751953125, 2308.577392578125, -20719.33984375), -- 17
	[20] = CFrame.new(4986.65234375, 2306.330078125, -20863.931640625), -- 18.1
	[21] = CFrame.new(4850.943359375, 2366.330078125, -21009.361328125), -- 18
	[22] = CFrame.new(4763.72021484375, 2400.830078125, -20785.625), -- 19
	[23] = CFrame.new(5245.45263671875, 2400.1298828125, -20798.67578125), -- 20
	[24] = CFrame.new(5520.41357421875, 2405.830078125, -20803.14453125), -- 21
	[25] = CFrame.new(5593.65673828125, 2499.830078125, -20974.90234375), -- 22
	[26] = CFrame.new(5668.29150390625, 2482.162109375, -20476.57421875), -- 23
	[27] = CFrame.new(5668.29150390625, 2482.162109375, -20476.57421875), -- 23
	[28] = CFrame.new(5668.52197265625, 2487.330322265625, -20261.974609375), -- 24
	[29] = CFrame.new(10022.1044921875, 1612.52490234375, -19234.732421875), -- 25
	[30] = CFrame.new(9961.470703125, 1630.5535888671875, -19649.857421875), -- 26
	[31] = CFrame.new(9700.9345703125, 1630.5537109375, -19692.38671875), -- 27
	[32] = CFrame.new(9677.5712890625, 1630.5535888671875, -20237.515625), -- 28
	[33] = CFrame.new(10109.9169921875, 1630.5537109375, -20323.015625), -- 29
	[34] = CFrame.new(10680.81640625, 1630.5537109375, -20339.556640625), -- 30
	[35] = CFrame.new(10938.724609375, 1630.5535888671875, -20506.76171875), -- 31
	[36] = CFrame.new(10938.5087890625, 1630.822021484375, -20929.453125), -- 32
	[37] = CFrame.new(10619.283203125, 1630.5535888671875, -20985.57421875), -- 33
	[38] = CFrame.new(9952.3251953125, 1644.553466796875, -21947.376953125), -- 34
	[39] = CFrame.new(9952.3251953125, 1644.553466796875, -21947.376953125), -- 34
	[40] = CFrame.new(9974.77734375, 1657.553466796875, -22141.06640625), -- 35
	[41] = CFrame.new(9400.0712890625, 572.8726806640625, -27929.95703125), -- 36
	[42] = CFrame.new(10164.9541015625, 573.2198486328125, -27367.369140625), -- 37
	[43] = CFrame.new(10644.552734375, 542.719970703125, -27493.0234375), -- 38
	[44] = CFrame.new(10604.146484375, 490.7202453613281, -28430.986328125), -- 39
	[45] = CFrame.new(10265.3876953125, 460.71990966796875, -28450.2890625), -- 40
	[46] = CFrame.new(9735.857421875, 512.72021484375, -28480.580078125), -- 41
	[47] = CFrame.new(9634.5390625, 512.7200317382812, -28434.779296875), -- 41.1
	[48] = CFrame.new(9640.421875, 596.3516235351562, -27910.451171875), -- 42.1
	[49] = CFrame.new(9635.1240234375, 458.86572265625, -27552.8359375), -- 42
	[50] = CFrame.new(6396.14208984375, 645.998046875, -27927.330078125), -- end
}
local cframe = CFrame.new(0,0,0)
local startbegin = 0
local waitforstart = 15
local waitingspot = 48
local waitingcount = 0
local magnitudenumber = 200
local findednpc = 0
local currentnpc = nil
local bomucd = 0
local bomucd1 = 0
local bomustack = 0
local bomustack1 = 8
local tablecount = 0
local height1 = 0
local weaponname = "BlackLeg"
local keypickupped = 0
local krampuscheck = 1
local valuefruit = 1095
local higher = 0
local nightmare = 0
local djcount = 0
local droppingornot = 0
local onspot = 0
local onspotcounter = 0
local onspotcounter0 = 0
local waitonceforkelvin = 0
local teleportedyet2 = 0
local buddhacount = 0
local buddhaarrived = false
local djextra = 0
local inform = nil
local buddhaDamage = nil
-----                   -----
local function geppo()
	task.spawn(function()
		if djcount < 5 then
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
	end)
end
local function geppoextra()
	task.spawn(function()
		
			djextra = 0
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humrt = character:WaitForChild("HumanoidRootPart")
			local fun1 = 6.28
			local fun2 = "dash"
			game:GetService("ReplicatedStorage").Events.takestam:FireServer(fun1,fun2)
		
	end)
end
local function geppo1()
	task.spawn(function()
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humrt = character:WaitForChild("HumanoidRootPart")
		local fun1 = 6.28
		local fun2 = "dash"
		game:GetService("ReplicatedStorage").Events.takestam:FireServer(fun1,fun2)
	end)
end
local function createbox(height2)
	local cframenew = CFrame.new(cframe.X,cframe.Y + (height2),cframe.Z)
	local x = cframenew.X
	local y = cframenew.Y
	local z = cframenew.Z
	local part = Instance.new("Part")
	part.Anchored = true
	part.Transparency = 1
	part.Position = Vector3.new(x,y + 5,z)
	part.Size = Vector3.new(30,4,30)
	part.Parent = workspace
	local part = Instance.new("Part")
	part.Anchored = true
	part.Transparency = 1
	part.Position = Vector3.new(x,y - 5,z)
	part.Size = Vector3.new(30,4,30)
	part.Parent = workspace
	local part = Instance.new("Part")
	part.Anchored = true
	part.Transparency = 1
	part.Position = Vector3.new(x,y,z-13)
	part.Size = Vector3.new(30,6,4)
	part.Parent = workspace
	local part = Instance.new("Part")
	part.Anchored = true
	part.Transparency = 1
	part.Position = Vector3.new(x,y,z+13)
	part.Size = Vector3.new(30,6,4)
	part.Parent = workspace
	local part = Instance.new("Part")
	part.Anchored = true
	part.Transparency = 1
	part.Position = Vector3.new(x-13,y,z)
	part.Size = Vector3.new(4,6,30)
	part.Parent = workspace
	local part = Instance.new("Part")
	part.Anchored = true
	part.Transparency = 1
	part.Position = Vector3.new(x+13,y,z)
	part.Size = Vector3.new(4,6,30)
	part.Parent = workspace
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	humrt.CFrame = CFrame.new(x,y,z)
end
local function impelchecker()
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
			startbegin = 1
			waitforstart = 3
		else

			wait(1)


		end
	end
	checks()
end
local function diffucultselecter()

	if startbegin == 0 then
		local frame = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("DiffChooser")
		if frame then
			startbegin = 1
			wait(1.5)
			local args = {
				[1] = "Nightmare"
			}

			game:GetService("Players").LocalPlayer.PlayerGui.DiffChooser.Replication.RemoteEvent:FireServer(unpack(args))
		else

			impelchecker()
			wait(1)
			diffucultselecter()
		end
	end

end
local function stack()

end
local function stack2()

end
local function kill(method,npc)
	if method == nil then 
	elseif method == "Npc" then
		if buddhacount == 0 then 
			local args = {
				[1] = false,
				[2] = "BlackLeg"
			}

			game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			workspace.Gravity = 0
			buddhacount = 14
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 35,cframe.Z)
			task.spawn(function()
				local buddhaDamage = character:GetAttribute("buddhaDamage") 
				if buddhaDamage < 1500 then 
					
				else 
					local args = {
						[1] = npchumrt.CFrame
					}
					game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
				end
			end)
			wait(1.2)		
		elseif buddhacount == 12 then
			
			local args = {
				[1] = false,
				[2] = "BlackLeg"
			}

			game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			workspace.Gravity = 0
			buddhacount -= 1
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			task.spawn(function()
				local buddhaDamage = character:GetAttribute("buddhaDamage") 
				if buddhaDamage < 1500 then 

				else 
					local args = {
						[1] = npchumrt.CFrame
					}
					game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
				end
			end)
			geppo1()
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 20,npchumrt.CFrame.Z)
			wait(0.6)
			geppo1()
			task.spawn(function()
				local args = {
					[1] = "Palm Strike",
					[2] = {
						["cf"] = humrt.CFrame
					}
				}

				game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
				local args = {
					[1] = CFrame.new(humrt.Position,npchumrt.Position)
				}

				game:GetService("ReplicatedStorage"):FindFirstChild(name.."|ServerScriptService.Skills.Skills.SkillContainer.Buddha-Buddha.Palm Strike.Base"):FireServer(unpack(args))
			end)
			wait(0.6)
		elseif buddhacount == 8 then
			local args = {
				[1] = false,
				[2] = "BlackLeg"
			}

			game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			workspace.Gravity = 0
			buddhacount -= 1
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			task.spawn(function()
				local buddhaDamage = character:GetAttribute("buddhaDamage") 
				if buddhaDamage < 1500 then 

				else 
					local args = {
						[1] = npchumrt.CFrame
					}
					game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
				end
			end)
			geppo1()
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 35,npchumrt.CFrame.Z)
			wait(0.6)
			geppo1()
			task.spawn(function()
				local args = {
					[1] = "Judgement Impact",
					[2] = {
						["cf"] = humrt.CFrame
					}
				}

				game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
				local args = {
					[1] = npchumrt.CFrame
				}
				game:GetService("ReplicatedStorage"):FindFirstChild(name.."|ServerScriptService.Skills.Skills.SkillContainer.Buddha-Buddha.Judgement Impact"):FireServer(unpack(args))
			end)
			wait(0.6)
		elseif buddhacount < 8 then
			local args = {
				[1] = false,
				[2] = "BlackLeg"
			}

			game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			workspace.Gravity = 0
			buddhacount -= 1
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 35,cframe.Z)
			task.spawn(function()
				local buddhaDamage = character:GetAttribute("buddhaDamage") 
				
					local args = {
						[1] = npchumrt.CFrame
					}
					game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
			
			end)
			wait(1.2)
		else 
			local args = {
				[1] = false,
				[2] = "BlackLeg"
			}

			game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			workspace.Gravity = 0
			buddhacount -= 1
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 35,cframe.Z)
			task.spawn(function()
				local buddhaDamage = character:GetAttribute("buddhaDamage") 
				if buddhaDamage < 1500 then 

				else 
					local args = {
						[1] = npchumrt.CFrame
					}
					game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
				end
			end)
			wait(1.2)		
		end
	elseif method == "Boss" then
		local args = {
			[1] = false,
			[2] = "BlackLeg"
		}

		game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
		workspace.Gravity = 0
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local npchum = npc:FindFirstChild("Humanoid")
		local npchumrt = npc:FindFirstChild("HumanoidRootPart")
		humrt.CFrame = CFrame.new(cframe.X,cframe.Y + higher,cframe.Z)
		task.spawn(function()
			local args = {
				[1] = npchumrt.CFrame
			}
			game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
		end)
		wait(1.2)
	elseif method == "Clicks" then
		local function equip()
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
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
		end
		equip()
		workspace.Gravity = 0
		humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 30,cframe.Z)
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local npchum = npc:FindFirstChild("Humanoid")
		local npchumrt = npc:FindFirstChild("HumanoidRootPart")
		task.spawn(function()
			local args = {
				[1] = {
					["cf"] = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 5,npchumrt.CFrame.Z),
					["cf2"] = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 5,npchumrt.CFrame.Z)
				}
			}

			game:GetService("ReplicatedStorage"):FindFirstChild(name.."|ServerScriptService.Skills.Skills.SkillContainer.BlackLeg.Concasser"):InvokeServer(unpack(args))
		end)
		wait(2.5)
	elseif method == "NpcK" then
		local args = {
			[1] = false,
			[2] = "BlackLeg"
		}

		game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
		workspace.Gravity = 0
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local npchum = npc:FindFirstChild("Humanoid")
		local npchumrt = npc:FindFirstChild("HumanoidRootPart")
		local stunnedyet = npc:FindFirstChild("Stun")
		if stunnedyet then
			print("Stunned!")
			wait(0.15)
		else 
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y + higher,cframe.Z)
			local args = {
				[1] = npchumrt.CFrame
			}
			game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
			wait(1.15)

		end
	elseif method == "NpcBar" then
		if inform == true then
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y+30,npchumrt.CFrame.Z)
			geppoextra()
			task.spawn(function()
				local args = {
					[1] = {
						["cf"] = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 5,npchumrt.CFrame.Z),
						["cf2"] = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 5,npchumrt.CFrame.Z)
					}
				}

				game:GetService("ReplicatedStorage"):FindFirstChild(name.."|ServerScriptService.Skills.Skills.SkillContainer.BlackLeg.Concasser"):InvokeServer(unpack(args))
			end)
			wait(0.15)
			local args = {
				[1] = true,
				[2] = "BlackLeg",
				[3] = true
			}

			game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			task.spawn(function()
				local args = {
					[1] = npchumrt.CFrame
				}
				game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
			end)
			wait(0.15)
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y+30,npchumrt.CFrame.Z)
			task.spawn(function()
				local args = {
					[1] = {
						[1] = "swingsfx",
						[2] = "Sword",
						[3] = 1,
						[4] = "Ground",
						[5] = true,
						[6] = game:GetService("ReplicatedStorage").Modules.SwordHandle.Swords.BuddhaMode.Slashes.Dash,
						[7] = 0.9833333492279053,
						[8] = 5
					}
				}

				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(unpack(args))
			end)
			wait(0.15)
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y+30,npchumrt.CFrame.Z)
			task.spawn(function()
				local args = {
					[1] = {
						[1] = "swingsfx",
						[2] = "Sword",
						[3] = 2,
						[4] = "Ground",
						[5] = false,
						[6] = game:GetService("ReplicatedStorage").Modules.SwordHandle.Swords.BuddhaMode.Slashes.Slash2,
						[7] = 1,
						[8] = 5
					}
				}

				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(unpack(args))
			end)
			wait(0.15)
			geppoextra()
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y+30,npchumrt.CFrame.Z)
			task.spawn(function()
				local args = {
					[1] = {
						[1] = "swingsfx",
						[2] = "Sword",
						[3] = 3,
						[4] = "Ground",
						[5] = false,
						[6] = game:GetService("ReplicatedStorage").Modules.SwordHandle.Swords.BuddhaMode.Slashes.Slash3,
						[7] = 1,
						[8] = 5
					}
				}

				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(unpack(args))
			end)
			wait(0.15)
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y+30,npchumrt.CFrame.Z)
			task.spawn(function()
				local args = {
					[1] = {
						[1] = "swingsfx",
						[2] = "Sword",
						[3] = 4,
						[4] = "Ground",
						[5] = false,
						[6] = game:GetService("ReplicatedStorage").Modules.SwordHandle.Swords.BuddhaMode.Slashes.GroundSlash4,
						[7] = 1,
						[8] = 5
					}
				}

				game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(unpack(args))	
			end)
			wait(0.15)
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y+30,npchumrt.CFrame.Z)
		else
			if buddhacount == 0 then 
				local args = {
					[1] = false,
					[2] = "BlackLeg"
				}

				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			workspace.Gravity = 0
			buddhacount = 14
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 550,cframe.Z)
			task.spawn(function()
				local args = {
					[1] = npchumrt.CFrame
				}
				game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
			end)
			wait(1.2)		
			elseif buddhacount == 12 then
				local args = {
					[1] = false,
					[2] = "BlackLeg"
				}

				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			workspace.Gravity = 0
			buddhacount -= 1
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			geppo1()
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 25,npchumrt.CFrame.Z)
			wait(0.6)
			geppo1()
			task.spawn(function()
				local args = {
					[1] = "Palm Strike",
					[2] = {
						["cf"] = humrt.CFrame
					}
				}

				game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
				local args = {
					[1] = CFrame.new(humrt.Position,npchumrt.Position)
				}

				game:GetService("ReplicatedStorage"):FindFirstChild(name.."|ServerScriptService.Skills.Skills.SkillContainer.Buddha-Buddha.Palm Strike.Base"):FireServer(unpack(args))
			end)
			wait(0.6)
			elseif buddhacount == 8 then 
				local args = {
					[1] = false,
					[2] = "BlackLeg"
				}

				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			workspace.Gravity = 0
			buddhacount -= 1
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			geppo1()
			humrt.CFrame = CFrame.new(npchumrt.CFrame.X,npchumrt.CFrame.Y + 25,npchumrt.CFrame.Z)
			wait(0.6)
			geppo1()
			task.spawn(function()
				local args = {
					[1] = "Judgement Impact",
					[2] = {
						["cf"] = humrt.CFrame
					}
				}

				game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
				local args = {
					[1] = npchumrt.CFrame
				}
				game:GetService("ReplicatedStorage"):FindFirstChild(name.."|ServerScriptService.Skills.Skills.SkillContainer.Buddha-Buddha.Judgement Impact"):FireServer(unpack(args))
			end)
			wait(0.6)
			else
				local args = {
					[1] = false,
					[2] = "BlackLeg"
				}

				game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
			workspace.Gravity = 0
			buddhacount -= 1
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
				humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 550,cframe.Z)
			task.spawn(function()
				local args = {
					[1] = npchumrt.CFrame
				}
				game:GetService("Players").LocalPlayer.Backpack["Buddha-Buddha"].stomp:FireServer(unpack(args))
			end)
				wait(1.2)	
	
			end
	      end
	end
end
local function killdecide(killthink)
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local npc = currentnpc
	if npc == nil then 

	else 
		local method = nil
		if npc.Name == "Love Empress" then
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			method = "Boss"
			higher = 650
		
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				inform = character:GetAttribute("InForm")
			if inform == true then
				task.spawn(function()
					local player = game.Players.LocalPlayer
					local name = player.Name
					local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
					local humanoid = character:WaitForChild("Humanoid")
					local humrt = character:WaitForChild("HumanoidRootPart")
					local args = {
						[1] = "Buddha Transformation",
						[2] = {
							[1] =false,
							[2] = humrt.CFrame
						}
					}

					game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
					buddhaarrived = true
					wait(4)
				end)
				wait(0.5)
				end
			
		elseif npc.Name == "Head Jailer of Impel Down" then 
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			method = "Boss"
			higher = 300
			
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				inform = character:GetAttribute("InForm")
				if inform == true then
					task.spawn(function()
						local player = game.Players.LocalPlayer
						local name = player.Name
						local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
						local humanoid = character:WaitForChild("Humanoid")
						local humrt = character:WaitForChild("HumanoidRootPart")
						local args = {
							[1] = "Buddha Transformation",
							[2] = {
								[1] = false,
								[2] = humrt.CFrame
							}
						}

						game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
						buddhaarrived = true
						wait(4)
					end)
					wait(0.5)
				end
		
		elseif npc.Name == "Vera" then
			method = "Clicks"
		elseif npc.Name == "Kelvin, The Nutcracker" then
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			method = "NpcK"
			higher = 350
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
		
				inform = character:GetAttribute("InForm")
				if inform == true then
					task.spawn(function()
						local player = game.Players.LocalPlayer
						local name = player.Name
						local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
						local humanoid = character:WaitForChild("Humanoid")
						local humrt = character:WaitForChild("HumanoidRootPart")
						local args = {
							[1] = "Buddha Transformation",
							[2] = {
								[1] = false,
								[2] = humrt.CFrame
							}
						}

						game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
						buddhaarrived = true
						wait(4)
					end)
					wait(0.5)
				end
		
		elseif npc.Name == "Cupid Queen" or npc.Name == "Santa" or npc.Name == "Kramprus" or npc.Name == "Blugori" or npc.Name == "Demon Jester" or npc.Name == "Ba'al" or npc.Name == "Warden of Impel Down, Vera" or npc.Name == "Jailer Han" or npc.Name == "Impel Down Elite High Guard" then 
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			method = "NpcBar"
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				inform = character:GetAttribute("InForm")
			if inform == false then
				local buddhadamage = character:GetAttribute("buddhaDamage")
				if buddhadamage > 1500 then
				task.spawn(function()	
					local player = game.Players.LocalPlayer
					local name = player.Name
					local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
					local humanoid = character:WaitForChild("Humanoid")
					local humrt = character:WaitForChild("HumanoidRootPart")
					workspace.Gravity = 0
						humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 40,cframe.Z)
						
						local args = {
							[1] = false,
							[2] = "BlackLeg"
						}

						game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
					wait(1)
					local args = {
						[1] = "Buddha Transformation",
						[2] = {
							[1] = true,
							[2] = humrt.CFrame
						}
					}

					game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
					buddhaarrived = true
							wait(4)
					print("Not Enough Damage!")
					
				end)
					wait(5.5)
				end
				end
		else 
			method = "Npc"
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
		
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				inform = character:GetAttribute("InForm")
				if inform == true then
					task.spawn(function()
						local player = game.Players.LocalPlayer
						local name = player.Name
						local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
						local humanoid = character:WaitForChild("Humanoid")
						local humrt = character:WaitForChild("HumanoidRootPart")
						local args = {
							[1] = "Buddha Transformation",
							[2] = {
								[1] = false,
								[2] = humrt.CFrame
							}
						}

						game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
						buddhaarrived = true
						wait(4)
					end)
					wait(0.5)
				end
			end
	
		
		kill(method,npc)
		killthink()
	end
end
local function spotchecker()
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character.HumanoidRootPart
	local startx = cframe.X
	local starty = cframe.Y 
	local startz = cframe.Z
	local numberrangex =NumberRange.new(startx - 5.5,startx + 5.5)
	local numberrangey =NumberRange.new(starty - 40,starty + 40)
	local numberrangez =NumberRange.new(startz - 5.5,startz + 5.5)
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

		else
			if waitingcount >= waitingspot then 

			else
				waitingcount = 0 
				workspace.Gravity = 192.6
				humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 5,cframe.Z)
			end
		end
	end
	checks()
end
local function killthink()
	if waitingcount == 20 then
		workspace.Gravity = 192.6
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 10,cframe.Z)
	elseif waitingcount == 40 then 
		workspace.Gravity = 192.6
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 10,cframe.Z)
	end
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local npcs = workspace:WaitForChild("NPCs"):GetChildren()

	currentnpc = nil
	findednpc = 0
	if #npcs > 0 then 
		for i,npc in npcs do 
			local npchum = npc:FindFirstChild("Humanoid")
			local npchumrt = npc:FindFirstChild("HumanoidRootPart")
			if npchum and npchumrt then 
				local npchealth = npchum.Health
				if npchealth > 0 then
					local magnitudecframe1 = CFrame.new(humrt.CFrame.X,0,humrt.CFrame.Z)
					local magnitudecframe2 = CFrame.new(npchumrt.CFrame.X,0,npchumrt.CFrame.Z)
					local magnitude = (magnitudecframe1.Position - magnitudecframe2.Position).magnitude
					if magnitude <= magnitudenumber then 
						findednpc = 1
						waitingcount = waitingspot
						currentnpc = npc
					else 


					end
				else


				end
			else 

			end
		end
	else


	end
	if findednpc == 1 then 
		killdecide(killthink)
	else 
		if waitingcount >= waitingspot then
			killedyet = 1
		else
			wait(0.125)
			waitingcount += 1
			spotchecker()
			killthink()
		end
	end
end
local function spotchecker1()
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character.HumanoidRootPart
	local startx = cframe.X
	local starty = cframe.Y 
	local startz = cframe.Z
	local numberrangex =NumberRange.new(startx - 5.5,startx + 5.5)
	local numberrangey =NumberRange.new(starty - 40,starty + 40)
	local numberrangez =NumberRange.new(startz - 5.5,startz + 5.5)
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

		else
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y+5,cframe.Z)
			onspotcounter = 0
			wait(3)
			spotchecker1()
		end
	end
	checks()
end
local function spotcheckerSpecial(tp)
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character.HumanoidRootPart
	local startx = cframe.X
	local starty = cframe.Y 
	local startz = cframe.Z
	local numberrangex =NumberRange.new(startx - 5.5,startx + 5.5)
	local numberrangey =NumberRange.new(starty - 5.5,starty + 5.5)
	local numberrangez =NumberRange.new(startz - 5.5,startz + 5.5)
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
		wait(3)
		if checkerx == 1 and checkery == 1 and checkerz == 1 then 

		else
			tp(cframe)
		end
	end
	checks()
end
local function teleportkill(cframe1)
	cframe = cframe1
	geppo1()
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	humrt.CFrame = CFrame.new(cframe.X,cframe.Y+15,cframe.Z)
	workspace.Gravity = 192.6
	killthink()
	tweeningyet = 1
	killedyet = 0
	waitingcount = 0
	bomucd = 0
	bomucd1 = 0
	krampuscheck = 0
	onspotcounter = 0
	local args = {
		[1] = false,
		[2] = weaponname
	}
	game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))

end
local function teleport(cframe1)
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	inform =character:GetAttribute("InForm")
	if inform == true then
		task.spawn(function()
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local args = {
				[1] = "Buddha Transformation",
				[2] = {
					[1] = false,
					[2] = humrt.CFrame
				}
			}

			game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
			buddhaarrived = true
			wait(4)
		end)
		wait(5)
	end
	cframe = cframe1
	geppo1()
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	height = 5
	createbox(height)
	teleportedyet = 1
	onspotcounter = 0
	tweeningyet = 1
	teleportedyet = 0
end
local function cameramove()
	local camera = workspace.CurrentCamera
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")


	local pos = Vector3.new(character.Head.Position.X,character.Head.Position.Y + 15,character.Head.Position.Z)
	local lookAtPos = Vector3.new(character.Head.Position.X,character.Head.Position.Y,character.Head.Position.Z)

	workspace.CurrentCamera.CFrame = CFrame.lookAt(pos, lookAtPos)
end 
local function keyboardE()
	cameramove()
	wait(0.25)
	local keycode = Enum.KeyCode.E
	local virtualinputservice = game:GetService("VirtualInputManager")
	virtualinputservice:SendKeyEvent(true,keycode,false,nil)
	wait(0.2)
	virtualinputservice:SendKeyEvent(false,keycode, false, nil)
	wait(0.3)
	virtualinputservice:SendKeyEvent(true,keycode,false,nil)
	wait(1.5)
	virtualinputservice:SendKeyEvent(false,keycode, false, nil)
end
local function teleportE(cframe1)
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	inform =character:GetAttribute("InForm")
		if inform == true then
			task.spawn(function()
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local args = {
					[1] = "Buddha Transformation",
					[2] = {
						[1] = false,
						[2] = humrt.CFrame
					}
				}

				game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
				buddhaarrived = true
				wait(4)
			end)
			wait(5)
		end
	cframe = cframe1
	geppo1()
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	height = 5
	createbox(height)
	keyboardE()
	keyboardE()
	teleportedyet = 1
	onspotcounter = 0
	tweeningyet = 1
	teleportedyet = 0
end
local function eat()
	local function equip()
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local bar1 = player.PlayerGui.BackpackGui.Hotbar.One:GetChildren()
		for i,item in bar1 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.One
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar2 = player.PlayerGui.BackpackGui.Hotbar.Two:GetChildren()
		for i,item in bar2 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Two
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar3 = player.PlayerGui.BackpackGui.Hotbar.Three:GetChildren()
		for i,item in bar3 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Three
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar4 = player.PlayerGui.BackpackGui.Hotbar.Four:GetChildren()
		for i,item in bar4 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Four
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar5 = player.PlayerGui.BackpackGui.Hotbar.Five:GetChildren()
		for i,item in bar5 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Five
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar6 = player.PlayerGui.BackpackGui.Hotbar.Six:GetChildren()
		for i,item in bar6 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Six
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar7 = player.PlayerGui.BackpackGui.Hotbar.Seven:GetChildren()
		for i,item in bar7 do 
			if item.Name == "Buddha" then  
				local keycode = Enum.KeyCode.Seven
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar8 = player.PlayerGui.BackpackGui.Hotbar.Eight:GetChildren()
		for i,item in bar8 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Eight
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar9 = player.PlayerGui.BackpackGui.Hotbar.Nine:GetChildren()
		for i,item in bar9 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Nine
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
	end
	equip()
	wait(2.5)
	local virtualinputservice = game:GetService("VirtualInputManager")
	virtualinputservice:SendMouseButtonEvent(35, 45, 0,true,nil,1)
	wait(0.1)
	virtualinputservice:SendMouseButtonEvent(35, 45, 0,false,nil,1)
	wait(13)
end
local function learnblackleg()
	local args = {
		[1] = "BlackLeg"
	}

	game:GetService("ReplicatedStorage").Events.learnStyle:FireServer(unpack(args))
	wait(1)
	local fun1 = "FightingStyleMastery"
	local fun2 = nil
	local fun3 = 30
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(fun1,fun2,fun3)
end
local function statsup()
	local fun1 = "Defense"
	local fun2 = nil
	local fun3 = 100
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(fun1,fun2,fun3)
	local fun1 = "Stamina"
	local fun2 = nil
	local fun3 = 100
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(fun1,fun2,fun3)
	local fun1 = "DevilFruitMastery"
	local fun2 = nil
	local fun3 = valuefruit - 200
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(fun1,fun2,fun3)
end
local function teleportESpecial(cframe1)
	cframe = cframe1
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local magnitude = (humrt.Position - cframe.Position).magnitude
	humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y+30,humrt.CFrame.Z)
	local newcframe = CFrame.new(cframe.X,cframe.Y+30,cframe.Z)
	local tinfo = TweenInfo.new(magnitude/speed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
	local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
	geppo1()
	local function tweencomplete()
		tweeningyet = 0

	end
	local function ontweening()
		if tweeningyet == 1 then 
			wait(0.125)
			geppo()
			ontweening()
		else 
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y,cframe.Z)
			height = 2
			createbox(height)
			wait(1)
			keyboardE()
			teleportedyet = 1
		end
	end
	tween:Play()
	tween.Completed:Connect(tweencomplete)
	ontweening()
	local function waitforcomplete()
		print("Wait")
		if teleportedyet == 0 then
			wait(0.125)
			stack2()
			waitforcomplete()
		else 
			tweeningyet = 1
			teleportedyet = 0

		end
	end
	waitforcomplete()
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
local function diffucultchecker()
	local function equip()
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local bar1 = player.PlayerGui.BackpackGui.Hotbar.One:GetChildren()
		for i,item in bar1 do 
			if item.Name == weaponname then 
				nightmare = 1
			end
		end
		local bar2 = player.PlayerGui.BackpackGui.Hotbar.Two:GetChildren()
		for i,item in bar2 do 
			if item.Name == weaponname then 
				nightmare = 1
			end
		end
		local bar3 = player.PlayerGui.BackpackGui.Hotbar.Three:GetChildren()
		for i,item in bar3 do 
			if item.Name == weaponname then 
				nightmare = 1
			end
		end
		local bar4 = player.PlayerGui.BackpackGui.Hotbar.Four:GetChildren()
		for i,item in bar4 do 
			if item.Name == weaponname then 
				nightmare = 1
			end
		end
		local bar5 = player.PlayerGui.BackpackGui.Hotbar.Five:GetChildren()
		for i,item in bar5 do 
			if item.Name == weaponname then 
				nightmare = 1
			end
		end
		local bar6 = player.PlayerGui.BackpackGui.Hotbar.Six:GetChildren()
		for i,item in bar6 do 
			if item.Name == weaponname then 
				nightmare = 1
			end
		end
		local bar7 = player.PlayerGui.BackpackGui.Hotbar.Seven:GetChildren()
		for i,item in bar7 do 
			if item.Name == weaponname then  
				nightmare = 1
			end
		end
		local bar8 = player.PlayerGui.BackpackGui.Hotbar.Eight:GetChildren()
		for i,item in bar8 do 
			if item.Name == weaponname then 
				nightmare = 1
			end
		end
		local bar9 = player.PlayerGui.BackpackGui.Hotbar.Nine:GetChildren()
		for i,item in bar9 do 
			if item.Name == weaponname then 
				nightmare = 1

			end
		end
	end
	equip()
	if nightmare == 1 then 
		valuefruit = 1495
		wait(25)
	else 
		learnblackleg()
		wait(40)
	end
end
local function startcheckerBuddha()
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character.HumanoidRootPart
	local cframe = CFrame.new(20000, 1.836013793945312, 0)
	local startx = cframe.X
	local starty = cframe.Y 
	local startz = cframe.Z
	local numberrangex =NumberRange.new(startx - 10,startx + 10)
	local numberrangey =NumberRange.new(starty - 10,starty + 10)
	local numberrangez =NumberRange.new(startz - 10,startz + 10)
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
			droppingornot = 1
		else

		end
	end
	checks()
end
local function dropping()
	local function teleportbuddha()
		if droppingornot == 0 then
			workspace.Gravity = 0
			startcheckerBuddha()
			cframe = CFrame.new(20000, 1.836013793945312, 0)
			teleportESpecial(cframe)
			workspace.Gravity = 192.6
			wait(2.5)
			startcheckerBuddha()
			teleportbuddha()
		else 

		end

	end
	wait(2.5)
	workspace.Gravity = 0
	teleportbuddha()
	wait(2.5)
	local args = {
		[1] = "equip",
		[2] = "Buddha"
	}

	game:GetService("ReplicatedStorage").Events.Tools:InvokeServer(unpack(args))
	wait(2.5)
	local function equip()
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local bar1 = player.PlayerGui.BackpackGui.Hotbar.One:GetChildren()
		for i,item in bar1 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.One
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar2 = player.PlayerGui.BackpackGui.Hotbar.Two:GetChildren()
		for i,item in bar2 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Two
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar3 = player.PlayerGui.BackpackGui.Hotbar.Three:GetChildren()
		for i,item in bar3 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Three
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar4 = player.PlayerGui.BackpackGui.Hotbar.Four:GetChildren()
		for i,item in bar4 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Four
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar5 = player.PlayerGui.BackpackGui.Hotbar.Five:GetChildren()
		for i,item in bar5 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Five
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar6 = player.PlayerGui.BackpackGui.Hotbar.Six:GetChildren()
		for i,item in bar6 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Six
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar7 = player.PlayerGui.BackpackGui.Hotbar.Seven:GetChildren()
		for i,item in bar7 do 
			if item.Name == "Buddha" then  
				local keycode = Enum.KeyCode.Seven
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar8 = player.PlayerGui.BackpackGui.Hotbar.Eight:GetChildren()
		for i,item in bar8 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Eight
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
		local bar9 = player.PlayerGui.BackpackGui.Hotbar.Nine:GetChildren()
		for i,item in bar9 do 
			if item.Name == "Buddha" then 
				local keycode = Enum.KeyCode.Nine
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)

			end
		end
	end
	equip()
	wait(2.5)
	local args = {
		[1] = "drop",
		[2] = game:GetService("Players").LocalPlayer.Character.Buddha
	}

	game:GetService("ReplicatedStorage").Events.Tools:InvokeServer(unpack(args))
	wait(2.5)
end
local function startchecker0()
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
			speed = changingspeed
			local cframe = CFrame.new(2950,2075,-13466)
			teleportESpecial(cframe)
		else

		end
	end
	checks()
end
local function checksforbuddha()
	local buddha = workspace:FindFirstChild("Buddha")
	if buddha then 
		local buddhahandler = buddha:FindFirstChild("preHandle")
		if buddhahandler then 
			cframe = CFrame.new(buddhahandler.Position.X,buddhahandler.Position.Y,buddhahandler.Position.Z)
			teleportESpecial(cframe)
			wait(2.5)
			checksforbuddha()
		end
	end
end
local function tweenforposition(cframe1)
	cframe = cframe1
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local newcframe = CFrame.new(cframe.X,cframe.Y + 200,cframe.Z)
	humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y + 200,humrt.CFrame.Z)
	wait(1)
	local speedtime = (humrt.Position - newcframe.Position).magnitude
	local tinfo = TweenInfo.new(speedtime/speed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
	local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})

	tween:Play()
	local function tweens()
		if teleportedyet2 == 0 then 

			wait(0.01)
			tweens()
		else 
			teleportedyet2 = 0
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y+5,cframe.Z)
			workspace.Gravity = 192.6
		end
	end
	local function tweencomplete()
		teleportedyet2 = 1
	end
	tween.Completed:Connect(tweencomplete)
	tweens()
end
local function tweenforE(cframe1)
	cframe = cframe1
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local newcframe = CFrame.new(cframe.X,cframe.Y + 200,cframe.Z)
	humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y + 200,humrt.CFrame.Z)
	wait(1)
	local speedtime = (humrt.Position - newcframe.Position).magnitude
	local tinfo = TweenInfo.new(speedtime/speed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
	local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})

	tween:Play()
	local function tweens()
		if teleportedyet2 == 0 then 

			wait(0.01)
			tweens()
		else 
			teleportedyet2 = 0
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y+3,cframe.Z)
			workspace.Gravity = 192.6
			keyboardE()

		end
	end
	local function tweencomplete()
		teleportedyet2 = 1
	end
	tween.Completed:Connect(tweencomplete)
	tweens()
end
local function prepareforlevel()
	task.spawn(function()
		repeat 
			wait(0.8)
			local args = {
				[1] = 0.51,
				[2] = "dash"
			}

			game:GetService("ReplicatedStorage").Events.takestam:FireServer(unpack(args))

		until true == false
	end)
	local function clear()
		local flood1 = workspace.Islands["Town of Beginnings"].ImportantBuildings:GetChildren()
		local flood2 = workspace.NPCs:GetChildren()
		local flood3 = workspace.BuyableItems:GetChildren()
		for i,flooda in flood1 do 
			flooda:Destroy()
		end
		for i,floodb in flood2 do 
			floodb:Destroy()
		end
		for i,floodc in flood3 do 
			if floodc.Name == "Rifle" then

			else 
				floodc:Destroy()
			end
		end
	end
	local function lootchests()
		local peli = game:GetService("ReplicatedStorage")["Stats"..name].Stats.Peli
		if peli.Value < 301 then
			local chest = workspace.Env:WaitForChild("Chest"):WaitForChild("TopBase")
			tweenforE(CFrame.new(chest.CFrame.X,chest.CFrame.Y + 2,chest.CFrame.Z))
			wait(2)
			lootchests()
		end
	end
	local function buyrifle()
		local rifle = workspace.BuyableItems.Rifle.ShopPart
		tweenforE(CFrame.new(rifle.CFrame.X,rifle.CFrame.Y + 2,rifle.CFrame.Z))
		local args = {
			[1] = workspace.BuyableItems.Rifle,
			[2] = 1
		}

		game:GetService("ReplicatedStorage").Events.Shop:InvokeServer(unpack(args))
	end
	task.spawn(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Tutoiral.Script.RemoteEvent:FireServer()
	end)
	wait(1)
	lootchests()
	wait(1)
	clear()
	wait(1)
	buyrifle()
	wait(1)
	local args = {
		[1] = "equip",
		[2] = "Rifle"
	}

	game:GetService("ReplicatedStorage").Events.Tools:InvokeServer(unpack(args))
	wait(1)
	tweenforposition(CFrame.new(5682.85693359375, 35, -16542.01953125))
	workspace.Gravity = 192.6
	wait(1)
	local fishmancore = workspace.Fishman.Part
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y+200,humrt.CFrame.Z)
	wait(1)
	tweenforposition(CFrame.new(fishmancore.CFrame.X,fishmancore.CFrame.Y+200,fishmancore.CFrame.Z))
	humrt.CFrame = CFrame.new(fishmancore.CFrame.X,fishmancore.CFrame.Y,fishmancore.CFrame.Z)
	wait(8)
	tweenforposition(CFrame.new(7977.11181640625, -2152.83203125, -17066.6171875))
	wait(1)
	local args = {
		[1] = nil,
		[2] = workspace.NPCs:WaitForChild("Robo")
	}

	game:GetService("ReplicatedStorage").Events.SetSpawn:FireServer(unpack(args))
	wait(1)
	game:GetService("TeleportService"):Teleport(1730877806, player)
	wait(500)
end
local function stackleg()
	wait(4.2)

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
local function thelevelfarm()
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local players = game:GetService("Players"):GetChildren()
	local lurenumber = #players - 1
	local cframequest = CFrame.new(7730.916015625, -2175.83203125, -17215.19921875)
	local cframespot = CFrame.new(7526.3642578125, -2076.832275390625, -17390.5078125 - lurenumber*5)
	local cframemountain = CFrame.new(-15472.8193359375, 805.8187866210938, -9058.8662109375)
	local cframeshrine = CFrame.new(-12185.525390625, 0, -18545.505859375)
	local cframerobo = CFrame.new(5930.56298828125, 6.024040222167969, -9470.2841796875)
	local function firefishman()
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local head = workspace.NPCs:WaitForChild("Fishman Karate User"):WaitForChild("Head")
		local args = {
			[1] = "fire",
			[2] = {
				["Start"] = humrt.CFrame,
				["Gun"] = "Rifle",
				["joe"] = "true",
				["Position"] = Vector3.new(head.Position.X,head.Position.Y + 0.575,head.Position.Z)
			}
		}

		game:GetService("ReplicatedStorage").Events.CIcklcon:FireServer(unpack(args))
		task.wait(0.00001)
		local args = {
			[1] = "reload",
			[2] = {
				["Gun"] = "Rifle"
			}
		}
		game:GetService("ReplicatedStorage").Events.CIcklcon.gunFunctions:InvokeServer(unpack(args))
	end
	local function takequest()
		local args = {
			[1] = {
				[1] = "npcChat",
				[2] = true
			}
		}

		game:GetService("ReplicatedStorage").Events.Quest:InvokeServer(unpack(args))
		wait(0.2)
		local args = {
			[1] = {
				[1] = "takequest",
				[2] = "Help becky"
			}
		}

		game:GetService("ReplicatedStorage").Events.Quest:InvokeServer(unpack(args))
		wait(0.2)
	end
	local weaponname = "Rifle"
	local function equiprifle()
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
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
	end
	equiprifle()
	local function inputAlt()
		wait(2)
		local keycode = Enum.KeyCode.LeftAlt
		local virtualinputservice = game:GetService("VirtualInputManager")
		virtualinputservice:SendKeyEvent(true,keycode,false,nil)
		wait(6)
		virtualinputservice:SendKeyEvent(false,keycode, false, nil)
	end
	local function teleportspot()
		tweenforposition(cframespot)
	end
	local function teleportquest()
		tweenforposition(cframequest)
	end
	local function spotcheckerspot()
		local cframe = cframespot
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humrt = character.HumanoidRootPart
		local startx = cframe.X
		local starty = cframe.Y 
		local startz = cframe.Z
		local numberrangex =NumberRange.new(startx - 4,startx + 4)
		local numberrangey =NumberRange.new(starty - 4,starty + 4)
		local numberrangez =NumberRange.new(startz - 4,startz + 4)
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
				workspace.Gravity = 192.6
				firefishman()
			else
				teleportspot()
				workspace.Gravity = 192.6
				firefishman()
			end
		end
		checks()
	end
	local function spotcheckerquest()
		local cframe = cframequest
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humrt = character.HumanoidRootPart
		local startx = cframe.X
		local starty = cframe.Y 
		local startz = cframe.Z
		local numberrangex =NumberRange.new(startx - 4,startx + 4)
		local numberrangey =NumberRange.new(starty - 4,starty + 4)
		local numberrangez =NumberRange.new(startz - 4,startz + 4)
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
				workspace.Gravity = 192.6
				wait(0.2)
				takequest()
			else
				teleportquest()
				workspace.Gravity = 192.6
				wait(0.2)
				takequest()
			end
		end
		checks()
	end
	local function preparation()
		local args = {
			[1] = "BlackLeg"
		}

		game:GetService("ReplicatedStorage").Events.learnStyle:FireServer(unpack(args))
		wait(1)
		local fun1 = "FightingStyleMastery"
		local fun2 = nil
		local fun3 = 30
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(fun1,fun2,fun3)
		wait(1)
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		stackleg()
		wait(1)
		workspace.Gravity = 0
		humrt.CFrame = CFrame.new(humrt.CFrame.X,200,humrt.CFrame.Z)
	end
	local function beginfarm()
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local level = game:GetService("ReplicatedStorage")["Stats"..name].Stats.Level
		local humanoid = character:WaitForChild("Humanoid")
		local humrt = character:WaitForChild("HumanoidRootPart")
		local quest = game:GetService("ReplicatedStorage")["Stats"..name].Quest.CurrentQuest
		if level.Value == 575 then 
			preparation()
			tweenforposition(cframeshrine)
			inputAlt()
			wait(2)
			tweenforposition(cframemountain)
			wait(700)
		elseif quest.Value == "Help becky" or level.Value < 190 then 
			spotcheckerspot()
			wait(0.01)
		else
			spotcheckerquest()
			wait(0.01)
		end
		beginfarm()
	end
	beginfarm()
end
local function startlevelchecker()
	local cframe = CFrame.new(992.4584350585938, 5.074999809265137, 1162.34765625)
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character.HumanoidRootPart
	local startx = cframe.X
	local starty = cframe.Y 
	local startz = cframe.Z
	local numberrangex =NumberRange.new(startx - 100,startx + 100)
	local numberrangey =NumberRange.new(starty - 100,starty + 100)
	local numberrangez =NumberRange.new(startz - 100,startz + 100)
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
			prepareforlevel()
		else
			thelevelfarm()
		end
	end
	checks()
end
local function startimpelchecker()
	local cframe = CFrame.new(5930.56298828125, 6.024040222167969, -9470.2841796875)
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character.HumanoidRootPart
	local startx = cframe.X
	local starty = cframe.Y 
	local startz = cframe.Z
	local numberrangex =NumberRange.new(startx - 300,startx + 300)
	local numberrangey =NumberRange.new(starty - 300,starty + 300)
	local numberrangez =NumberRange.new(startz - 300,startz + 300)
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

		else
			local falldmg = workspace.PlayerCharacters[name]:WaitForChild("FallDamage")
			falldmg.Enabled = false
			stackleg()
			stackleg()
			stackleg()
			stackleg()
			stackleg()
			stackleg()
			stackleg()
			stackleg()
			stackleg()
			tweenforposition(cframe)
			wait(1)
			local args = {
				[1] = nil,
				[2] = workspace.NPCs:WaitForChild("Robo")
			}

			game:GetService("ReplicatedStorage").Events.SetSpawn:FireServer(unpack(args))
			wait(1)
			game:GetService("TeleportService"):Teleport(1730877806, player)
			wait(500)
		end
	end
	checks()
end





-----                   -----
local function startScript()
	if game.PlaceId == idlobby then 
		task.spawn(function()
			local fun1 = privatecode
			local fun2 = {
				[1] = true
			}
			replicatedstorage.Events.reserved:InvokeServer(fun1)
		end)
		print(1)
		local remote = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("chooseType"):WaitForChild("Frame"):WaitForChild("RemoteEvent")
		remote:FireServer(true)


	elseif game.PlaceId == idmain then
		wait(15*autoexec)
		startimpelchecker()
		cframe = CFrame.new(5866,7,-10227)
		teleportESpecial(cframe)
		print("DOne")
		local random = math.random(50,100)
		wait(random)
		game:GetService("TeleportService"):Teleport(1730877806, player)
	elseif game.PlaceId == idlevel then 
		wait(15*autoexec)
		local falldmg = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name):WaitForChild("FallDamage")
		task.spawn(function()
			repeat
				local keycode = Enum.KeyCode.Nine
				local virtualinputservice = game:GetService("VirtualInputManager")
				virtualinputservice:SendKeyEvent(true,keycode,false,nil)
				wait(0.1)
				virtualinputservice:SendKeyEvent(false,keycode, false, nil)
				wait(600)
			until true == false
		end)
		falldmg.Enabled = false
		startlevelchecker()
	elseif game.PlaceId == idimpel then
		speed = changingspeed
		task.spawn(function()
			local player = game.Players.LocalPlayer
			local name = player.Name
			local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
			local humanoid = character:WaitForChild("Humanoid")
			local humrt = character:WaitForChild("HumanoidRootPart")
			local players = game.Players:GetChildren()
			if #players > 1 then 
				local random = math.rad(0,15)
				wait(random)
				local players = game.Players:GetChildren()
				if #players > 1 then 
					local UrlSpecial = "https://discord.com/api/webhooks/1262032650479341689/fbOIp_WpGgqSrhf7kgaxhLlHVUT4K_7KOazMVK5Eopcw1--Y2zUN6drlYIoi_ffZFZaf"
					local function webhook1(dif,time1,points,pointstotal)
						local response = request({
							Url = UrlSpecial,
							Method = "POST",
							Headers = {
								["Content-Type"] = "application/json"
							},
							Body = game.HttpService:JSONEncode({
								content = "More than one player joined into impel down ".. name,
								username = "Sosal",
								avatar_url = "https://cdn.discordapp.com/attachments/826341306506543144/1262618951452459079/image.png?ex=66974108&is=6695ef88&hm=5178ad30814f543a7a863ff1a000c11ed9abee6a6773b96b4bfefcd12663d771&",
								attachments = {}
							})
						})
					end
					webhook1()
					wait(1)
					game:GetService("TeleportService"):Teleport(1730877806, player)
				end
			end
		end)
		wait(20 * autoexec)
		local falldmg = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name):WaitForChild("FallDamage")
		falldmg.Enabled = false
		task.spawn(function()
			repeat
				wait(4)

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
			until true == false
		end)
		task.spawn(function()
			while workspace == workspace do
				local LogService = game:GetService("LogService")
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				local logHistory = LogService:GetLogHistory()
				for _, logEntry in pairs(logHistory) do
					if logEntry["message"] == "Server Kick Message: A fatal error occured. This may be from an internet issue." then
						local UrlSpecial = "https://discord.com/api/webhooks/1262032650479341689/fbOIp_WpGgqSrhf7kgaxhLlHVUT4K_7KOazMVK5Eopcw1--Y2zUN6drlYIoi_ffZFZaf"
						local function webhook1(dif,time1,points,pointstotal)
							local response = request({
								Url = UrlSpecial,
								Method = "POST",
								Headers = {
									["Content-Type"] = "application/json"
								},
								Body = game.HttpService:JSONEncode({
									content = "Fatal error occured on player ".. name,
									username = "Sosal",
									avatar_url = "https://cdn.discordapp.com/attachments/826341306506543144/1262618951452459079/image.png?ex=66974108&is=6695ef88&hm=5178ad30814f543a7a863ff1a000c11ed9abee6a6773b96b4bfefcd12663d771&",
									attachments = {}
								})
							})
						end
						webhook1()
						wait(1)
						game:GetService("TeleportService"):Teleport(1730877806, player)

					end
				end
				wait(1)
			end
		end)
		task.spawn(function()
			while true do
				local function checkstime()
					local timerstorage = game.Players.LocalPlayer.PlayerGui:WaitForChild("ImpelDownUI"):WaitForChild("Info"):WaitForChild("Timers"):GetDescendants()
					for i,timer in timerstorage do 
						if timer.Name == "Time" then
							local player = game.Players.LocalPlayer
							local name = player.Name
							local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
							local humanoid = character:WaitForChild("Humanoid")
							local humrt = character:WaitForChild("HumanoidRootPart")
							if timer.Text == "8:00" or timer.Text == "8:01" or timer.Text == "8:02" or timer.Text == "8:03" or timer.Text == "8:04" or timer.Text == "8:05" or timer.Text == "8:06" then
								local UrlSpecial = "https://discord.com/api/webhooks/1262032650479341689/fbOIp_WpGgqSrhf7kgaxhLlHVUT4K_7KOazMVK5Eopcw1--Y2zUN6drlYIoi_ffZFZaf"
								local function webhook1(dif,time1,points,pointstotal)
									local response = request({
										Url = UrlSpecial,
										Method = "POST",
										Headers = {
											["Content-Type"] = "application/json"
										},
										Body = game.HttpService:JSONEncode({
											content = "Standed too long on player ".. name,
											username = "Sosal",
											avatar_url = "https://cdn.discordapp.com/attachments/826341306506543144/1262618951452459079/image.png?ex=66974108&is=6695ef88&hm=5178ad30814f543a7a863ff1a000c11ed9abee6a6773b96b4bfefcd12663d771&",
											attachments = {}
										})
									})
								end
								webhook1()
								wait(1)
								game:GetService("TeleportService"):Teleport(1730877806, player)
							end
						end
					end
				end
				checkstime()
				wait(1)
			end
		end)
		diffucultselecter()
		wait(waitforstart)
		local function functionlauncer()
			if tablecount == 0 then
				dropping()
				height1 = 45
				teleportESpecial(CFrame.new(5866,7,-10227))
				teleportkill(CFrame.new(5866,7,-10227))
				tablecount += 1
				speed = changingspeed
				wait(20)
				startchecker0()
				keyboardE()
				speed = 45
				keypickup()
				diffucultchecker()
				speed = changingspeed
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y+1500,humrt.CFrame.Z)
				cframe = CFrame.new(20000, 1.836013793945312, 0)
				teleportESpecial(cframe)
				spotcheckerSpecial(teleportESpecial)
				wait(2.5)
				checksforbuddha()
				wait(2.5)
				eat()
				wait(2.5)
				statsup()
				wait(2.5)
				cframe = CFrame.new(2950,2075,-13466)
				teleportESpecial(cframe)
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				character:SetAttribute("InForm",false)
				character:SetAttribute("buddhaDamage",0)
				inform = character:GetAttribute("InForm")
				buddhaDamage = character:GetAttribute("buddhaDamage")
				functionlauncer()
			elseif tablecount == 4 then
				height1 = 45
				teleportkill(tableofspots[tablecount])
				tablecount += 1
				wait(15)
				magnitudenumber = 50000
				functionlauncer()
			elseif tablecount == 10 or tablecount == 18 or tablecount == 19 or tablecount == 3 or tablecount == 1 then
				teleportE(tableofspots[tablecount])
				tablecount += 1
				functionlauncer()
			elseif tablecount == 14 then 
				teleport(tableofspots[tablecount])
				tablecount += 1 
				keyboardE()
				wait(20)
				functionlauncer()
			elseif tablecount == 48 then
				local player = game.Players.LocalPlayer
				local name = player.Name
				local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
				local humanoid = character:WaitForChild("Humanoid")
				local humrt = character:WaitForChild("HumanoidRootPart")
				humrt.CFrame = tableofspots[tablecount]
				wait(1)
				tablecount += 1
				functionlauncer()
			elseif tablecount == 47 then
				tablecount += 1
				functionlauncer()
			elseif tablecount == 49 then 
				height1 = 45
				teleportkill(tableofspots[tablecount])
				tablecount += 1
				wait(20)
				local OldPoints =  game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BattleReportGui"):WaitForChild("Points").Text
				local function setvariables1(webhook1)
					local diffuculty = nil
					if nightmare == 0 then
						diffuculty = "Кошмар"
					else
						diffuculty = "Кошмар+"
					end
					local pointstotal =  game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BattleReportGui"):WaitForChild("Points").Text
					local time1 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BattleReportGui"):WaitForChild("BattleReport"):WaitForChild("LeftContainer"):WaitForChild("Clear Time"):WaitForChild("Display").Text
					local points = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BattleReportGui"):WaitForChild("BattleReport"):WaitForChild("RightContainer"):WaitForChild("Total Score"):WaitForChild("Display").Text
					webhook1(diffuculty,time1,points,pointstotal)
				end
				local function webhook1(dif,time1,points,pointstotal)
					local response = request({
						Url = webhookcomplete,
						Method = "POST",
						Headers = {
							["Content-Type"] = "application/json"
						},
						Body = game.HttpService:JSONEncode({
							content = "Impel Down Complete",
							embeds = {
								{
									title = "Impel Down Farm",
									description = "Игрок ".. "||"..name.."||",
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
							avatar_url = "https://cdn.discordapp.com/attachments/826341306506543144/1262617612672827392/image.png?ex=66973fc9&is=6695ee49&hm=3956ca904e0c7741c408ca2403211c99c5843a8e36e88b2e547b4512ff600c13&",
							attachments = {}
						})
					})
				end
				setvariables1(webhook1)
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
					wait(4)
					local value = nil
					local function webhook2(value,value2)
						local response = request({
							Url = webhookchest,
							Method = "POST",
							Headers = {
								["Content-Type"] = "application/json"
							},
							Body = game.HttpService:JSONEncode({
								content = "@everyone",
								embeds = {
									{
										title = "Impel Down Farm",
										description = "Игрок ".. "||"..name.."||",
										color = 16711680,
										fields = {
											{
												name = "Купил Мифик за:"..(OldPoints - value2),
												value = "Осталось:"..value2
											}
										}
									}
								},
								username = "Podstilka",
								avatar_url = "https://cdn.discordapp.com/attachments/826341306506543144/1262618951452459079/image.png?ex=66974108&is=6695ef88&hm=5178ad30814f543a7a863ff1a000c11ed9abee6a6773b96b4bfefcd12663d771&",
								attachments = {}
							})
						})
					end
					local NewPoints =  game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BattleReportGui"):WaitForChild("Points").Text
					if OldPoints == NewPoints then

					else 
						value = "Да"
						webhook2(value,NewPoints)
					end
				end
				wait(2)
				teleport(tableofspots[50])
				local random = 25
				wait(random)
				game:GetService("TeleportService"):Teleport(1730877806, player)
			elseif tablecount == 50 then
				teleport(tableofspots[tablecount])
			elseif tablecount == 28 then
				teleport(tableofspots[tablecount])
				tablecount += 1 
				keyboardE()
				wait(20)
				functionlauncer()
			elseif tablecount == 40 then
				teleport(tableofspots[tablecount])
				tablecount += 1 
				keyboardE()
				wait(20)
				functionlauncer()
			else 
				height1 = 45
				teleportkill(tableofspots[tablecount])
				tablecount+=1 
				functionlauncer()
			end
		end
		functionlauncer()

	end
end
startScript()


