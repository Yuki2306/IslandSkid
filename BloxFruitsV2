--[[
   Credit:
   Fly,Esp: Infinity Yield
   Lowest Server: Amnesia
   Server Hop: Charwar
   RTX graphics: Switchblades
   Fps Boost: e621/mothra#4150
   Rainbow: who ever made this
   ServerTimer: GuiHD
]]
--Disable Errors
--[[if getconnections then
   for _,v in next, getconnections(game:GetService("LogService").MessageOut) do
       v:Disable()
   end
   for _,v in next, getconnections(game:GetService("ScriptContext").Error) do
       v:Disable()
   end
   
end]]
--Config
--Check Stats of Server
getgenv().CheckStats = true
--Auto UpdateDropdown(Players,Weapons)
getgenv().AutoUpdateDropDown = true
--Distance(Useless for now)
getgenv().XZ = 25
getgenv().Y = 10
-- Your Webhook here
getgenv().Webhook = "" 
--Fruit Section
getgenv().GetFruits = false
-- Only Bring Fruit In Small Distance 
getgenv().BringFruit = true
--Will Stop AutoFarming If You Turn On These Two Below
getgenv().TeleportFruit = false
getgenv().NaturalFruit = false
getgenv().AutoBuyRandomFruit = true
--Auto Buy Legendary Sword
getgenv().AutoBuyLegendarySword = true
--Loading Game
repeat wait()
until game:IsLoaded()

repeat wait()
until game.Players.LocalPlayer
repeat wait()
until game.Players.LocalPlayer.Character
repeat wait()
until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil

local FirstSea;
local SecondSea;
local ThirdSea;
--Check PlaceId
if game.PlaceId == 2753915549 then
   FirstSea = true
elseif game.PlaceId == 4442272183 then
   SecondSea = true
elseif game.PlaceId == 7449423635 then
   ThirdSea = true
end
--Define Service
local VirtualUser = game:GetService("VirtualUser")
local VIM =game:GetService("VirtualInputManager")
local ReplStorage = game:GetService("ReplicatedStorage");
local Players = game:GetService("Players")
local Imput = game:GetService("UserInputService")
local COREGUI = game:GetService("CoreGui")
local LP = game:GetService("Players").LocalPlayer
local HttpService = game:GetService("HttpService")
local RunS = game:getService("RunService")
--Define Vars
local Char = LP.Character
local PlaceId = game.PlaceId 
local req =  http_request or request or HttpPost or syn.request
local SpecialMob = "ABCDEF"
local CanTween = true
local MeleePoint = 1
local DefensePoint = 1
local SwordPoint = 1
local DevilFruitPoint = 1
local GunPoint = 1
local CenterCastle = Vector3.new(-5581.2353515625, 313.76556396484375, -3064.094970703125)
local PLrWeapons = {}
local FruitTable = {} 
local PlayerTable = {}
local chests = {}
local Mouse = LP:GetMouse()
local Weapon = ""
local BossesTable ={}
local DragonColor = {}
local Flower = {
   "Blue Flower";
   "Red Flower";
}
local getmusicasset = getsynasset or getcustomasset

spawn(function()
    while wait() do
        pcall(function()
            Char = LP.Character
            HumanoidRootPart = Char:FindFirstChild("HumanoidRootPart")
            Humanoid = Char:FindFirstChild("Humanoid")
            PlrLevel = LP.Data.Level.Value
            MyFragment = LP.Data.Fragments.Value
            MyBeli = LP.Data.Beli.Value
            MyDevilFruit = LP.Data.DevilFruit.Value
        end)
    end
end)
HumanoidRootPart = Char:FindFirstChild("HumanoidRootPart")
Humanoid = Char:FindFirstChild("Humanoid")
--Global Value
TableBoss = {}
MaxLevelSea = 0
HighestLvToFarm =  0
ServerPlayers = 6
filename = "IslandSetting1.lua";
--Require
CamMod = require(game.ReplicatedStorage.Util.CameraShaker)
--Anti Afk
if not getgenv().AFKDISABLED then
   if GC then
      getgenv().AFKDISABLED = true
      for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
         if v["Disable"] then
            v["Disable"](v)
         elseif v["Disconnect"] then
            v["Disconnect"](v)
         end
      end
   else
      LP.Idled:connect(function()
         VirtualUser:CaptureController()
         VirtualUser:ClickButton2(Vector2.new())
      end)
   end
end

--Check Nil
if getgenv().MinuteToRejoin == nil then
   getgenv().MinuteToRejoin = 10
end
--Hopping 
if getgenv().AutoAllBossHop then
   queue_on_teleport([[
      repeat wait()
      until game:IsLoaded()
      repeat wait()
      until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
      getgenv().AutoAllBossHop = true
      getgenv().AutoAllBoss = true
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
   ]])
end
if getgenv().ObservationFarmHop then
   queue_on_teleport([[
      repeat wait()
      until game:IsLoaded()
      repeat wait()
      until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
      getgenv().ObservationFarmHop = true
      getgenv().ObservationFarm = true
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
   ]])
end
if getgenv().AutoChestHop then
   queue_on_teleport([[
      repeat wait()
      until game:IsLoaded()
      repeat wait()
      until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
      getgenv().AutoChest = true
      getgenv().AutoChestHop = true
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
   ]])
end
--Define getgenv
getgenv().FlySpeed = 2
getgenv().FLYING = false
getgenv().AutoSuperHuman = false
getgenv().AutoFarmingDO = false
Fly = false
--Define getgenv Setting
getgenv().SilentAimMob = false
getgenv().SilentAimPlr = false
getgenv().AutoSaber = false
getgenv().AFDistance = 500
getgenv().AF2Distance = 500 
getgenv().HealthMastery = 25
--Default Setting
getgenv().AutoFarmQuest = true
getgenv().AutoFarmBring = true
getgenv().AutoSetSpawn = false
getgenv().AutoFarmSafeMode = false
getgenv().AutoFarmHealthSafeMode = 30
getgenv().FastAttack = false -- Patched

getgenv().SkillZ = true
getgenv().SkillZHold = 0
getgenv().SkillX = true
getgenv().SkillXHold = 0
getgenv().SkillC = true
getgenv().SkillCHold = 0
getgenv().SkillV = true
getgenv().SkillVHold = 0
getgenv().SkillF = true
getgenv().SkillFHold = 0

getgenv().SkillZGun = true
getgenv().SkillXGun = true


getgenv().RecommendedSpeed = true
getgenv().TweenSpeedAutoFarm = 200
getgenv().TweenSpeedQuest = 350
getgenv().TweenSpeedTeleportPlace = 350
getgenv().TweenSpeedAutoChest = 350
getgenv().NearNextIsland = false
getgenv().AutoBuso = true
getgenv().AutoObservation = false
--Default Setting
getgenv().Setting = {
   AutoFarmQuest = getgenv().AutoFarmQuest;
   AutoFarmBring = getgenv().AutoFarmBring;
   AutoSetSpawn = getgenv().AutoSetSpawn;
   AutoFarmSafeMode = getgenv().AutoFarmSafeMode ;
   AutoFarmHealthSafeMode = getgenv().AutoFarmHealthSafeMode ;
   FastAttack = getgenv().FastAttack;
   SkillZ = getgenv().SkillZ ;
   SkillZHold = getgenv().SkillZHold ;
   SkillX = getgenv().SkillX ;
   SkillXHold = getgenv().SkillXHold;
   SkillC = getgenv().SkillC ;
   SkillCHold = getgenv().SkillCHold ;
   SkillV = getgenv().SkillV ;
   SkillVHold = getgenv().SkillVHold ;
   SkillF = getgenv().SkillF ;
   SkillFHold = getgenv().SkillFHold ;
   SkillZGun = getgenv().SkillZGun ;
   SkillXGun = getgenv().SkillXGun ;
   RecommendedSpeed = getgenv().RecommendedSpeed;
   TweenSpeedAutoFarm = getgenv().TweenSpeedAutoFarm ;
   TweenSpeedQuest = getgenv().TweenSpeedQuest;
   TweenSpeedTeleportPlace = getgenv().TweenSpeedTeleportPlace;
   TweenSpeedAutoChest = getgenv().TweenSpeedAutoChest;
   AutoBuso = getgenv().AutoBuso;
   AutoObservation = getgenv().AutoObservation;
   MinuteToRejoin = getgenv().MinuteToRejoin
}
--Define Functions
local function getRoot(char)
   if char then
      local rootPart = char:FindFirstChild('HumanoidRootPart')
      return rootPart
   end
   return false
end
local function Alive()
   if LP.Character then
      if getRoot(LP.Character) and LP.Character:FindFirstChild('Humanoid') then
         if LP.Character:FindFirstChild('Humanoid').Health > 0 then
            return true
         end
      end
   end
   return false
end
local function NOFLY()
	getgenv().FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if LP.Character:FindFirstChildOfClass('Humanoid') then
		LP.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local function EnterCode(Code)
   game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
end

local function Click()
   pcall(function()
      if Alive() then
         VirtualUser:CaptureController()
         VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
      end
   end)
end
local function Equip(Tool)
   pcall(function()
      local ToolEquip = LP.Backpack:FindFirstChild(Tool) or Char:FindFirstChild(Tool)
      if Char:FindFirstChild('Humanoid')  and not Char:FindFirstChild(Tool) then
         Char:FindFirstChild('Humanoid') :EquipTool(ToolEquip)
      end
   end)
end
--For Auto Chest
local function GetChest()
   GettingChest = true
   chests = {}
   for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
      if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3"  then
         table.insert(chests, v)
      end
   end
   if not FirstSea then
      for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
         if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3"  then
            table.insert(chests, v)
         end
      end
   end
   for i,v in pairs(game:GetService("ReplicatedStorage").Unloaded:GetChildren()) do
      if v.Name == "Chests" then
         for i2,v2 in pairs(v:GetChildren()) do
            if v2.Name == "Chest1" or v2.Name == "Chest2" or v2.Name == "Chest3" then
               table.insert(chests, v2)
            end
         end
      end
   end
   wait()
   GettingChest = false
end
local function FindNearest()
   --pcall(function()
      local lowestdist = math.huge
      local chest = nil
      GetChest()
      wait()
      repeat wait() until not GettingChest
      if chests ~= {} and not moving then
         for i,v in pairs(chests) do
            if v then
               local distance = (v.Position - getRoot(Char).Position).magnitude
               if distance < lowestdist then
                  lowestdist = distance
                  chest = v
               end
            end
         end
      end
      return chest
   --end)

end
--NoClip
local function NoclipLoop()
   if NoClip == true and Char ~= nil then
      for _, child in pairs(Char:GetDescendants()) do
         if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
            child.CanCollide = false
         end
      end
   end
end
--Check Float
local function CheckFloat1()
   if getRoot(Char) then
      if not getRoot(Char):FindFirstChild("VelocityBody") then
         TweenFloat()
      end
   end
end
local function CheckFloat2()
   if getRoot(Char) then
      if getRoot(Char):FindFirstChild("VelocityBody") then
         RemoveFloat()
      end
   end
end
local function FFC(Object,ThingToFind)
   if Object and ThingToFind then
      if Object:FindFirstChild(ThingToFind) then
         return Object:FindFirstChild(ThingToFind)
      end
   end
   return nil
end
--Do Tween (Global Because Auto Next Island)
function DoTween(dist, Speed)
   local FastSpeedTween = false
   local LastPositionTween = dist
   if dist ~= nil  and LastPositionTween ~= nil then
    local range = (getRoot(Char).Position - dist.Position).magnitude
    if getgenv().RecommendedSpeed then
        if range <= 300 then
            FastSpeedTween = true
            NewSpeed = 1000
        elseif range <= 1000 and range > 300 then
            NewSpeed = 500
        else
         NewSpeed = 350
        end
    end
    if getgenv().RecommendedSpeed then
        RealSpeed = NewSpeed
    else
        RealSpeed = Speed
    end
    local info = TweenInfo.new((getRoot(Char).Position - dist.Position).magnitude / RealSpeed,Enum.EasingStyle.Linear)
    NoClip = true
    Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)

   tween =  game:service"TweenService":Create(getRoot(Char), info, {CFrame = dist})
    if CanTween and Alive() then
        tween:Play()
        if not FastSpeedTween then
        Tweening = true
        
        end

        CheckFloat1()
        Char:WaitForChild("Humanoid").Died:Connect(function()
            if tween then
                tween:Cancel()
            end
        end)
        spawn(function()
         wait()
         local LastPosition = getRoot(Char).Position
         while Tweening and task.wait() do
            if ((LastPosition-getRoot(Char).Position).magnitude) > 200 then
               tween:Cancel()
               wait(0.5)
               return DoTween(LastPositionTween,200)
            end
            LastPosition = getRoot(Char).Position
            
         end
     end)
        tween.Completed:wait()
        if Noclipping and NoClip then
         NoClip = false
         Noclipping:Disconnect()
     end
        Tweening = false
        CheckFloat2()
    else
        tween:Cancel()
    end
   end
end

function FastAttack()
   pcall(function()
      --[[if getgenv().FastAttack then
         if Alive() then
            
            ClickMod.activeController.attacking = false 
            ClickMod.activeController.active = false
            ClickMod.activeController.timeToNextAttack = 0
            ClickMod.activeController.increment = 4
         end
     end]]
   end)
end
getgenv().HitBox  = true
function HitBoxPlr()
   --[[pcall(function()
      if getgenv().HitBox and Alive() then
         getgenv().HitBox = false
         if ClickMod.activeController.hitboxMagnitude ~= 60 then
            
            ClickMod.activeController.hitboxMagnitude = 60 
            wait(1)
         end
         wait()
         getgenv().HitBox = true
      end
   end)]]
end
--KillAura
local function KillAuraF()
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      if v.Parent and v:FindFirstChild("LowerTorso") and v:FindFirstChild("Head") and v:FindFirstChild("UpperTorso") and getRoot(v) and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
         
         pcall(function()
            if (getRoot(v).Position - getRoot(Char).Position).magnitude < 1000 then
              v:FindFirstChild("LowerTorso"):Destroy()
              v:FindFirstChild("UpperTorso"):Destroy()
              v:FindFirstChild("Head"):Destroy()
              v:breakJoints()
              v.Humanoid.Health = 0
              v.Humanoid.Health =  v.Humanoid.MaxHealth
              v.Humanoid.Health = 0
            end
         end)
      end
   end   
end
local function round(num, numDecimalPlaces)--round number look cool
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end
--Ok I know i'm dumb i can't manage many esps at one function it will cost me time to understand iy esp sorry
local function ESPF(object,text,color)
   if object and not object.Handle:FindFirstChild("Esp") and getgenv().FruitESP then
      local ColorText;
      ColorText = Color3.new(255, 0, 0)
      local BillboardGui = Instance.new("BillboardGui")
      local TextLabel = Instance.new("TextLabel")
      BillboardGui.Adornee = object.Handle
      BillboardGui.Name = "Esp"
      BillboardGui.Parent = object.Handle
      BillboardGui.Size = UDim2.new(0, 100, 0, 150)
      BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
      BillboardGui.AlwaysOnTop = true
      TextLabel.Parent = BillboardGui
      TextLabel.BackgroundTransparency = 1
      TextLabel.Position = UDim2.new(0, 0, 0, -50)
      TextLabel.Size = UDim2.new(0, 100, 0, 100)
      TextLabel.Font = Enum.Font.SourceSansSemibold
      TextLabel.TextSize = 20
      TextLabel.TextColor3 = ColorText
      TextLabel.TextStrokeTransparency = 0
      TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
      TextLabel.Text = 'Name: '..object.Name
      TextLabel.ZIndex = 10
      local function espLoop()
         pcall(function()
            if not getgenv().FruitESP then
               BillboardGui:Destroy()
               espLoopFunc:Disconnect() 
            elseif object:FindFirstChild("Handle") then
               local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - object.Handle.Position).magnitude)
               TextLabel.Text = object.Name..' | Dist: '..pos
            end
         end)
      end
      espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
   end
end
local function ESPI(object,text,color)
   if object and not object.Handle:FindFirstChild("Esp") and getgenv().FruitESP then
      local ColorText;
      ColorText = Color3.new(255, 0, 0)
      local BillboardGui = Instance.new("BillboardGui")
      local TextLabel = Instance.new("TextLabel")
      BillboardGui.Adornee = object.Handle
      BillboardGui.Name = "Esp"
      BillboardGui.Parent = object.Handle
      BillboardGui.Size = UDim2.new(0, 100, 0, 150)
      BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
      BillboardGui.AlwaysOnTop = true
      TextLabel.Parent = BillboardGui
      TextLabel.BackgroundTransparency = 1
      TextLabel.Position = UDim2.new(0, 0, 0, -50)
      TextLabel.Size = UDim2.new(0, 100, 0, 100)
      TextLabel.Font = Enum.Font.SourceSansSemibold
      TextLabel.TextSize = 20
      TextLabel.TextColor3 = ColorText
      TextLabel.TextStrokeTransparency = 0
      TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
      TextLabel.Text = 'Name: '..object.Name
      TextLabel.ZIndex = 10
      local function espLoop()
         if object then
            if not getgenv().FruitESP then
               BillboardGui:Destroy()
               espLoopFunc:Disconnect()
            else
               local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - object.Handle.Position).magnitude)
               TextLabel.Text = object.Name..' | Dist: '..pos
            end
         end
      end
      espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
   end
end
local function ESPO(object,text,color)
   if not object:FindFirstChild("Esp") then
      if getgenv().ChestESP or getgenv().FlowersESP then
         local ColorText;
         if object.Name == "Chest1" then
            ColorText = Color3.new(0, 50, 0)
         elseif object.Name == "Chest2" then
            ColorText = Color3.new(255, 198, 0)
         elseif object.Name == "Chest3" then
            ColorText = Color3.new(0, 0, 255)
         elseif object.Name == "Flower1" then
            ColorText = Color3.new(0, 0, 255)
         elseif object.Name == "Flower2" then
            ColorText = Color3.new(255, 0, 0)
         end
         local BillboardGui = Instance.new("BillboardGui")
         local TextLabel = Instance.new("TextLabel")
         BillboardGui.Adornee = object
         BillboardGui.Name = "Esp"
         BillboardGui.Parent = object
         BillboardGui.Size = UDim2.new(0, 100, 0, 150)
         BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
         BillboardGui.AlwaysOnTop = true
         TextLabel.Parent = BillboardGui
         TextLabel.BackgroundTransparency = 1
         TextLabel.Position = UDim2.new(0, 0, 0, -50)
         TextLabel.Size = UDim2.new(0, 100, 0, 100)
         TextLabel.Font = Enum.Font.SourceSansSemibold
         TextLabel.TextSize = 20
         TextLabel.TextColor3 = ColorText
         TextLabel.TextStrokeTransparency = 0
         TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
         TextLabel.Text = 'Name: '..object.Name
         TextLabel.ZIndex = 10
         local function espLoop()
            if object then
               if getgenv().ChestESP or  getgenv().FlowersESP then
                  local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - object.Position).magnitude)
                  TextLabel.Text = object.Name..' | Dist: '..pos
               else
                  espLoopFunc:Disconnect()
                  
               end
            end
         end
         espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
      end
   end
end

local function ESPMob(object)
   if not object.Head:FindFirstChild("Esp") and getgenv().MobESP then
      local ColorText;
      ColorText = Color3.new(1, 1, 1)
      local BillboardGui = Instance.new("BillboardGui")
      local TextLabel = Instance.new("TextLabel")
      BillboardGui.Adornee = object.Head
      BillboardGui.Name = "Esp"
      BillboardGui.Parent = object.Head
      BillboardGui.Size = UDim2.new(0, 100, 0, 150)
      BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
      BillboardGui.AlwaysOnTop = true
      TextLabel.Parent = BillboardGui
      TextLabel.BackgroundTransparency = 1
      TextLabel.Position = UDim2.new(0, 0, 0, -50)
      TextLabel.Size = UDim2.new(0, 100, 0, 100)
      TextLabel.Font = Enum.Font.SourceSansSemibold
      TextLabel.TextSize = 20
      TextLabel.TextColor3  = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
      spawn(function()
         wait(1)
         while wait() do
            if TextLabel then
               TextLabel.TextColor3  = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
            else
               break;
            end
         end
      end)
      TextLabel.TextStrokeTransparency = 0
      TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
      TextLabel.Text = 'Name: '..object.Name
      TextLabel.ZIndex = 10
      local function espLoop()
         if object and object.Humanoid.Health > 0 then
            if not getgenv().MobESP  then
               espLoopFunc:Disconnect()
            else
               local pos = math.floor((getRoot(Char).Position - getRoot(object).Position).magnitude)
               TextLabel.Text = object.Name..' | Hp: '..round(object:FindFirstChildOfClass('Humanoid').Health, 1)..' | Dist: '..pos
            end
         elseif BillboardGui then
            BillboardGui:Destroy()
         end
      end
      espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
      
   end
end

local function ESP(plr)
	task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_ESP' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_ESP') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_ESP'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart") and n.Name ~= "HumanoidRootPart") then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = 0.3
					a.Color = plr.TeamColor
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui")
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Parent = ESPholder
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				TextLabel.Text = 'Name: '..plr.Name
				TextLabel.ZIndex = 10
				local espLoopFunc
				local teamChange
				local addedFunc
            local lvchange
				addedFunc = plr.CharacterAdded:Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						teamChange:Disconnect()
                  lvchange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						addedFunc:Disconnect()
					else
                  lvchange:Disconnect()
						teamChange:Disconnect()
						addedFunc:Disconnect()
					end
				end)
				teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						addedFunc:Disconnect()
                  lvchange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						teamChange:Disconnect()
					else
						teamChange:Disconnect()
					end
				end)
            lvchange = plr.Data.Level.Changed:Connect(function()
               if ESPenabled then
						espLoopFunc:Disconnect()
						addedFunc:Disconnect()
                  teamChange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
                  lvchange:Disconnect()
					else
						lvchange:Disconnect()
					end
            end)
				local function espLoop()
					if COREGUI:FindFirstChild(plr.Name..'_ESP') then
						if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
							local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
							TextLabel.Text = plr.Name..' | Hp: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' | Dist: '..pos..' | Lv: '..plr.Data.Level.Value
						end
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
						espLoopFunc:Disconnect()
                  lvchange:Disconnect()
					end
				end
				espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
			end
		end
	end)
end



--[[local function sFLY(vfly)
   QEfly = true
  repeat wait() until game.Players.LocalPlayer and Char and getRoot(Char) and Char:FindFirstChildOfClass("Humanoid")
  repeat wait() until Mouse
  if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

  local T = getRoot(Char)
  local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
  local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
  local SPEED = 50

  local function FLY()
     getgenv().FLYING = true
     local BG = Instance.new('BodyGyro')
     local BV = Instance.new('BodyVelocity')
     BG.P = 9e4
     BG.Parent = T
     BV.Parent = T
     BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
     BG.cframe = T.CFrame
     BV.velocity = Vector3.new(0, 0, 0)
     BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
     task.spawn(function()
        repeat wait()
           if not vfly and Char:FindFirstChildOfClass('Humanoid') then
              Char:FindFirstChildOfClass('Humanoid').PlatformStand = true
           end
           if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
              SPEED = 50
           elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
              SPEED = 0
           end
           if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
              BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
              lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
           elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
              BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
           else
              BV.velocity = Vector3.new(0, 0, 0)
           end
           BG.cframe = workspace.CurrentCamera.CoordinateFrame
        until not getgenv().FLYING
        CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        SPEED = 0
        BG:Destroy()
        BV:Destroy()
        if Char:FindFirstChildOfClass('Humanoid') then
           Char:FindFirstChildOfClass('Humanoid').PlatformStand = false
        end
     end)
  end
  flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
     if KEY:lower() == 'w' then
        CONTROL.F = (vfly and vehicleflyspeed or getgenv().FlySpeed)
     elseif KEY:lower() == 's' then
        CONTROL.B = - (vfly and vehicleflyspeed or getgenv().FlySpeed)
     elseif KEY:lower() == 'a' then
        CONTROL.L = - (vfly and vehicleflyspeed or getgenv().FlySpeed)
     elseif KEY:lower() == 'd' then 
        CONTROL.R = (vfly and vehicleflyspeed or getgenv().FlySpeed)
     elseif QEfly and KEY:lower() == 'e' then
        CONTROL.Q = (vfly and vehicleflyspeed or getgenv().FlySpeed)*2
     elseif QEfly and KEY:lower() == 'q' then
        CONTROL.E = -(vfly and vehicleflyspeed or getgenv().FlySpeed)*2
     end
     pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
  end)
  flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
     if KEY:lower() == 'w' then
        CONTROL.F = 0
     elseif KEY:lower() == 's' then
        CONTROL.B = 0
     elseif KEY:lower() == 'a' then
        CONTROL.L = 0
     elseif KEY:lower() == 'd' then
        CONTROL.R = 0
     elseif KEY:lower() == 'e' then
        CONTROL.Q = 0
     elseif KEY:lower() == 'q' then
        CONTROL.E = 0
     end
  end)
  FLY()
end]]
local function refreshPlayers()
  table.clear(PlayerTable)
  for i,v in pairs(game.Players:GetChildren()) do
      if not table.find(PlayerTable, v.Name) then
          table.insert(PlayerTable, v.Name)
     
      end
  end
end
local function refreshBosses()
   table.clear(BossesTable)
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      if string.find(v.Name, "Boss") then
         table.insert(BossesTable, v.Name)
      end
   end
 end

local function TPSpecificPlace()
   if SecondSea then
      if HighestLvToFarm == 1250 or HighestLvToFarm == 1275 or HighestLvToFarm == 1300 or HighestLvToFarm == 1325 then
         if (getRoot(LP.Character).Position - Vector3.new(923.21252441406, 125.05710601807, 32852.83203125)).magnitude > 3000 then
            local args = {
               [1] = "requestEntrance",
               [2] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
      end
   elseif FirstSea then
      if HighestLvToFarm == 375 or HighestLvToFarm == 400 then
         if (getRoot(LP.Character).Position - Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)).magnitude > 3000 then

            local args = {
               [1] = "requestEntrance",
               [2] = Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
      end
   end
end
--Make HitBox Mob
local function ResizeHRP(Mob,NoCollide)
   if Mob and getRoot(Mob) then
      getRoot(Mob).Transparency = 1
      if NoCollide then
         getRoot(Mob).CanCollide = false
      end
      getRoot(Mob).Size = Vector3.new(200,50,200)
   end
end
--Resize Custom
local function ResizeCustom(Object,SizeX,SizeY,SizeZ,NoCollide)
   if Object and getRoot(Object) and SizeX and SizeY and SizeZ then
      getRoot(Object).Transparency = 1
      if NoCollide then
         getRoot(Object).CanCollide = false
      end
      getRoot(Object).Size = Vector3.new(SizeX,SizeY,SizeZ)
   end
end
--For Hitbox Boss
local function ResizeBoss(Boss,NoCollide)
   if Boss and getRoot(Boss) then
      getRoot(Mob).Transparency = 1
      if NoCollide then
         getRoot(Boss).CanCollide = false
      end
      getRoot(Boss).Size = Vector3.new(300,300,300)
   end
end
--Get Player
local function GetChar(Player)
   if typeof(Player) == "string" then
      local CheckPlr1 = Players:FindFirstChild(Player) 
      if CheckPlr1 then
         if CheckPlr1.Character then
            return CheckPlr1.Character
         end
      end
   end
end
--Check Alive
local function IsAlive(Object,HaveHRP,HaveHumanoid)
   if Object and Object.Parent and getRoot(Object) and Object:FindFirstChild('Humanoid') then
      if Object:FindFirstChild('Humanoid').Health > 0 then
         return true
      end
   end
   return false
end
--Check Magnitude
local function CheckRange(Object1,Object2,Dist,IsPart1,IsPart2)
   if Object1 and Object2 and Dist then
      if getRoot(Object1) and getRoot(Object2) then 
         if (getRoot(Object1).Position-getRoot(Object2).Position).magnitude <= Dist then
            return true
         end
      end
   end
   return false
end
local function ReturnMagnitude(Object1,Object2,IsPart1,IsPart2)
   if Object1 and Object2 then
      if getRoot(Object1) and getRoot(Object2) then 
         return (getRoot(Object1).Position-getRoot(Object2).Position).magnitude 
      end
   end
end
local function BringMob()
   if getgenv().AutoFarmBring and DoMagnet then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
         if IsAlive(v) and not Tweening  then
            if Alive() and CheckRange(v,LP.Character,1000) then 
               if v.Name == NameMob or (string.find(v.Name,CurrentMobName) and string.find(v.Name,HighestLvToFarm) ) or string.find(v.Name,SpecialMob) and not string.find(v.name,"Boss") then
                  pcall(function()
                     --HitBoxPlr()
                     getRoot(v).Velocity = Vector3.new(1,1,1)
                     if BringCFrame~= nil and BringPos ~= nil then
                        if CheckRange(v,LP.Character,300) then
                           getRoot(v).CFrame = BringCFrame
                           getRoot(v).Position = BringPos
                           ResizeHRP(v,true)
                           v:FindFirstChild("Humanoid").PlatformStand = true
                        end
                     end
                  end)
               end
            end
         end
      end
   end
end

local function BringMobNear()
   if getgenv().AutoFarmBring then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
         if IsAlive(v) and not Tweening then
            if Alive() and CheckRange(v,LP.Character,1000) then -- and string.find(v.Name,HighestLvToFarm) and not BringBone  
               pcall(function()
                  getRoot(v).Velocity = Vector3.new(1,1,1)
                  if BringCFrame~= nil and BringPos ~= nil then
                     if CheckRange(v,LP.Character,300) then
                        getRoot(v).CFrame = BringCFrame
                        getRoot(v).Position = BringPos
                        ResizeHRP(v,true)
                        v:FindFirstChild("Humanoid").PlatformStand = true
                     end
                  end
               end)
            end
         end
      end
   end
end

local function CheckQuestBoss()
   if FirstSea then
      if getgenv().ChosenBoss == "Saber Expert [Lv. 200] [Boss]" then
         BossName = "Saber Expert [Lv. 200] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "The Gorilla King [Lv. 25] [Boss]" then
         BossName = "The Gorilla King [Lv. 25] [Boss]"
         QuestNameBoss = "JungleQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732)
      elseif getgenv().ChosenBoss == "Bobby [Lv. 55] [Boss]" then
         BossName = "Bobby [Lv. 55] [Boss]"
         QuestNameBoss = "BuggyQuest1"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211)
      elseif getgenv().ChosenBoss == "The Saw [Lv. 100] [Boss]" then
         BossName = "The Saw [Lv. 100] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Yeti [Lv. 110] [Boss]" then
         BossName = "Yeti [Lv. 110] [Boss]"
         QuestNameBoss = "SnowQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825)
      elseif getgenv().ChosenBoss == "Mob Leader [Lv. 120] [Boss]" then
         BossName = "Mob Leader [Lv. 120] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Vice Admiral [Lv. 130] [Boss]" then
         BossName = "Vice Admiral [Lv. 130] [Boss]"
         QuestNameBoss = "MarineQuest2"
         LvQuestBoss = 2
         QuestCFrameBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293)
      elseif getgenv().ChosenBoss == "Warden [Lv. 220] [Boss]" then
         BossName = "Warden [Lv. 220] [Boss]"
         QuestNameBoss = "ImpelQuest"
         LvQuestBoss = 1
         QuestCFrameBoss = CFrame.new(4851.35059, 5.68744135, 743.251282)
      elseif getgenv().ChosenBoss == "Chief Warden [Lv. 230] [Boss]" then
         BossName = "Chief Warden [Lv. 230] [Boss]"
         QuestNameBoss = "ImpelQuest"
         LvQuestBoss = 2
         QuestCFrameBoss = CFrame.new(4851.35059, 5.68744135, 743.251282)
      elseif getgenv().ChosenBoss == "Swan [Lv. 240] [Boss]" then
         BossName = "Swan [Lv. 240] [Boss]"
         QuestNameBoss = "ImpelQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(4851.35059, 5.68744135, 743.251282)
      elseif getgenv().ChosenBoss == "Magma Admiral [Lv. 350] [Boss]" then
         BossName = "Magma Admiral [Lv. 350] [Boss]"
         QuestNameBoss = "MagmaQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699)
      elseif getgenv().ChosenBoss == "Fishman Lord [Lv. 425] [Boss]" then
         BossName = "Fishman Lord [Lv. 425] [Boss]"
         QuestNameBoss = "FishmanQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018)
      elseif getgenv().ChosenBoss == "Wysper [Lv. 500] [Boss]" then
         BossName = "Wysper [Lv. 500] [Boss]"
         QuestNameBoss = "SkyExp1Quest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954)
      elseif getgenv().ChosenBoss == "Thunder God [Lv. 575] [Boss]" then
         BossName = "Thunder God [Lv. 575] [Boss]"
         QuestNameBoss = "SkyExp2Quest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706)
      elseif getgenv().ChosenBoss == "Cyborg [Lv. 675] [Boss]" then
         BossName = "Cyborg [Lv. 675] [Boss]"
         QuestNameBoss = "FountainQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166)
      end
   elseif SecondSea then
      if getgenv().ChosenBoss == "Diamond [Lv. 750] [Boss]" then
         BossName = "Diamond [Lv. 750] [Boss]"
         QuestNameBoss = "Area1Quest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589)
      elseif getgenv().ChosenBoss == "Jeremy [Lv. 850] [Boss]" then
         BossName = "Jeremy [Lv. 850] [Boss]"
         QuestNameBoss = "Area2Quest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(632.698608, 73.1055908, 918.666321)
      elseif getgenv().ChosenBoss == "Fajita [Lv. 925] [Boss]" then
         BossName = "Fajita [Lv. 925] [Boss]"
         QuestNameBoss = "MarineQuest3"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
      elseif getgenv().ChosenBoss == "Don Swan [Lv. 1000] [Boss]" then
         BossName = "Don Swan [Lv. 1000] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
         BossName = "Darkbeard [Lv. 1000] [Raid Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
         BossName = "Smoke Admiral [Lv. 1150] [Boss]"
         QuestNameBoss = "IceSideQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373)
      elseif getgenv().ChosenBoss == "Order [Lv. 1250] [Raid Boss]" then
         BossName = "Order [Lv. 1250] [Raid Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
         BossName = "Cursed Captain [Lv. 1325] [Raid Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
         BossName = "Awakened Ice Admiral [Lv. 1400] [Boss]"
         QuestNameBoss = "FrostQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908)
      elseif getgenv().ChosenBoss == "Tide Keeper [Lv. 1475] [Boss]" then
         BossName = "Tide Keeper [Lv. 1475] [Boss]"
         QuestNameBoss = "ForgottenQuest"             
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324)
      end
      
   elseif ThirdSea then
      if getgenv().ChosenBoss == "Stone [Lv. 1550] [Boss]" then
         BossName = "Stone [Lv. 1550] [Boss]"
         QuestNameBoss = "PiratePortQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-288.003815, 43.7675667, 5573.12012)
      elseif getgenv().ChosenBoss == "Island Empress [Lv. 1675] [Boss]" then
         BossName = "Island Empress [Lv. 1675] [Boss]"
         QuestNameBoss = "AmazonQuest2"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(5444.14355, 601.603821, 751.306763)
      elseif getgenv().ChosenBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
         BossName = "Kilo Admiral [Lv. 1750] [Boss]"
         QuestNameBoss = "MarineTreeIsland"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(2223.3645, 28.7049141, -6719.18408)
      elseif getgenv().ChosenBoss == "Captain Elephant [Lv. 1875] [Boss]" then
         BossName = "Captain Elephant [Lv. 1875] [Boss]"
         QuestNameBoss = "DeepForestIsland"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-13231.1602, 333.744446, -7624.40723)
      elseif getgenv().ChosenBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
         BossName = "Beautiful Pirate [Lv. 1950] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Longma [Lv. 2000] [Boss]" then
         BossName = "Longma [Lv. 2000] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
         BossName = "Longma [Lv. 2000] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Cake Queen [Lv. 2175] [Boss]" then
         BossName = "Cake Queen [Lv. 2175] [Boss]"
         QuestNameBoss = "IceCreamIslandQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-821.71612548828, 65.819519042969, -10965.169921875)
      elseif getgenv().ChosenBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
         BossName = "Soul Reaper [Lv. 2100] [Raid Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
         BossName = "rip_indra True Form [Lv. 5000] [Raid Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Cake Prince [Lv. 2300] [Raid Boss]" then
         BossName = "Cake Prince [Lv. 2300] [Raid Boss]"
         QuestNameBoss = nil
      else 
         BossName = getgenv().ChosenBoss
         QuestNameBoss = nil
      end
	end 
end

local function RandomNumberF()
   local ThisisRandom = math.random(1,4)
   if ThisisRandom == 1 then
      return getgenv().XZ, 0
   elseif ThisisRandom == 2 then
      return -getgenv().XZ, 0
   elseif ThisisRandom == 3 then
      return 0, -getgenv().XZ
   elseif ThisisRandom == 4 then
      return 0, getgenv().XZ
   end
end

local function refreshWeapon1()

  table.clear(PLrWeapons)
  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
     if not table.find(PLrWeapons, v.name) then
        if v:IsA("Tool") then
           table.insert(PLrWeapons ,v.Name)
        end
     end
 end

  for i,v in pairs(LP.Character:GetChildren()) do  
     if not table.find(PLrWeapons, v.name) then
        if v:IsA("Tool") then
           table.insert(PLrWeapons ,v.Name)
        end
     end
  end

end
function CheckQuestMob()
   --CheckSpawn()
   local PlrLevel = game.Players.localPlayer.Data.Level.Value
   if FirstSea then
      if HighestLvToFarm == 0 then
         CurrentQuestMob = "BanditQuest1"
         NameMob = "Bandit [Lv. 5]"
         CurrentMobName = "Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
      elseif HighestLvToFarm == 10 then

         CurrentQuestMob = "JungleQuest"
         NameMob = "Monkey [Lv. 14]"
         CurrentMobName = "Monkey"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
      elseif HighestLvToFarm == 15 then
        
         CurrentQuestMob = "JungleQuest"
         NameMob = "Gorilla [Lv. 20]"
         CurrentMobName = "Gorilla"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
      elseif HighestLvToFarm == 30 then
        
         CurrentQuestMob = "BuggyQuest1"
         NameMob = "Pirate [Lv. 35]"
         CurrentMobName = "Pirate"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
      elseif HighestLvToFarm == 40 then
         
         CurrentQuestMob = "BuggyQuest1"
         NameMob = "Brute [Lv. 45]"
         CurrentMobName = "Brute"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
      elseif HighestLvToFarm == 60 then
         
         CurrentQuestMob = "DesertQuest"
         NameMob = "Desert Bandit [Lv. 60]"
         CurrentMobName = "Desert Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
      elseif HighestLvToFarm == 75 then

         CurrentQuestMob = "DesertQuest"
         NameMob = "Desert Officer [Lv. 70]"
         CurrentMobName = "Desert Officer"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
      elseif HighestLvToFarm == 90 then

         CurrentQuestMob = "SnowQuest"
         NameMob = "Snow Bandit [Lv. 90]"
         CurrentMobName = "Snow Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
      elseif HighestLvToFarm == 100 then

         CurrentQuestMob = "SnowQuest"
         NameMob = "Snowman [Lv. 100]"
         CurrentMobName = "Snowman"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
      elseif HighestLvToFarm == 120 then
         CurrentQuestMob = "MarineQuest2"
         NameMob = "Chief Petty Officer [Lv. 120]"
         CurrentMobName = "Chief Petty Officer"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
      elseif HighestLvToFarm == 150 then
         CurrentQuestMob = "SkyQuest"
         NameMob = "Sky Bandit [Lv. 150]"
         CurrentMobName = "Sky Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
      elseif HighestLvToFarm == 175 then
         CurrentQuestMob = "SkyQuest"
         NameMob = "Dark Master [Lv. 175]"
         CurrentMobName = "Dark Master"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
      elseif HighestLvToFarm == 190 then
         CurrentQuestLevelMob = 1
         CurrentQuestMob = "PrisonerQuest"
         NameMob = "Prisoner [Lv. 190]"
         CurrentMobName = "Prisoner"
         QuestCFrame = CFrame.new(5311.4677734375, 1.6553531885147095, 478.103271484375)
      elseif HighestLvToFarm == 210 then
         NameMob = "Dangerous Prisoner [Lv. 210]"
         CurrentQuestLevelMob = 2
         CurrentQuestMob = "PrisonerQuest"
         CurrentMobName = "Dangerous Prisoner"
         QuestCFrame = CFrame.new(5311.4677734375, 1.6553531885147095, 478.103271484375)
      elseif HighestLvToFarm == 250 then
         NameMob = "Toga Warrior [Lv. 250]"
         CurrentMobName = "Toga Warrior" 
         CurrentQuestMob = "ColosseumQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
      elseif HighestLvToFarm == 275 then
         NameMob = "Gladiator [Lv. 275]"
         CurrentMobName = "Gladiator"
         CurrentQuestMob = "ColosseumQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
      elseif HighestLvToFarm == 300  then
         CurrentQuestMob = "MagmaQuest"
         NameMob = "Military Soldier [Lv. 300]"
         CurrentMobName = "Military Soldier"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
      elseif HighestLvToFarm == 325 then
         CurrentQuestMob = "MagmaQuest"
         CurrentQuestMob = "MagmaQuest"
         CurrentMobName = "Military Spy"
         NameMob = "Military Spy [Lv. 325]"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
      elseif HighestLvToFarm == 375 then
         CurrentQuestMob = "FishmanQuest"
         NameMob = "Fishman Warrior [Lv. 375]"
         CurrentMobName = "Fishman Warrior"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
      elseif HighestLvToFarm == 400 then
         CurrentQuestMob = "FishmanQuest"
         NameMob = "Fishman Commando [Lv. 400]"
         CurrentMobName = "Fishman Commando"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
      elseif HighestLvToFarm == 450 then
         NameMob = "God's Guard [Lv. 450]"
         CurrentMobName = "God's Guard"
         CurrentQuestMob = "SkyExp1Quest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
      elseif HighestLvToFarm == 475  then
         CurrentQuestMob = "SkyExp1Quest"
         NameMob = "Shanda [Lv. 475]"
         CurrentMobName = "Shanda"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
      elseif HighestLvToFarm == 525  then
         CurrentQuestMob = "SkyExp2Quest"
         NameMob = "Royal Squad [Lv. 525]"
         CurrentMobName = "Royal Squad"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
      elseif HighestLvToFarm == 550  then
         CurrentQuestMob = "SkyExp2Quest"
         CurrentMobName = "Royal Soldier"
         NameMob = "Royal Soldier [Lv. 550]"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
      elseif HighestLvToFarm == 625  then
         CurrentQuestMob = "FountainQuest"
         NameMob = "Galley Pirate [Lv. 625]"
         CurrentMobName = "Galley Pirate"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
      elseif HighestLvToFarm == 650 then
         CurrentQuestMob = "FountainQuest"
         NameMob = "Galley Captain [Lv. 650]"
         CurrentMobName = "Galley Captain"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
      end
   end
end
local function CheckManually()
   CheckLv()
   if FirstSea then
      if HighestLvToFarm == 0 then
         FarmingPlace1 = CFrame.new(1001.7659301758, 16.328723907471, 1594.1104736328)
         FarmingPlace2 = nil
         CurrentQuestMob = "BanditQuest1"
         NameMob = "Bandit [Lv. 5]"
         CurrentMobName = "Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
         SpawnPoint = "Default"
         SpawnCFrame = CFrame.new(977.038269, 16.5166149, 1420.94336, 0.97796452, 0, -0.208771184, -0, 1, -0, 0.208771184, 0, 0.97796452)
      elseif HighestLvToFarm == 10 then
         FarmingPlace1 = CFrame.new(-1385.0048828125, 22.852113723755, 62.525402069092)
         FarmingPlace2 = CFrame.new(-1683.5257568359, 15.852045059204, 176.0375213623)
         SpawnPoint = "Jungle"
         SpawnCFrame = CFrame.new(-1332.1394, 11.8529119, 492.35907, -0.774900496, -1.23768311e-08, 0.632082939, 1.77851245e-08, 1, 4.13846735e-08, -0.632082939, 4.33106848e-08, -0.774900496)
         CurrentQuestMob = "JungleQuest"
         NameMob = "Monkey [Lv. 14]"
         CurrentMobName = "Monkey"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
      elseif HighestLvToFarm == 15 then
         FarmingPlace1 = CFrame.new(-1258.6610107422, 6.2793760299683, -494.70080566406)
         FarmingPlace2 = nil
         SpawnCFrame = CFrame.new(-1332.1394, 11.8529119, 492.35907, -0.774900496, -1.23768311e-08, 0.632082939, 1.77851245e-08, 1, 4.13846735e-08, -0.632082939, 4.33106848e-08, -0.774900496)
         SpawnPoint = "Jungle"
         CurrentQuestMob = "JungleQuest"
         NameMob = "Gorilla [Lv. 20]"
         CurrentMobName = "Gorilla"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
      elseif HighestLvToFarm == 30 then
         FarmingPlace1 = CFrame.new(-1100.0310058594, 13.752056121826, 3963.2993164062)
         FarmingPlace2 = nil    
         SpawnCFrame = CFrame.new(-1186.37769, 4.75154591, 3810.49243, 0.508615494, 0, -0.860993803, -0, 1, -0, 0.860993803, 0, 0.508615494)
         SpawnPoint = "Pirate"
         CurrentQuestMob = "BuggyQuest1"
         NameMob = "Pirate [Lv. 35]"
         CurrentMobName = "Pirate"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
      elseif HighestLvToFarm == 40 then
         FarmingPlace1 = CFrame.new(-1144.1635742188, 14.809885025024, 4293.6352539062)
         FarmingPlace2 = nil   
         
         SpawnCFrame = CFrame.new(-1186.37769, 4.75154591, 3810.49243, 0.508615494, 0, -0.860993803, -0, 1, -0, 0.860993803, 0, 0.508615494)
         SpawnPoint = "Pirate"
         CurrentQuestMob = "BuggyQuest1"
         NameMob = "Brute [Lv. 45]"
         CurrentMobName = "Brute"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
      elseif HighestLvToFarm == 60 then
         FarmingPlace1 = CFrame.new(926.37927246094, 6.448634147644, 4464.7836914062)
         FarmingPlace2 = nil 
         SpawnPoint = "Desert"
         SpawnCFrame = CFrame.new(917.85199, 3.37914562, 4114.66895, 0.203889921, -7.29310585e-08, 0.978993833, -8.66312355e-09, 1, 7.63001538e-08, -0.978993833, -2.40379769e-08, 0.203889921)
         CurrentQuestMob = "DesertQuest"
         NameMob = "Desert Bandit [Lv. 60]"
         CurrentMobName = "Desert Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
      elseif HighestLvToFarm == 75 then
         FarmingPlace1 = CFrame.new(1609.8444824219, 1.6109663248062, 4373.2622070312)
         FarmingPlace2 = nil 
         
         SpawnPoint = "Desert"
         SpawnCFrame = CFrame.new(917.85199, 3.37914562, 4114.66895, 0.203889921, -7.29310585e-08, 0.978993833, -8.66312355e-09, 1, 7.63001538e-08, -0.978993833, -2.40379769e-08, 0.203889921)
         CurrentQuestMob = "DesertQuest"
         NameMob = "Desert Officer [Lv. 70]"
         CurrentMobName = "Desert Officer"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
      elseif HighestLvToFarm == 90 then
         FarmingPlace1 = CFrame.new(1372.1066894531, 87.272773742676, -1362.8063964844)
         FarmingPlace2 = nil 
         
         SpawnPoint = "Ice"
         SpawnCFrame = CFrame.new(1107.42444, 7.3035593, -1164.79614, 0.548184574, -8.23326758e-08, 0.836357415, 4.65359591e-08, 1, 6.79403129e-08, -0.836357415, 1.67686287e-09, 0.548184574)
         CurrentQuestMob = "SnowQuest"
         NameMob = "Snow Bandit [Lv. 90]"
         CurrentMobName = "Snow Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
      elseif HighestLvToFarm == 100 then
         FarmingPlace1 = CFrame.new(1143.6586914062, 105.93144226074, -1491.5599365234)
         FarmingPlace2 = nil 
         SpawnPoint = "Ice"
         SpawnCFrame = CFrame.new(1107.42444, 7.3035593, -1164.79614, 0.548184574, -8.23326758e-08, 0.836357415, 4.65359591e-08, 1, 6.79403129e-08, -0.836357415, 1.67686287e-09, 0.548184574)
         CurrentQuestMob = "SnowQuest"
         NameMob = "Snowman [Lv. 100]"
         CurrentMobName = "Snowman"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
      elseif HighestLvToFarm == 120 then
         FarmingPlace1 = CFrame.new(-4688.341796875, 20.652044296265, 4465.873046875)
         FarmingPlace2 = CFrame.new(-4927.7001953125, 20.652044296265, 4022.1950683594) 
         
         SpawnPoint = "MarineBase"
         SpawnCFrame = CFrame.new(-4922.20264, 41.2520523, 4424.44434, -0.488673091, -2.20081375e-08, 0.872467041, 1.13403127e-08, 1, 3.15769455e-08, -0.872467041, 2.53248498e-08, -0.488673091)
         CurrentQuestMob = "MarineQuest2"
         NameMob = "Chief Petty Officer [Lv. 120]"
         CurrentMobName = "Chief Petty Officer"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
      elseif HighestLvToFarm == 150 then
         FarmingPlace1 = CFrame.new(-4978.8686523438, 278.06661987305, -2842.9523925781)
         FarmingPlace2 = nil
        
         SpawnPoint = "Sky"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
         CurrentQuestMob = "SkyQuest"
         NameMob = "Sky Bandit [Lv. 150]"
         CurrentMobName = "Sky Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
      elseif HighestLvToFarm == 175 then
         
         FarmingPlace1 = CFrame.new(-5265.0981445312, 388.65194702148, -2258.8056640625)
         FarmingPlace2 = nil
         SpawnPoint = "Sky"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
         CurrentQuestMob = "SkyQuest"
         NameMob = "Dark Master [Lv. 175]"
         CurrentMobName = "Dark Master"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
      elseif HighestLvToFarm == 190 then

      elseif HighestLvToFarm == 250 then
         
         FarmingPlace1 = CFrame.new(-1877.6928710938, 7.289083480835, -2791.259765625)
         FarmingPlace2 = nil
         SpawnPoint = "Colosseum"
         NameMob = "Toga Warrior [Lv. 250]"
         CurrentMobName = "Toga Warrior" 
         SpawnCFrame = CFrame.new(-1393.48926, 7.28934002, -2842.57324, -0.998255789, 6.55446408e-09, 0.0590373725, 6.72640565e-09, 1, 2.7136855e-09, -0.0590373725, 3.10606163e-09, -0.998255789)
         CurrentQuestMob = "ColosseumQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
      elseif HighestLvToFarm == 275 then
         FarmingPlace1 = CFrame.new(-1379.4381103516, 7.3893489837646, -3330.962890625)
         FarmingPlace2 = nil
         
         SpawnPoint = "Colosseum"
         NameMob = "Gladiator [Lv. 275]"
         CurrentMobName = "Gladiator"
         SpawnCFrame = CFrame.new(-1393.48926, 7.28934002, -2842.57324, -0.998255789, 6.55446408e-09, 0.0590373725, 6.72640565e-09, 1, 2.7136855e-09, -0.0590373725, 3.10606163e-09, -0.998255789)
         CurrentQuestMob = "ColosseumQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
      elseif HighestLvToFarm == 300  then
         FarmingPlace1 = CFrame.new(-5412.349609375, 11.045272827148, 8457.0732421875)
         FarmingPlace2 = nil
         
         SpawnPoint = "Magma"
         SpawnCFrame = CFrame.new(-5226.26416, 8.59022045, 8472.14844, 0.506667018, 0, -0.862141788, -0, 1, -0, 0.862141907, 0, 0.506666958)
         CurrentQuestMob = "MagmaQuest"
         NameMob = "Military Soldier [Lv. 300]"
         CurrentMobName = "Military Soldier"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
      elseif HighestLvToFarm == 325 then
         FarmingPlace1 = CFrame.new(-5857.876953125, 77.230644226074, 8810.365234375)
         FarmingPlace2 = nil
         
         SpawnCFrame = CFrame.new(-5226.26416, 8.59022045, 8472.14844, 0.506667018, 0, -0.862141788, -0, 1, -0, 0.862141907, 0, 0.506666958)
         CurrentQuestMob = "MagmaQuest"
         CurrentMobName = "Military Spy"
         NameMob = "Military Spy [Lv. 325]"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
      elseif HighestLvToFarm == 375 then
         FarmingPlace1 = CFrame.new(60891.60546875, 18.482830047607, 1508.4505615234)
         FarmingPlace2 = nil
         
         CurrentQuestMob = "FishmanQuest"
         NameMob = "Fishman Warrior [Lv. 375]"
         CurrentMobName = "Fishman Warrior"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
      elseif HighestLvToFarm == 400 then
         FarmingPlace1 = CFrame.new(61894.52734375, 18.482830047607, 1467.8453369141)
         FarmingPlace2 = nil
         
         CurrentQuestMob = "FishmanQuest"
         NameMob = "Fishman Commando [Lv. 400]"
         CurrentMobName = "Fishman Commando"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
      elseif HighestLvToFarm == 450 then
         FarmingPlace1 = CFrame.new(-4725.4951171875, 844.27697753906, -1963.5858154297)
         FarmingPlace2 = nil
         
         SpawnPoint = "Sky"
         NameMob = "God's Guard [Lv. 450]"
         CurrentMobName = "God's Guard"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
         CurrentQuestMob = "SkyExp1Quest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
      elseif HighestLvToFarm == 475  then
         FarmingPlace1 = CFrame.new(-7671.0346679688, 5545.4916992188, -485.45092773438)
         FarmingPlace2 = nil
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
         CurrentQuestMob = "SkyExp1Quest"
         NameMob = "Shanda [Lv. 475]"
         CurrentMobName = "Shanda"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
      elseif HighestLvToFarm == 525  then
         FarmingPlace1 = CFrame.new(-7650.568359375, 5606.876953125, -1470.9382324219)
         FarmingPlace2 = nil
         
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
         CurrentQuestMob = "SkyExp2Quest"
         NameMob = "Royal Squad [Lv. 525]"
         CurrentMobName = "Royal Squad"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
      elseif HighestLvToFarm == 550  then
         FarmingPlace1 = CFrame.new(-7801.580078125, 5606.876953125, -1772.6484375)
         FarmingPlace2 = nil
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
         CurrentQuestMob = "SkyExp2Quest"
         CurrentMobName = "Royal Soldier"
         NameMob = "Royal Soldier [Lv. 550]"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
      elseif HighestLvToFarm == 625  then
         FarmingPlace1 = CFrame.new(5624.2045898438, 53.757335662842, 4026.2885742188)
         FarmingPlace2 = nil
         
         SpawnPoint = "Fountain"
         SpawnCFrame = CFrame.new(5187.77197, 38.5011406, 4141.60791, 0.779290736, 0, 0.626662672, -0, 1.00000012, -0, -0.626662731, 0, 0.779290617)
         CurrentQuestMob = "FountainQuest"
         NameMob = "Galley Pirate [Lv. 625]"
         CurrentMobName = "Galley Pirate"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
      elseif HighestLvToFarm == 650 then
         FarmingPlace1 = CFrame.new(5686.9287109375, 38.501140594482, 4927.6762695312)
         FarmingPlace2 = nil
         
         SpawnPoint = "Fountain"
         SpawnCFrame = CFrame.new(5187.77197, 38.5011406, 4141.60791, 0.779290736, 0, 0.626662672, -0, 1.00000012, -0, -0.626662731, 0, 0.779290617)
         CurrentQuestMob = "FountainQuest"
         NameMob = "Galley Captain [Lv. 650]"
         CurrentMobName = "Galley Captain"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
      end
   elseif SecondSea then
      if HighestLvToFarm == 700  then
         FarmingPlace1 = CFrame.new(357.98040771484, 39.139602661133, 2321.3010253906)
         FarmingPlace2 = CFrame.new(-695.80236816406, 39.139797210693, 2369.3337402344)
         CurrentMobName = "Raider"
         NameMob = "Raider [Lv. 700]"
         SpawnCFrame = CFrame.new(-32.1582031, 29.2783928, 2766.5874, 0.999908745, 4.07748502e-08, 0.013477576, -4.06100966e-08, 1, -1.24986625e-08, -0.013477576, 1.19501982e-08, 0.999908745)
         SpawnPoint = "Default"
         CurrentQuestMob = "Area1Quest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
      elseif HighestLvToFarm == 725 then
         FarmingPlace1 = CFrame.new(-956.09149169922, 72.457725524902, 1674.9362792969)
         FarmingPlace2 = CFrame.new(-1088.17578125, 73.561851501465, 1164.9073486328)
         NameMob = "Mercenary [Lv. 725]"
         SpawnCFrame = CFrame.new(-32.1582031, 29.2783928, 2766.5874, 0.999908745, 4.07748502e-08, 0.013477576, -4.06100966e-08, 1, -1.24986625e-08, -0.013477576, 1.19501982e-08, 0.999908745)
         SpawnPoint = "Default"
         CurrentMobName = "Mercenary"
         CurrentQuestMob = "Area1Quest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
      elseif HighestLvToFarm == 775 then
         FarmingPlace1 = CFrame.new(976.88073730469, 72.959701538086, 1274.0031738281)
         FarmingPlace2 = nil
         NameMob = "Swan Pirate [Lv. 775]"
         CurrentMobName = "Swan Pirate"
         SpawnCFrame = CFrame.new(-389.968658, 72.9961472, 1148.09241, 0.973822653, -2.55817412e-09, -0.227309078, 5.14786969e-09, 1, 1.07999991e-08, 0.227309078, -1.16874412e-08, 0.973822653)
         SpawnPoint = "DressTown"
         CurrentQuestMob = "Area2Quest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
      elseif HighestLvToFarm == 800 then 
         FarmingPlace1 = CFrame.new(646.02661132812, 72.959762573242, 38.089466094971)
         FarmingPlace2 = CFrame.new(-88.327613830566, 149.43238830566, -337.46002197266)
         NameMob = "Factory Staff [Lv. 800]"
         SpawnCFrame = CFrame.new(-389.968658, 72.9961472, 1148.09241, 0.973822653, -2.55817412e-09, -0.227309078, 5.14786969e-09, 1, 1.07999991e-08, 0.227309078, -1.16874412e-08, 0.973822653)
         SpawnPoint = "DressTown"
         CurrentMobName = "Factory Staff"
         CurrentQuestMob = "Area2Quest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
      elseif HighestLvToFarm == 875 then
         FarmingPlace1 = CFrame.new(-2782.4750976562, 72.966125488281, -3049.7006835938)
         FarmingPlace2 = CFrame.new(-3113.5051269531, 72.976486206055, -2774.3439941406)
         NameMob = "Marine Lieutenant [Lv. 875]"
         SpawnPoint = "Greenb"
         CurrentMobName = "Marine Lieutenant"
         SpawnCFrame = CFrame.new(-2220.05884, 72.967804, -2709.98462, 0.751716256, 2.54505395e-08, -0.659486711, -3.65784025e-08, 1, -3.10247139e-09, 0.659486711, 2.64551492e-08, 0.751716256)
         CurrentQuestMob = "MarineQuest3"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
      elseif HighestLvToFarm == 900 then
         FarmingPlace1 = CFrame.new(-1880.9975585938, 72.966125488281, -3336.0285644531)
         FarmingPlace2 = nil
         NameMob = "Marine Captain [Lv. 900]"
         SpawnPoint = "Greenb"
         CurrentMobName = "Marine Captain"
         SpawnCFrame = CFrame.new(-2220.05884, 72.967804, -2709.98462, 0.751716256, 2.54505395e-08, -0.659486711, -3.65784025e-08, 1, -3.10247139e-09, 0.659486711, 2.64551492e-08, 0.751716256)
         CurrentQuestMob = "MarineQuest3"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
      elseif HighestLvToFarm == 950 then 
         FarmingPlace1 = CFrame.new(-5700.8315429688, 126.03198242188, -794.72845458984)
         FarmingPlace2 = nil
         NameMob = "Zombie [Lv. 950]"
         SpawnPoint = "Graveyard"
         CurrentQuestMob = "ZombieQuest"
         CurrentMobName = "Zombie"
         SpawnCFrame = CFrame.new(-5386.68799, 8.97076797, -713.903381, -0.681161046, -0, -0.732133687, -0, 1.00000012, -0, 0.732133627, 0, -0.681161106)
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
      elseif HighestLvToFarm == 975 then 
         FarmingPlace1 = CFrame.new(-6028.4775390625, 6.4027123451233, -1300.9273681641)
         FarmingPlace2 = nil
         NameMob = "Vampire [Lv. 975]"
         SpawnPoint = "Graveyard"
         SpawnCFrame = CFrame.new(-5386.68799, 8.97076797, -713.903381, -0.681161046, -0, -0.732133687, -0, 1.00000012, -0, 0.732133627, 0, -0.681161106)
         CurrentQuestMob = "ZombieQuest"
         CurrentQuestLevelMob = 2
         CurrentMobName = "Vampire"
         QuestCFrame = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
      elseif HighestLvToFarm == 1000 then 
         FarmingPlace1 = CFrame.new(523.66925048828, 401.42193603516, -5285.51953125)
         FarmingPlace2 = CFrame.new(648.88629150391, 401.42193603516, -5611.3999023438)
         NameMob = "Snow Trooper [Lv. 1000]"
         CurrentMobName = "Snow Trooper"
         SpawnPoint = "Snowy"
         SpawnCFrame = CFrame.new(394.089142, 401.423676, -5313.98486, 0.858188987, 0, -0.513334036, -0, 1.00000012, -0, 0.513334095, 0, 0.858188868)
         CurrentQuestMob = "SnowMountainQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
      elseif HighestLvToFarm == 1050 then 
         FarmingPlace1 = CFrame.new(1180.0009765625, 429.421875, -5180.546875)
         FarmingPlace2 = nil
         NameMob = "Winter Warrior [Lv. 1050]"
         CurrentMobName = "Winter Warrior"
         SpawnCFrame = CFrame.new(394.089142, 401.423676, -5313.98486, 0.858188987, 0, -0.513334036, -0, 1.00000012, -0, 0.513334095, 0, 0.858188868)
         SpawnPoint = "Snowy"
         CurrentQuestMob = "SnowMountainQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
      elseif HighestLvToFarm == 1100 then
         FarmingPlace1 = CFrame.new(-5726.38671875, 15.951767921448, -4501.3442382812)
         FarmingPlace2 = nil
         NameMob = "Lab Subordinate [Lv. 1100]"
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
         CurrentMobName = "Lab Subordinate"
         CurrentQuestMob = "IceSideQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
      elseif HighestLvToFarm == 1125  then
         FarmingPlace1 = CFrame.new(-6318.6450195312, 15.951767921448, -5801.6118164062)
         FarmingPlace2 = nil
         NameMob = "Horned Warrior [Lv. 1125]"
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
         CurrentMobName = "Horned Warrior"
         CurrentQuestMob = "IceSideQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
      elseif HighestLvToFarm == 1175  then
         FarmingPlace1 = CFrame.new(-5536.0307617188, 39.595935821533, -5916.029296875)
         FarmingPlace2 = CFrame.new(-5179.6293945312, 26.696611404419, -6228.3901367188)
         NameMob = "Magma Ninja [Lv. 1175]"
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
         CurrentMobName = "Magma Ninja"
         CurrentQuestMob = "FireSideQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
      elseif HighestLvToFarm == 1200  then 
         FarmingPlace1 = CFrame.new(-5244.7021484375, 27.503534317017, -4641.6875)
         FarmingPlace2 = nil
         NameMob = "Lava Pirate [Lv. 1200]"
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
         CurrentMobName = "Lava Pirate"
         CurrentQuestMob = "FireSideQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
      elseif HighestLvToFarm == 1250  then
         FarmingPlace1 = CFrame.new(560.00573730469, 132.66296386719, 32905.1640625)
         FarmingPlace2 = CFrame.new(1280.4876708984, 125.05711364746, 33053.1953125)
         NameMob = "Ship Deckhand [Lv. 1250]"
         
         CurrentQuestMob = "ShipQuest1"
         CurrentQuestLevelMob = 1
         CurrentMobName = "Ship Deckhand"
         QuestCFrame = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
      elseif HighestLvToFarm == 1275 then
         FarmingPlace1 = CFrame.new(898.05749511719, 44.057006835938, 32934.77734375)
         FarmingPlace2 = nil
         NameMob = "Ship Engineer [Lv. 1275]"
         CurrentQuestMob = "ShipQuest1"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
      elseif HighestLvToFarm == 1300 then 
         FarmingPlace1 = CFrame.new(902.88983154297, 129.55599975586, 33442.7109375)
         FarmingPlace2 = nil
         NameMob = "Ship Steward [Lv. 1300]"
         CurrentQuestMob = "ShipQuest2"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
      elseif HighestLvToFarm == 1325 then 
         FarmingPlace1 = CFrame.new(1185.25390625, 181.14912414551, 33298.6953125)
         FarmingPlace2 = CFrame.new(633.19226074219, 181.1491394043, 33304.4140625)
         NameMob = "Ship Officer [Lv. 1325]"
         CurrentQuestMob = "ShipQuest2"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
      elseif HighestLvToFarm == 1350 then
         FarmingPlace1 = CFrame.new(6024.3940429688, 28.367185592651, -6247.3994140625)
         FarmingPlace2 = nil
         NameMob = "Arctic Warrior [Lv. 1350]"
         
         SpawnCFrame = CFrame.new(5573.96826, 28.1925011, -6111.41455, 0.63015002, 2.24445866e-08, -0.776473403, 1.18417554e-09, 1, 2.98668255e-08, 0.776473403, -1.97400603e-08, 0.63015002)
         SpawnPoint = "IceCastle"
         CurrentMobName = "Arctic Warrior"
         CurrentQuestMob = "FrostQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
      elseif HighestLvToFarm == 1375 then 
         FarmingPlace1 = CFrame.new(5507.1884765625, 28.120534896851, -6849.9008789062)
         FarmingPlace2 = nil
         NameMob = "Snow Lurker [Lv. 1375]"
         SpawnCFrame = CFrame.new(5573.96826, 28.1925011, -6111.41455, 0.63015002, 2.24445866e-08, -0.776473403, 1.18417554e-09, 1, 2.98668255e-08, 0.776473403, -1.97400603e-08, 0.63015002)
         SpawnPoint = "IceCastle"
         CurrentMobName = "Snow Lurker"
         CurrentQuestMob = "FrostQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
      elseif HighestLvToFarm == 1425 then
         FarmingPlace1 = CFrame.new(-3402.0686035156, 26.352342605591, -9770.3125)
         FarmingPlace2 = CFrame.new(-2497.3869628906, 26.967893600464, -9835.23828125)
         NameMob = "Sea Soldier [Lv. 1425]"
         SpawnCFrame = CFrame.new(-3066.82715, 236.847992, -10159.6846, -0.0472635701, 9.39435338e-08, 0.998882413, -1.03863584e-08, 1, -9.45400771e-08, -0.998882413, -1.4843053e-08, -0.0472635701)
         SpawnPoint = "ForgottenIsland"
         CurrentMobName = "Sea Soldier"
         CurrentQuestMob = "ForgottenQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
      elseif HighestLvToFarm >= 1450 then 
         FarmingPlace1 = CFrame.new(-3350.1958007812, 238.84613037109, -10557.44921875)
         FarmingPlace2 = nil
         NameMob = "Water Fighter [Lv. 1450]"
         
         CurrentMobName = "Water Fighter"
         SpawnPoint = "ForgottenIsland"
         SpawnCFrame = CFrame.new(-3066.82715, 236.847992, -10159.6846, -0.0472635701, 9.39435338e-08, 0.998882413, -1.03863584e-08, 1, -9.45400771e-08, -0.998882413, -1.4843053e-08, -0.0472635701)
         CurrentQuestMob = "ForgottenQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
      end
   end
end
local function FixQuestTemp()
   if CurrentQuestMob == "MarineQuest" then
      CurrentQuestMob = "BanditQuest1"
      CurrentQuestLevelMob = 1
   end
   if HighestLvToFarm == 850 then
      HighestLvToFarm = 800
      CurrentMobName = "Factory Staff"
      CurrentQuestMob = "Area2Quest"
      CurrentQuestLevelMob = 2
   end
   if HighestLvToFarm == 1800 then
      HighestLvToFarm = 1775
      CurrentMobName = "Fishman Raider"
      CurrentQuestMob = "DeepForestIsland3"
      CurrentQuestLevelMob = 1
   end
end
local function FixQuestCF()
   if HighestLvToFarm == 800 and HighestLvToFarm == 775 then -- Second Sea 
      QuestCFrame = CFrame.new(638.65856933594, 73.07054901123, 914.59094238281)
   elseif HighestLvToFarm == 700 or HighestLvToFarm == 725 then -- Second Sea
      QuestCFrame = CFrame.new(-425.76028442383, 72.970527648926, 1837.8195800781)
   elseif HighestLvToFarm == 875 or HighestLvToFarm == 900 then -- Second Sea
      QuestCFrame = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
   elseif HighestLvToFarm == 950 or HighestLvToFarm == 975 then -- Second Sea
      QuestCFrame = CFrame.new(-5492.79395, 48.5151672, -793.710571)
   elseif HighestLvToFarm == 1000 or HighestLvToFarm == 1050 then -- Second Sea
      QuestCFrame = CFrame.new(604.964966, 401.457062, -5371.69287)
   elseif HighestLvToFarm == 1100 or HighestLvToFarm == 1125 then -- Second Sea
      QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
   elseif HighestLvToFarm == 1250 or HighestLvToFarm == 1275 then -- Second Sea
      QuestCFrame = CFrame.new(1037.80127, 125.092171, 32911.6016)
   elseif HighestLvToFarm == 1300 or HighestLvToFarm == 1325 then -- Second Sea
      QuestCFrame = CFrame.new(968.80957, 125.092171, 33244.125)
   elseif HighestLvToFarm == 1350 or HighestLvToFarm == 1375 then -- Second Sea
      QuestCFrame = CFrame.new(5669.43506, 28.2117786, -6482.60107)
   elseif HighestLvToFarm == 1425 or HighestLvToFarm == 1450 then -- Second Sea
      QuestCFrame = CFrame.new(-3052.99097, 236.881363, -10148.1943)
   elseif HighestLvToFarm == 1500 or HighestLvToFarm == 1525 then
      QuestCFrame = CFrame.new(-288.95349121094, 43.789222717285, 5578.7622070313)
   elseif HighestLvToFarm == 1575 or HighestLvToFarm == 1600 then
      QuestCFrame = CFrame.new(5833.5776367188, 51.575191497803, -1102.7550048828)
   elseif HighestLvToFarm == 1625 or HighestLvToFarm == 1650 then
      QuestCFrame = CFrame.new(5447.388671875, 601.74407958984, 751.86462402344)
   elseif HighestLvToFarm == 1725 or HighestLvToFarm == 1700 then
      QuestCFrame = CFrame.new(2179.2548828125, 28.701448440552, -6739.7299804688)
   elseif HighestLvToFarm == 1775 or HighestLvToFarm == 1800 then 
      QuestCFrame = CFrame.new(-10580.998046875, 331.75863647461, -8758.193359375)
   elseif HighestLvToFarm == 1825 or HighestLvToFarm == 1850 then
      QuestCFrame = CFrame.new(-13231.467773438, 332.37414550781, -7626.6860351563)
   elseif HighestLvToFarm == 1900 or HighestLvToFarm == 1925 then
      QuestCFrame = CFrame.new(-12683.189453125, 390.85668945313, -9902.15625)
   elseif HighestLvToFarm == 1975 or HighestLvToFarm == 2000 then
      QuestCFrame = CFrame.new(-9490.2793, 142.104858, 5565.8501)
   elseif HighestLvToFarm == 2025 or HighestLvToFarm == 2050 then
      QuestCFrame = CFrame.new(-9506.95313, 172.104858, 6074.63086)
   elseif HighestLvToFarm == 2075 or HighestLvToFarm == 2100 then
      QuestCFrame = CFrame.new(-2100.9709472656, 38.103244781494, -10188.044921875)
   elseif HighestLvToFarm == 2125 or HighestLvToFarm == 2150 then
      QuestCFrame = CFrame.new(-822.65881347656, 65.819519042969, -10964.3671875)
   elseif HighestLvToFarm == 2200 or HighestLvToFarm == 2225 then
       QuestCFrame = CFrame.new(-2021.1732177734375, 37.7982177734375, -12028.4873046875)
   elseif HighestLvToFarm == 2250 or HighestLvToFarm == 2275 then
      QuestCFrame = CFrame.new(-1928.3643798828125, 37.798133850097656, -12848.5048828125)
   end
end
local function CancelQuest()
   if LP.PlayerGui.Main.Quest.Visible == true then
      local args = {
         [1] = "AbandonQuest"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
     -- firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Abandon.MouseButton1Click)
   end
end

local function GetQuest()
   FixQuestTemp()
   FixQuestCF()
   FoundQuest = false
   if getgenv().AutoFarmQuest then
      if Alive() and (getgenv().AutoFarm or getgenv().AutoFarmGunMastery or getgenv().AutoFarmFruitMastery) and LP.PlayerGui.Main.Quest.Visible == false or not string.find(LP.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,CurrentMobName) then
         if not FirstSea and QuestCFrame == nil then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
               if v:FindFirstChild("Head") then
                  if v.Head:FindFirstChild("Talk") and v.Head:FindFirstChild("QuestBBG") then
                     if v.Head:FindFirstChild("QuestBBG").Title.Text == "QUEST" then
                        QuestCFrame = getRoot(v).CFrame
                        FoundQuest = true
                     end
                  end
               end
            end
         end
         FixQuestCF()
         --[[if not FoundQuest and getgenv().AutoFarm and QuestCFrame == nil and not FirstSea then
            local TimeCheck = 3
            repeat wait()
               if BringCFrame ~= nil then
                  local randomnumber = math.random(1,8)
                  if randomnumber == 1 and getgenv().AutoFarm then
                     DoTween(BringCFrame*CFrame.new(0,20,-500),getgenv().TweenSpeedAutoFarm)
                  elseif randomnumber == 2 and getgenv().AutoFarm then
                     DoTween(BringCFrame*CFrame.new(0,20,500),getgenv().TweenSpeedAutoFarm)
                  elseif randomnumber == 3 and getgenv().AutoFarm then
                     DoTween(BringCFrame*CFrame.new(500,20,0),getgenv().TweenSpeedAutoFarm)
                  elseif randomnumber == 4 and getgenv().AutoFarm then
                     DoTween(BringCFrame*CFrame.new(-500,20,0),getgenv().TweenSpeedAutoFarm)
                  elseif randomnumber == 5 and getgenv().AutoFarm then
                     DoTween(BringCFrame*CFrame.new(-500,20,500),getgenv().TweenSpeedAutoFarm)
                  elseif randomnumber == 6 and getgenv().AutoFarm then
                     DoTween(BringCFrame*CFrame.new(500,20,-500),getgenv().TweenSpeedAutoFarm)
                  elseif randomnumber == 7 and getgenv().AutoFarm then
                     DoTween(BringCFrame*CFrame.new(-500,20,-500),getgenv().TweenSpeedAutoFarm)
                  elseif randomnumber == 8 and getgenv().AutoFarm then
                     DoTween(BringCFrame*CFrame.new(500,20,500),getgenv().TweenSpeedAutoFarm)
                  end
                  for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                     if v:FindFirstChild("Head") then
                        if v.Head:FindFirstChild("Talk") and v.Head:FindFirstChild("QuestBBG") then
                           if v.Head:FindFirstChild("QuestBBG").Title.Text == "QUEST" then
                              QuestCFrame = getRoot(v).CFrame
                              if MobToFarm then
                                 OldMobName = MobToFarm.Name
                              end
                              FoundQuest = true
                           end
                        end
                     end
                  end
               end
            until FoundQuest or not getgenv().AutoFarm or BringCFrame == nil
         end]]
         TPSpecificPlace()
         DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
         CheckFloat1()
         if (getRoot(LP.Character).Position- Vector3.new(QuestCFrame)).magnitude < 50 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
         elseif getgenv().AutoFarmQuest and getgenv().AutoFarm then 

            TPSpecificPlace()
            DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
         end
      end
   end
end
local VirtualUser = game:GetService("VirtualUser")
local ReplStorage = game:GetService("ReplicatedStorage")
local LP = game:GetService("Players").LocalPlayer
local Char = LP.Character
local GC = getconnections or get_signal_cons
local HttpService = game:GetService("HttpService");
function TweenFloat()
   if getRoot(Char) then
      if not getRoot(Char):FindFirstChild("VelocityBody") then
         local BV = Instance.new("BodyVelocity")
         BV.Parent = getRoot(Char)
         BV.Name = "VelocityBody"
         BV.MaxForce = Vector3.new(100000, 100000, 100000)
         BV.Velocity = Vector3.new(0, 0, 0)
      end
   end
end
function RemoveFloat()
   if getRoot(Char) then
      if getRoot(Char):FindFirstChild("VelocityBody") then
         getRoot(Char).VelocityBody:Destroy()
      end
   end
end
function LoadSetting()
   warn("Loading Data...")
   
   if (readfile and isfile and isfile(filename)) then
      getgenv().Setting = HttpService:JSONDecode(readfile(filename));
   end
   for i,v in pairs(getgenv().Setting) do
      if i == "AutoFarmQuest" then
         getgenv().AutoFarmQuest = v
      elseif i == "AutoFarmBring" then
         getgenv().AutoFarmBring = v
      elseif i == "AutoSetSpawn" then
         getgenv().AutoSetSpawn = v
      elseif i == "AutoFarmSafeMode" then
         getgenv().AutoFarmSafeMode = v
      elseif i == "AutoFarmHealthSafeMode" then
         getgenv().AutoFarmHealthSafeMode = v
      elseif i == "FastAttack" then
         getgenv().FastAttack = v
      elseif i == "SkillZ" then
         getgenv().SkillZ = v
      elseif i == "SkillZHold" then
         getgenv().SkillZHold = v
      elseif i == "SkillX" then
         getgenv().SkillX = v
      elseif i == "SkillXHold" then
         getgenv().SkillXHold = v
      elseif i == "SkillC" then
         getgenv().SkillC = v
      elseif i == "SkillCHold" then
         getgenv().SkillCHold = v
      elseif i == "SkillV" then
         getgenv().SkillV  = v
      elseif i == "SkillVHold" then
         getgenv().SkillVHold = v
      elseif i == "SkillF" then 
         getgenv().SkillF = v
      elseif i == "SkillFHold" then
         getgenv().SkillFHold = v
      elseif i == "SkillZGun" then
         getgenv().SkillZGun =v
      elseif i == "SkillXGun" then
         getgenv().SkillXGun = v
      elseif i == "RecommendedSpeed" then
         getgenv().RecommendedSpeed = v
      elseif i == "TweenSpeedAutoFarm" then
         getgenv().TweenSpeedAutoFarm = v
      elseif i == "TweenSpeedQuest" then
         getgenv().TweenSpeedQuest = v
      elseif i == "TweenSpeedTeleportPlace" then
         getgenv().TweenSpeedTeleportPlace = v
      elseif i == "TweenSpeedAutoChest" then
         getgenv().TweenSpeedAutoChest = v
      elseif i == "NearNextIsland" then
         getgenv().NearNextIsland = v
      elseif i == "AutoBuso" then
         getgenv().AutoBuso = v
      elseif i == "AutoObservation" then
         getgenv().AutoObservation = v
      elseif i == "MinuteToRejoin" then
      getgenv().MinuteToRejoin  = v
      end
   end
end
 function SaveSetting()
    warn("Saving Data...")
    local json;
    local HttpService = game:GetService("HttpService");
    if (writefile) then
       warn("Saving Data...")
       getgenv().Setting = {
        AutoFarmQuest = getgenv().AutoFarmQuest;
        AutoFarmBring = getgenv().AutoFarmBring;
        AutoSetSpawn = getgenv().AutoSetSpawn;
        AutoFarmSafeMode = getgenv().AutoFarmSafeMode ;
        AutoFarmHealthSafeMode = getgenv().AutoFarmHealthSafeMode ;
        FastAttack = getgenv().FastAttack;
        SkillZ = getgenv().SkillZ ;
        SkillZHold = getgenv().SkillZHold ;
        SkillX = getgenv().SkillX ;
        SkillXHold = getgenv().SkillXHold;
        SkillC = getgenv().SkillC ;
        SkillCHold = getgenv().SkillCHold ;
        SkillV = getgenv().SkillV ;
        SkillVHold = getgenv().SkillVHold ;
        SkillF = getgenv().SkillF ;
        SkillFHold = getgenv().SkillFHold ;
        SkillZGun = getgenv().SkillZGun ;
        SkillXGun = getgenv().SkillXGun ;
        RecommendedSpeed = getgenv().RecommendedSpeed;
        TweenSpeedAutoFarm = getgenv().TweenSpeedAutoFarm ;
        TweenSpeedQuest = getgenv().TweenSpeedQuest;
        TweenSpeedTeleportPlace = getgenv().TweenSpeedTeleportPlace;
        TweenSpeedAutoChest = getgenv().TweenSpeedAutoChest;
        AutoBuso = getgenv().AutoBuso;
        AutoObservation = getgenv().AutoObservation;
        MinuteToRejoin = getgenv().MinuteToRejoin;
     }
       json = HttpService:JSONEncode(getgenv().Setting);
       writefile(filename, json);
    else
       warn("Your exploit doesn't support this function")
    end
 end

function SecondSeaProgress()
   local args = {
      [1] = "DressrosaQuestProgress",
   }
   for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))) do 
      if typeof(v) ~= "Table" then
         if i == "TalkedDetective" and v == true then
            TalkedDetective = true
         end
         if i == "UsedKey" and v == true then
            UsedKey = true
         end
         if i == "KilledIceBoss" and v == true then
            KilledIceBoss = true
         end
      end
   end
end
function BartiloProgress()
   local args = {
      [1] = "BartiloQuestProgress"
   }

   for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))) do
      if i == "KilledBandits" and v == true then
         KilledBandits = true
      end
      if i == "KilledSpring" and v == true then
         KilledSpring = true
      end
      if i == "DidPlates" and v == true then
         DidPlates = true
      end
   end
end
 function CitizenQuestProgress()
    local args = {
       [1] = "CitizenQuestProgress",
       [2] = "Citizen"
    }
  
  
    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) == 1 then
       KilledBanditsCitizen = true
    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) == 2 then
       KilledCaptainElephantCitizen = true
       KilledBanditsCitizen = false
    end
 end
function CheckFruitObservationv2()
   if Char:FindFirstChild("Apple") or LP.Backpack:FindFirstChild("Apple") then
      FindApple = true
   else FindApple = false
   end
   if Char:FindFirstChild("Banana") or LP.Backpack:FindFirstChild("Banana") then
      FindBanana = true
   else FindBanana = false
   end
   if Char:FindFirstChild("Pineapple") or LP.Backpack:FindFirstChild("Pineapple") then
      FindPineapple = true
   else FindPineapple = false
   end
end
 function SaberProgress()
   local args = {
      [1] = "ProQuestProgress"
   }
   for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))) do
      if typeof(v) == "table" then
         Plates = 0
         for i2,v2 in pairs(v) do
            if v2 == true then
               Plates = Plates + 1
            end
         end
      end
      if i == "UsedTorch" and v == true then
       --  print(i,v)
         UsedTorch = true
      end
      if i == "UsedCup" and v == true then
       --  print(i,v)
         UsedCup = true
      end
      if i == "KilledMob" and v == true then
        -- print(i,v)
         KilledMob = true
      end
      if i == "KilledShanks" and v == true then
        -- print(i,v)
         KilledShanks = true
      end
      if i == "UsedRelic" and v == true then
         --print(i,v)
         UsedRelic = true
      end
      if i == "TalkedSon" and v == true then
        -- print(i,v)
         TalkedSon = true
      end
   end
 end
function CheckLv()
   local PlrLevel = LP.Data.Level.Value
   CheckingMob = true
   for i,v in pairs(require(game:GetService("ReplicatedStorage").Quests)) do
      if typeof(v) == "table" and i ~= "BartiloQuest" and i~= "CitizenQuest" and i ~= "MarineQuest" then
         for i2,v2 in pairs(v) do
            SpotBoss = false
            for i3,v3 in pairs(v2) do
               if i3 == "Name" then    
                  for i4,v4 in pairs(TableBoss) do
                     if v3 == v4 then
                        SpotBoss = true
                     end
                  end
                  if not SpotBoss then
                     NewName = v3
                  end
               end
               if i3 == "LevelReq" and not SpotBoss then  
                  if PlrLevel >= v3 and v3 >= HighestLvToFarm and v3 <= MaxLevelSea then
                     HighestLvToFarm = v3   
                     if not FirstSea then               
                        CurrentQuestMob = i
                        for i,v in pairs(v) do
                           CurrentQuestLevelMob = i2
                        end
                        CurrentMobName = NewName
                     end
                  end
               end
            end
         end
      end
   end
   CheckingMob = false
   return
end
 local robloxserver = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
 
function AllServerSearch()
   for i, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(robloxserver)).data) do
      if type(v) == "table" and v.playing ~= nil  and v.playing == ServerPlayers  then
         game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
         return true
      end
   end
end
 
function LowestServer()
   AllServerSearch()
   for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(robloxserver))) do
      if i == "nextPageCursor" then
         if robloxserver:find("&cursor=") then
            local a = robloxserver:find("&cursor=")
            local b = robloxserver:sub(a)
            robloxserver = robloxserver:gsub(b, "")
         end
         robloxserver = robloxserver .. "&cursor=" ..v
         LowestServer()
      end
   end
end

--Connection
if getgenv().AutoUpdateDropDown then
   LP.Character.ChildAdded:Connect(function(Object)
      
      if Object:IsA("Tool") then
         if WeaponDropdown and WeaponDropdown2 and WeaponDropdown3 then
            if AutoWeapon ~= nil then
               AutoWeapon:updateDropdown(WeaponDropdown,"Refresh Weapon",refreshWeapon1(),function()
               end)
            end
            if AutoWeapon ~= nil then
               AutoWeapon:updateDropdown(WeaponDropdown2,"Refresh Weapon",refreshWeapon1(),function()
               end)
            end
            if AutoWeapon ~= nil then
               AutoWeapon:updateDropdown(WeaponDropdown3,"Refresh Weapon",refreshWeapon1(),function()
               end)
            end
         end
      end
   end)
   LP.Character.ChildRemoved:Connect(function(Object)
      if Object:IsA("Tool") then
         if WeaponDropdown and WeaponDropdown2 and WeaponDropdown3 then
            AutoWeapon:updateDropdown(WeaponDropdown,"Refresh Weapon",refreshWeapon1(),function()
            end)
            AutoWeapon:updateDropdown(WeaponDropdown2,"Refresh Weapon",refreshWeapon1(),function()
            end)
            AutoWeapon:updateDropdown(WeaponDropdown3,"Refresh Weapon",refreshWeapon1(),function()
            end)
         end
      end
   end)
   LP.Backpack.ChildAdded:Connect(function(Object)
      if Object:IsA("Tool") then
         if WeaponDropdown and WeaponDropdown2 and WeaponDropdown3 then
            AutoWeapon:updateDropdown(WeaponDropdown,"Refresh Weapon",refreshWeapon1(),function()
            end)
            AutoWeapon:updateDropdown(WeaponDropdown2,"Refresh Weapon",refreshWeapon1(),function()
            end)
            AutoWeapon:updateDropdown(WeaponDropdown3,"Refresh Weapon",refreshWeapon1(),function()
            end)
         end
      end
   end)
   LP.Backpack.ChildRemoved:Connect(function(Object)
      if Object:IsA("Tool") then
         if WeaponDropdown and WeaponDropdown2 and WeaponDropdown3 then
            if AutoWeapon ~= nil then
               AutoWeapon:updateDropdown(WeaponDropdown,"Refresh Weapon",refreshWeapon1(),function()
               end)
            end
            if AutoWeapon ~= nil then
               AutoWeapon:updateDropdown(WeaponDropdown2,"Refresh Weapon",refreshWeapon1(),function()
               end)
            end
            if AutoWeapon ~= nil then
               AutoWeapon:updateDropdown(WeaponDropdown3,"Refresh Weapon",refreshWeapon1(),function()
               end)
            end
         end
      end
   end)
end

Imput.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and Imput:IsKeyDown(Enum.KeyCode.LeftControl) and getgenv().CtrlTp then
      LP.Character:MoveTo(Mouse.Hit.p)
   end
end)
Imput.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and Imput:IsKeyDown(Enum.KeyCode.LeftControl) and getgenv().CtrlTween then
      DoTween(CFrame.new(Mouse.Hit.p),getgenv().TweenSpeedTeleportPlace)
   end
end)
--Auto Select Team
local TeamUi;
if not getgenv().Marines then 
   TeamUi = game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton 
else
   TeamUi = game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton 
end
repeat wait()
   if TeamUi then
      wait()
      for i,v in pairs(getconnections(TeamUi.MouseButton1Click)) do
         v.Function()
      end
      wait(2)
   end
until LP.Team ~= nil 

--Do Functions
--Metatable 
local mt = getrawmetatable(game)
local oldindex = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(t, k)
   if t:IsA("Mouse") and (k == "Hit") then
     if getgenv().SilentAimPlr then 
        if plr ~= nil and plr ~= "" then
           if plr and plr:FindFirstChild("HumanoidRootPart") and plr:FindFirstChild("Humanoid") and plr:FindFirstChild("Humanoid").Health > 0 and getgenv().SilentAimPlr then
              return (k == "Hit" and CFrame.new(plr.HumanoidRootPart.position))
           end
        end
     end
   end
   return oldindex(t, k)
end)
setreadonly(mt, true)

local mt = getrawmetatable(game)
local oldindex = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(t, k)
    if t:IsA("Mouse") and (k == "Hit" ) then
      if getgenv().SilentAimMob then 
         if MobSilent ~= nil and MobSilent ~= "" then
            if IsAlive(MobSilent) then
               return (k == "Hit" and getRoot(MobSilent).CFrame or getRoot(MobSilent))
            end
         end
      end
    end
    return oldindex(t, k)
end)
setreadonly(mt, true)
--Stop Shaking Cam
CamMod:Stop()
--Load Setting
LoadSetting()
--Check If Executed
spawn(function()
   getgenv().Executed = true
   wait(9)
   getgenv().Executed = false
end)
--Check Melee
if not getgenv().CheckedMelee then
   spawn(function()
      getgenv().CheckedMelee = true
      while wait(5) do
         pcall(function()
            FoundMelee = false
            for i,v in pairs(LP.Character:GetChildren()) do
               if v:IsA("Tool") and v.ToolTip == "Melee" then
                  FoundMelee = true
               end
            end
            for i,v in pairs(LP.Backpack:GetChildren()) do
               if v:IsA("Tool") and v.ToolTip == "Melee" then
                  FoundMelee = true
               end
            end
            if not FoundMelee then
               LP.Character:FindFirstChild('Humanoid').Health = 0
            end
         end)
      end
      
   end)
end
--Simulation
if not getgenv().NetworkOwnerShipClaim then
   getgenv().NetworkOwnerShipClaim = true
   settings().Physics.AllowSleep = false
   settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
   spawn(function()
      while wait() do
         for i, v in pairs(game.Players:GetChildren()) do
            if v ~= game.Players.LocalPlayer then
               sethiddenproperty(v, "MaximumSimulationRadius", 0.1)
               sethiddenproperty(v, "SimulationRadius", 0.1)
            end
         end
         if setsimulationradius then
            sethiddenproperty(LP, "MaxSimulationRadius", math.huge)
         end
         if setsimulationradius then
            sethiddenproperty(LP, "SimulationRadius", math.huge)
         end
      end
   end)
end
--Put Enemy
if not getgenv().PutEnemies then
   spawn(function()
      getgenv().PutEnemies = true
      while game:GetService("RunService").RenderStepped:wait() do
         pcall(function()
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
               wait()
               if v:FindFirstChild("Humanoid") ~= nil  and getRoot(v) ~= nil and v:IsA("Model") then
                  v.Parent = game:GetService("Workspace").Enemies
               end
            end
            for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
               wait()
               if v:FindFirstChild("Humanoid") ~= nil  and getRoot(v) ~= nil and v:IsA("Model") then
                  v.Parent = game:GetService("Workspace").Enemies
               end
            end
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
               wait()
               if v:FindFirstChild("Humanoid") ~= nil  and getRoot(v) ~= nil and v:IsA("Model") then
                  if v:FindFirstChild("Humanoid").Health <= 0 then
                     v:Destroy()
                  end
               end
            end
         end)
      end
   end)
end
--Auto Buy Haki Color
if SecondSea or ThirdSea then
   spawn(function()
      while game:GetService("RunService").RenderStepped:wait() do
         if getgenv().AutoBuyEnhancement then
            if MyFragment >= 1500 then
               local args = {[1] = "ColorsDealer",[2] = "1"}
               if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) ~= "" then
                  local args = {[1] = "ColorsDealer",[2] = "2"}
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end 
         end
      end
   end)
end
--Auto Buy Legendary Sword
if SecondSea then
   spawn(function()   
      while game:GetService("RunService").RenderStepped:wait() do
         if getgenv().AutoBuyLegendarySword then
            local args = {[1] = "LegendarySwordDealer",[2] = "2"}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
      end
   end)
end
--Auto Buy Superhuman(Broken)
spawn(function()
   while getgenv().AutoSuperHuman and wait() do
      if not getgenv().HaveBlackLeg then

         local BlackLeg = game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or LP.Character:FindFirstChild("Black Leg")
         if not BlackLeg then
            local args = {
               [1] = "BuyBlackLeg"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         if BlackLeg then
            if BlackLeg.Level.Value <= 299 then
               Weapon = BlackLeg.Name
               repeat wait() until BlackLeg.Level.Value >= 300 or not getgenv().AutoSuperHuman
            end
         end
         if BlackLeg.Level.Value >= 300 then
            getgenv().HaveBlackLeg = true
         end
      end
      
      if not getgenv().HaveElectro then

         local Electro = game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or LP.Character:FindFirstChild("Electro")
         if not Electro then
            local args = {
               [1] = "BuyElectro"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         wait(1)
         if Electro then
            if Electro.Level.Value <= 299 then
               Weapon = Electro.Name
               repeat wait() until Electro.Level.Value >= 300 or not getgenv().AutoSuperHuman
            end
         end         
         if Electro.Level.Value >= 300 then
            getgenv().HaveElectro = true
         end

      end
      if not getgenv().HaveFishmanKarate then

         local FishmanKarate = LP.Backpack:FindFirstChild("FishmanKarate") or LP.Character:FindFirstChild("FishmanKarate")
         if not FishmanKarate then
            local args = {
               [1] = "BuyFishmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         wait(1)
         if FishmanKarate then
            if FishmanKarate.Level.Value <= 299 then
               Weapon = FishmanKarate.Name
               repeat wait() until FishmanKarate.Level.Value >= 300 or not getgenv().AutoSuperHuman
            end
         end
         if FishmanKarate.Level.Value >= 300 then
            getgenv().HaveFishmanKarate = true
         end
         
      end

      local DragonClaw = LP.Backpack:FindFirstChild("DragonClaw") or LP.Character:FindFirstChild("DragonClaw")
      if not DragonClaw then
         local args = {
            [1] = "BlackbeardReward",
            [2] = "DragonClaw",
            [3] = "1"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         local args = {
            [1] = "BlackbeardReward",
            [2] = "DragonClaw",
            [3] = "2"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
      end
      wait(1)
      if DragonClaw then
         if DragonClaw.Level.Value <= 299 then
            Weapon = DragonClaw.Name
            repeat wait() until DragonClaw.Level.Value >= 300 or not getgenv().AutoSuperHuman
         end
      end

      local args = {
         [1] = "BuySuperhuman"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      Superhuman = LP.Backpack:FindFirstChild("Superhuman") or LP.Character:FindFirstChild("Superhuman")
      if Superhuman then
         Weapon = Superhuman
         return getgenv().AutoSuperHuman == false and lib:Notify("Auto SuperHuman","Done Auto SuperHuman")
      end
   end
end)
--Auto Click / Buso
spawn(function()
   while task.wait() do
      if getgenv().AutoBuso and not LP.Character:FindFirstChild("HasBuso") then
         local args = {
            [1] = "Buso"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
      if getgenv().AutoFarmFruitMastery or getgenv().AutoFarmGunMastery then
         if LP.Character:FindFirstChild(Weapon) then
            Click()
         end
      end
      if getgenv().FullyAutolawRaid or getgenv().AutoAllBoss or getgenv().AutoFarm or getgenv().MobAura or getgenv().AutoFarmCandy or getgenv().AutoFarmBone or getgenv().KillingBoss then
         if not Tweening then
            if LP.Character:FindFirstChild(Weapon) then
               Click()
            else
               Equip(Weapon)
            end
         end
      end
   end
end)
--Auto Rejoin 1
spawn(function()
   while wait(1) do
      if getgenv().AutoRejoin and workspace.DistributedGameTime >= 60*getgenv().MinuteToRejoin then
         if not getgenv().QueuedAutoRejoin then
            getgenv().QueuedAutoRejoin = true
            queue_on_teleport([[
               repeat wait(1)
               until game:IsLoaded()
               repeat wait(1)
               until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
               getgenv().AutoRejoin = true
               loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
            ]])
            if getgenv().AutoFarm then
               queue_on_teleport([[
                  getgenv().AutoFarm = true
               ]])
            end
            if getgenv().AutoFarmFruitMastery then
               queue_on_teleport([[
                  getgenv().AutoFarmFruitMastery = true
               ]])
            end
            if getgenv().AutoFarmGunMastery then
               queue_on_teleport([[
                  getgenv().AutoFarmGunMastery = true
               ]])
            end
         end
         
         wait(0.3)
         game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)

      end
   end
end)
--Auto Rejoin 2
game.CoreGui.RobloxPromptGui.promptOverlay.DescendantAdded:Connect(function()
    local GUI = game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
    if GUI then
        if GUI.TitleFrame.ErrorTitle.Text == "Disconnected" and getgenv().AutoRejoin then
            if #game.Players:GetPlayers() <= 1 then
               if not getgenv().QueuedAutoRejoin then
                  getgenv().QueuedAutoRejoin = true
                  queue_on_teleport([[
                     repeat wait(1)
                     until game:IsLoaded()
                     repeat wait(1)
                     until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
                     getgenv().AutoRejoin = true
                     loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
                  ]])
                  if getgenv().AutoFarm then
                     queue_on_teleport([[
                        getgenv().AutoFarm = true
                     ]])
                  end
                  if getgenv().AutoFarmFruitMastery then
                     queue_on_teleport([[
                        getgenv().AutoFarmFruitMastery = true
                     ]])
                  end
                  if getgenv().AutoFarmGunMastery then
                     queue_on_teleport([[
                        getgenv().AutoFarmGunMastery = true
                     ]])
                  end
               end
                game.Players.LocalPlayer:Kick("\nRejoining...")
                wait()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
            else
               if not getgenv().QueuedAutoRejoin then
                  getgenv().QueuedAutoRejoin = true
                  queue_on_teleport([[
                     repeat wait(1)
                     until game:IsLoaded()
                     repeat wait(1)
                     until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
                     getgenv().AutoRejoin = true
                     loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
                  ]])
                  if getgenv().AutoFarm then
                     queue_on_teleport([[
                        getgenv().AutoFarm = true
                     ]])
                  end
                  if getgenv().AutoFarmFruitMastery then
                     queue_on_teleport([[
                        getgenv().AutoFarmFruitMastery = true
                     ]])
                  end
                  if getgenv().AutoFarmGunMastery then
                     queue_on_teleport([[
                        getgenv().AutoFarmGunMastery = true
                     ]])
                  end
               end
               wait(1)
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
            end
        end
    end
end)
--Auto Rejoin 3
game.Players.PlayerRemoving:connect(function(abcd)
   if abcd == game.Players.LocalPlayer and getgenv().AutoRejoin then
      if not getgenv().QueuedAutoRejoin then
         getgenv().QueuedAutoRejoin = true
         queue_on_teleport([[
            repeat wait(1)
            until game:IsLoaded()
            repeat wait(1)
            until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
            getgenv().AutoRejoin = true
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
         ]])
         if getgenv().AutoFarm then
            queue_on_teleport([[
               getgenv().AutoFarm = true
            ]])
         end
         if getgenv().AutoFarmFruitMastery then
            queue_on_teleport([[
               getgenv().AutoFarmFruitMastery = true
            ]])
         end
         if getgenv().AutoFarmGunMastery then
            queue_on_teleport([[
               getgenv().AutoFarmGunMastery = true
            ]])
         end
      end 
      wait(0.2)
      game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
   end
end)

--Main Function
--Auto Farm Auto Update(Finished)
spawn(function()
   while task.wait() do
      if getgenv().AutoFarm then
         CheckLv()
         repeat wait()
         until not CheckingMob
         CheckQuestMob()
         pcall(function()
            local SmallestDistance = math.huge
            if Alive() then
               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  if Alive() and IsAlive(v) and  not Tweening and getgenv().AutoFarm and not string.find(v.Name,"Boss") then
                     if not FirstSea then
                        if string.find(v.Name,CurrentMobName) and string.find(v.Name,HighestLvToFarm) then
                           if SmallestDistance > (getRoot(v).Position-getRoot(LP.Character).Position).magnitude then
                              SmallestDistance = (getRoot(v).Position-getRoot(LP.Character).Position).magnitude
                              MobToFarm = v
                           end
                        end 
                     else
                        if v.Name == NameMob  then
                           if IsAlive(v) and Alive() then
                              if SmallestDistance > (getRoot(v).Position-getRoot(LP.Character).Position).magnitude then
                                 SmallestDistance = (getRoot(v).Position-getRoot(LP.Character).Position).magnitude
                                 MobToFarm = v
                              end
                           end
                        end
                     end
                  end
               end   
               TPSpecificPlace()
               --Define Vars
               OldY = getRoot(MobToFarm).Position.Y
               OldCFrame = getRoot(MobToFarm).CFrame
               ResizeHRP(MobToFarm,true)
               DoMagnet = false
               
               --Get Bring Pos
               if Alive() and IsAlive(MobToFarm) then
                  BringCFrame = getRoot(MobToFarm).CFrame
                  BringPos =  getRoot(MobToFarm).Position
               end
               
               TPSpecificPlace()
               CheckFloat1()
               --Set Spawn
               if getgenv().AutoSetSpawn then
                  --if Char:FindFirstChild("Humanoid") and Char:FindFirstChild("Humanoid").Health > 0 and getRoot(Char) and getgenv().AutoFarm and game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value ~= SpawnPoint and CanTween then
                     --TPSpecificPlace()
                     --DoTween(SpawnCFrame,getgenv().TweenSpeedTeleportPlace)
                     local args = {
                        [1] = "SetSpawnPoint"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  --end
               end
               --Get Quest
               GetQuest()
               --Tp To Mob
               if IsAlive(MobToFarm) and Alive() and getgenv().AutoFarm then
                  DoTween(getRoot(MobToFarm).CFrame * CFrame.new(0,0,30),getgenv().TweenSpeedAutoFarm)
                  CheckFloat1()
               end
               repeat task.wait()
                  if Alive() then
                     TPSpecificPlace()
                     CheckFloat1()
                     if IsAlive(MobToFarm) and CheckRange(MobToFarm,LP.Character,300) then
                        spawn(function()
                           if not BringFarm then
                              BringFarm = true    
                              BringMob()
                              wait(1)
                              if Alive() and IsAlive(MobToFarm) then
                                 BringCFrame = getRoot(MobToFarm).CFrame
                                 BringPos = getRoot(MobToFarm).Position
                              end
                              BringFarm = false
                           end
                        end)
                        if getRoot(LP.Character).Position.y - getRoot(MobToFarm).Position.y > -5  then
                           if getRoot(MobToFarm).Position.Y - OldY >= 0 then
                              spawn(function()
                                 wait()
                                 if getgenv().AutoFarm and IsAlive(MobToFarm) then
                                    if Alive() and CheckRange(MobToFarm,LP.Character,300) then
                                       CheckFloat1()
                                       getRoot(LP.Character).CFrame = getRoot(MobToFarm).CFrame * CFrame.new(0, 0, 30)
                                    else
                                       TPSpecificPlace()
                                       DoTween(getRoot(MobToFarm).CFrame * CFrame.new(0,0,30),getgenv().TweenSpeedAutoFarm)
                                       CheckFloat1()
                                    end
                                 end

                              end)
                           else 
                                 
                              getRoot(MobToFarm).CFrame = OldCFrame
                              wait()
                              DoTween(getRoot(MobToFarm).CFrame * CFrame.new(0,0,30),getgenv().TweenSpeedAutoFarm)
                              CheckFloat1()
                           end
                        elseif getgenv().AutoFarm and Alive() then
                           TPSpecificPlace()
                           CheckFloat1()
                           local randomnumber = math.random(1,3)
                           if randomnumber == 1 then
                              getRoot(LP.Character).CFrame = getRoot(MobToFarm).CFrame * CFrame.new(0, 30, 0)      
                           elseif randomnumber ==2 then
                              getRoot(LP.Character).CFrame = getRoot(MobToFarm).CFrame * CFrame.new(0, 0, -30) 
                           elseif randomnumber ==3 then
                              getRoot(LP.Character).CFrame = getRoot(MobToFarm).CFrame * CFrame.new(0, -30, 0)
                           end    
                        end
                     

                     elseif not Tweening and IsAlive(MobToFarm) and Alive() then  
                        BringCFrame = getRoot(MobToFarm).CFrame
                        BringPos = getRoot(MobToFarm).Position
                        TPSpecificPlace()
                        CheckFloat1()
                        if IsAlive(MobToFarm) and Alive() and not CheckRange(MobToFarm,LP.Character,300) then
                           TPSpecificPlace()
                           DoTween(getRoot(MobToFarm).CFrame* CFrame.new(0,0,30),getgenv().TweenSpeedAutoFarm)
                           CheckFloat1()
                        end
                     end
                     DoMagnet = true
                  else wait(5)
                  end
               until not IsAlive(MobToFarm) or not Alive() or getgenv().AutoFarm == false
               CheckFloat2()
            else wait(5)
            end
         end)
      end
   end
end)
--Auto Farm Gun Mastery
spawn(function()
   while task.wait() do
      if getgenv().AutoFarmGunMastery then
      pcall(function()
         FastAttack()
         if Alive() then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
               if string.find(v.Name,HighestLvToFarm) and string.find(v.Name, CurrentMobName) and not string.find(v.Name,"Boss") then
                  Equip(Weapon)
                  getgenv().SilentAimMob = true
                  DoMagnet = false
                  OldY = MobHRP.Position.Y
                  OldCFrame = MobHRP.CFrame
                  MobSilent = v
                  Clicking = false
                  BringFarmGun = false
                  if Alive() and IsAlive(v) and getgenv().AutoFarmGunMastery then
                     DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                     BringCFrame = getRoot(v).CFrame
                     BringPos = getRoot(v).Position
                  end
                  ResizeHRP(v,true)
                  repeat wait()
                     if Alive() then
                        CheckFloat1()
                        Clicking = true
                        spawn(function()
                           if not BringFarmGun then
                              BringFarmGun = true
                              BringMob()
                              --wait(0.2)
                              BringFarmGun = false
                           end
                        end)
                        if IsAlive(v) and getgenv().AutoFarmGunMastery then 
                           if FFC(v,"Humanoid").Health > (FFC(v,"Humanoid").MaxHealth*getgenv().HealthMastery)/100 then

                              Click()
                              if getRoot(LP.Character).Position.y >= getRoot(v).Position.y then
                                 if getRoot(v).Position.Y - OldY >= 0 then
                                    CheckFloat1()
                                    spawn(function()
                                       wait()
                                       if getgenv().AutoFarmGunMastery then
                                          if IsAlive(v) and Alive() then
                                             if CheckRange(v,Char,300)then
                                                CheckFloat1()
                                                local x,z = RandomNumberF()
                                                getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(x, getgenv().Y, z)
                                             else
                                                DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                                             end
                                          end
                                       end
                                    end)
                                 else 
                                    
                                    getRoot(v).CFrame = OldCFrame
                                    wait()
                                    if getgenv().AutoFarmGunMastery then
                                       DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                                    end
                                 end
                              else                                 
                                 if getgenv().AutoFarmGunMastery then
                                    if CheckRange(v,LP.Character,300) then
                                       CheckFloat1()
                                       local randomnumber = math.random(1,3)
                                       if randomnumber == 1 then
                                          CheckFloat1()
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, 30)      
                                       elseif randomnumber ==2 then
                                          CheckFloat1()
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, -30) 
                                       elseif randomnumber ==3 then
                                          CheckFloat1()
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, -30, 0)
                                       end    
                                    else
                                       DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                                    end
                                 end
                              end
                              DoMagnet = true
                           else
                              for i,v in pairs(LP.Backpack:GetChildren()) do  
                                 if v:IsA("Tool") then
                                    if v:FindFirstChild("RemoteFunctionShoot") then 
                                       GunFarmMas = v.Name
                                    end
                                 end
                              end
                              Equip(GunFarmMas)
                              getgenv().UsingGunMas = true
                              MobSilent = v
                              getgenv().SilentAimMob = true
                              spawn(function()
                                 while getgenv().UsingGunMas and getgenv().AutoFarmGunMastery and IsAlive(v) and Alive() do
                                    wait()
                                    if CheckRange(v,LP.Character,300) then
                                       
                                       local x,z = RandomNumberF()
                                       pcall(function()
                                          CheckFloat1()
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(x, getgenv().Y, z)
                                       end)
                                    else
                                       DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                                    end
                                 end
                              end)
                              
                              --pcall(function()
                                 
                                 if LP.Character:FindFirstChild(GunFarmMas) then
                                    Click()
                                    
                                 end
                                 if LP.Character:FindFirstChild(GunFarmMas) and getgenv().SkillZGun and FFC(v,"Humanoid").Health <= (FFC(v,"Humanoid").MaxHealth*getgenv().HealthMastery)/100 and require(LP.Character:FindFirstChild(GunFarmMas).Data).Lvl.Z <= LP.Character:FindFirstChild(GunFarmMas).Level.Value then
                                    VIM:SendKeyEvent(true,"Z",false,game)
                                    VIM:SendKeyEvent(false,"Z",false,game)
                                 end
                                 if LP.Character:FindFirstChild(GunFarmMas) and getgenv().SkillXGun and FFC(v,"Humanoid").Health <= (FFC(v,"Humanoid").MaxHealth*getgenv().HealthMastery)/100 and require(LP.Character:FindFirstChild(GunFarmMas).Data).Lvl.X <= LP.Character:FindFirstChild(GunFarmMas).Level.Value then
                                    VIM:SendKeyEvent(true,"X",false,game)
                                    VIM:SendKeyEvent(false,"X",false,game)
                                 end
                                 wait(0.5)
                              --end)
                        
                           end
                        end
                     else wait(5)
                     end
                  until not IsAlive(v) or not getgenv().AutoFarmGunMastery or not Alive()
                  MobSilent = nil                  
                  getgenv().UsingGunMas = false
                  getgenv().SilentAimMob = false
               end
            end
         end
      end)
      end
   end
end)
--Auto Farm Fruit Mastery
spawn(function()
   while task.wait() do
      if getgenv().AutoFarmFruitMastery then
      pcall(function()
         FastAttack()
         if Alive() then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
               if string.find(v.Name,HighestLvToFarm) and not string.find(v.Name,"Boss") then
                  HitBoxPlr()
                  getgenv().SilentAimMob = true
                  local MobHumanoid = v:FindFirstChild("Humanoid")
                  local MobHRP = getRoot(v)
                  local MobP = v.Parent
                  DoMagnet = false
                  OldY = MobHRP.Position.Y
                  OldCFrame = MobHRP.CFrame
                  MobSilent = v
                  Clicking = false
                  BringFarmFruit = false
                  if MobHumanoid and MobHRP and getgenv().AutoFarmFruitMastery then
                     if MobHumanoid.Health > 0 and Alive() then
                        if  getgenv().AutoFarmFruitMastery then
                           DisabledNoClip = true
                           DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                           CheckFloat1()
                           DisabledNoClip = false
                        end
                     end
                  end
                  if MobHumanoid and MobHRP and getgenv().AutoFarmFruitMastery then
                     if MobHumanoid.Health > 0 then
                        BringCFrame = getRoot(v).CFrame
                        BringPos = getRoot(v).Position
                     end
                  end
                  Equip(Weapon)
                  --HitBoxPlr()
                  getRoot(v).CanCollide = false
                  getRoot(v).Size = Vector3.new(60,60,60)
                  GetQuest()
                  repeat wait()
                     
                     CheckFloat1()
                     Clicking = true
                     spawn(function()
                        if not BringFarmFruit then
                           BringFarmFruit = true
                           BringMob()
                           wait(1)
                           BringFarmFruit = false
                        end
                     end)
                     if MobHumanoid and MobHRP and getgenv().AutoFarmFruitMastery and MobHumanoid.Health > 0 then 
                        if MobHumanoid.Health > (MobHumanoid.MaxHealth*getgenv().HealthMastery)/100 then
                           Equip(Weapon)
                           HitBoxPlr()
                           if getRoot(LP.Character).Position.y >= getRoot(v).Position.y then
                              if getRoot(v).Position.Y - OldY >= 0 then
                                 spawn(function()
                                    wait()
                                    if getgenv().AutoFarmFruitMastery then
                                       if MobP and MobHumanoid and MobHRP then
                                          if Alive() and MobHumanoid.Health > 0 then
                                             if (MobHRP.Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                                CheckFloat1()
                                                --local x,z = RandomNumberF()
                                                getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0,0,30)
                                             else
                                                DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                                                CheckFloat1()
                                             end
                                          end
                                       end
                                    end
                                 end)
                              else 
                                 
                                 getRoot(v).CFrame = OldCFrame
                                 wait()
                                 if getgenv().AutoFarmFruitMastery then
                                    
                                    DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                                    CheckFloat1()
                                 end
                              end
                           else                                 
                              if getgenv().AutoFarmFruitMastery then
                                 if (MobHRP.Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                    CheckFloat1()
                                    local randomnumber = math.random(1,3)
                                    if randomnumber == 1 and (MobHRP.Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                       CheckFloat1()
                                       getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, 30)      
                                    elseif randomnumber ==2 and (MobHRP.Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                       CheckFloat1()
                                       getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, -30) 
                                    elseif randomnumber ==3 and (MobHRP.Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                       CheckFloat1()
                                       getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, -30, 0)
                                    end    
                                 else
                                    DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                                 end 
                              end
                           end
                           DoMagnet = true
                        else
                           Equip(MyDevilFruit)
                           getgenv().UsingFruitMas = true
                           MobSilent = v
                           getgenv().SilentAimMob = true
                           spawn(function()
                              while getgenv().UsingFruitMas == true and getgenv().AutoFarmFruitMastery and  v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil and LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("Humanoid").Health > 0 do
                                 wait()
                                 if (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                    local x,z = RandomNumberF()
                                    pcall(function()
                                       CheckFloat1()
                                       getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(x, getgenv().Y, z)
                                       CheckFloat1()
                                    end)
                                 else
                                    DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                                 end
                              end
                           end)
                           
                           --Equip DevilFruit
                           --pcall(function()
                           --end)
                        
                           if game.Players.LocalPlayer.Data.DevilFruit.Value == "Control-Control" then
                              pcall(function()
                              if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and getgenv().SkillZ and not UsingSkill then
                                 if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).TextureId ~= "rbxassetid://4900750433" and getgenv().AutoFarmFruitMastery then
                                    UsingSkill = true
                                    VIM:SendKeyEvent(true,"Z",false,game)
                                    wait(getgenv().SkillZHold/10)
                                    VIM:SendKeyEvent(false,"Z",false,game)
                                    UsingSkill = false
                                 end

                              end
                              if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and getgenv().SkillX and v.Humanoid.Health <= (v:FindFirstChild("Humanoid").MaxHealth*getgenv().HealthMastery)/100 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Cooldown.AbsoluteSize.X == 0 and not UsingSkill and getgenv().AutoFarmFruitMastery then
                                 UsingSkill = true
                                 VIM:SendKeyEvent(true,"X",false,game)
                                 VIM:SendKeyEvent(false,"X",false,game)
                                 UsingSkill = false
                              end
                              if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and getgenv().SkillC and v.Humanoid.Health <= (v:FindFirstChild("Humanoid").MaxHealth*getgenv().HealthMastery)/100 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Cooldown.AbsoluteSize.X == 0 and not UsingSkill and getgenv().AutoFarmFruitMastery and require(LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Data).Lvl.C <= LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value then
                                 UsingSkill = true
                                 VIM:SendKeyEvent(true,"C",false,game)
                                 VIM:SendKeyEvent(false,"C",false,game)
                                 UsingSkill = false
                              end
                              if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and getgenv().SkillV and v.Humanoid.Health <= (v:FindFirstChild("Humanoid").MaxHealth*getgenv().HealthMastery)/100 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].V.Cooldown.AbsoluteSize.X == 0 and not UsingSkill and getgenv().AutoFarmFruitMastery and require(LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Data).Lvl.V <= LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value then
                                 UsingSkill = true
                                 VIM:SendKeyEvent(true,"V",false,game)
                                 VIM:SendKeyEvent(false,"V",false,game)
                                 UsingSkill = false
                              end
                           end)
                           
                           elseif game.Players.LocalPlayer.Data.DevilFruit.Value ~= "Control-Control" then

                              pcall(function()
                                 if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                    Click()
                                 end
                                 if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and getgenv().SkillZ and v.Humanoid.Health <= (v:FindFirstChild("Humanoid").MaxHealth*getgenv().HealthMastery)/100 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Cooldown.AbsoluteSize.X == 0 and not UsingSkill and getgenv().AutoFarmFruitMastery and require(LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Data).Lvl.Z <= LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value then
                                    
                                    UsingSkill = true
                                    VIM:SendKeyEvent(true,"Z",false,game)
                                    wait(getgenv().SkillZHold/10)
                                    VIM:SendKeyEvent(false,"Z",false,game)
                                    UsingSkill = false
                                 end
                                 if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and getgenv().SkillX and v.Humanoid.Health <= (v:FindFirstChild("Humanoid").MaxHealth*getgenv().HealthMastery)/100 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Cooldown.AbsoluteSize.X == 0 and not UsingSkill and getgenv().AutoFarmFruitMastery and require(LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Data).Lvl.X <= LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value then
                                    UsingSkill = true
                                    VIM:SendKeyEvent(true,"X",false,game)
                                    wait(getgenv().SkillXHold/10)
                                    VIM:SendKeyEvent(false,"X",false,game)
                                    UsingSkill = false
                                 end
                                 if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and getgenv().SkillC and v.Humanoid.Health <= (v:FindFirstChild("Humanoid").MaxHealth*getgenv().HealthMastery)/100 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Cooldown.AbsoluteSize.X == 0 and not UsingSkill and getgenv().AutoFarmFruitMastery and require(LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Data).Lvl.C <= LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value then                                       
                                    UsingSkill = true
                                    VIM:SendKeyEvent(true,"C",false,game)
                                    wait(getgenv().SkillCHold/10)
                                    
                                    VIM:SendKeyEvent(false,"C",false,game)
                                    UsingSkill = false
                                 end
                                 if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and getgenv().SkillV and v.Humanoid.Health <= (v:FindFirstChild("Humanoid").MaxHealth*getgenv().HealthMastery)/100 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].V.Cooldown.AbsoluteSize.X == 0 and not UsingSkill and getgenv().AutoFarmFruitMastery and require(LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Data).Lvl.V <= LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value then
                                    UsingSkill = true
                                    VIM:SendKeyEvent(true,"V",false,game)
                                    wait(getgenv().SkillVHold/10)
                                    VIM:SendKeyEvent(false,"V",false,game)
                                    UsingSkill = false
                                 end
                                 if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and getgenv().SkillF and v.Humanoid.Health <= (v:FindFirstChild("Humanoid").MaxHealth*getgenv().HealthMastery)/100 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].F.Cooldown.AbsoluteSize.X == 0 and not UsingSkill and getgenv().AutoFarmFruitMastery and require(LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Data).Lvl.F <= LP.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value then
                                    UsingSkill = true
                                    VIM:SendKeyEvent(true,"F",false,game)
                                    wait(getgenv().SkillFHold/10)
                                    VIM:SendKeyEvent(false,"F",false,game)
                                    UsingSkill = false
                                 end
                              end)
                           end
                        end
                     end
                  until not MobHumanoid or not MobHRP or not MobP or not getgenv().AutoFarmFruitMastery or MobHumanoid.Health <= 0 or not Alive()
                  --DeActive Control Room
                  if game.Players.LocalPlayer.Data.DevilFruit.Value == "Control-Control"  and Alive() then
                     Equip(game.Players.LocalPlayer.Data.DevilFruit.Value)
                     if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).TextureId == "rbxassetid://4900750433"  then
                           repeat wait()
                              Equip(game.Players.LocalPlayer.Data.DevilFruit.Value)
                              VIM:SendKeyEvent(true,"Z",false,game)
                              wait()
                              VIM:SendKeyEvent(false,"Z",false,game)
                           until game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).TextureId ~= "rbxassetid://4900750433" or not getgenv().AutoFarmFruitMastery
                        end
                     end
                  end 
                  MobSilent = nil
                  DisabledNoClip = false
                  getgenv().UsingFruitMas = false
                  getgenv().SilentAimMob = false
               end
            end
         end
      end)
      end
   end
end)
-- Auto All Boss(Hop)
spawn(function()
   wait(5)
   while wait()  do
      FoundBoss = false
      if getgenv().AutoAllBoss then
         pcall(function()
            if getgenv().AutoAllBossHop then
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if v then
                     local BossLevel = string.gsub(v.Name, "%D", "")
                     local PlrLevel = game.Players.LocalPlayer.Data.Level.Value
                     if BossLevel ~= nil and PlrLevel ~= nil then
                        if v.Name ~= "Order [Lv. 1250] [Raid Boss]" and v.Name ~= "Cursed Captain [Lv. 1325] [Raid Boss]" and v.Name ~= "rip_indra [Lv. 1500] [Boss]" and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and tonumber(BossLevel) <= PlrLevel and string.find(v.Name,"Boss") then
                           if v:FindFirstChild("Humanoid") and getRoot(v) and v:FindFirstChild("Humanoid").Health > 0 then
                              FoundBoss = true
                           end
                        end
                     end
                  end
               end
               if not FoundBoss then
                  wait()
                  loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/CharwarServerHop.lua"))()
               end
            end
         end)
         CancelQuest()
         pcall(function()
            refreshBosses()
            local NearestBoss;
            local NearestDist = math.huge
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
               if v then
                  local BossLevel = string.gsub(v.Name, "%D", "")
                  local PlrLevel = game.Players.LocalPlayer.Data.Level.Value
                  if BossLevel ~= nil and PlrLevel ~= nil then
                     if getgenv().AutoAllBoss and v.Name ~= "Longma [Lv. 2000] [Boss]" and v.Name ~= "Order [Lv. 1250] [Raid Boss]" and v.Name ~= "Cursed Captain [Lv. 1325] [Raid Boss]" and v.Name ~= "rip_indra [Lv. 1500] [Boss]" and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and tonumber(BossLevel) <= PlrLevel and string.find(v.Name,"Boss") then
                        if v:FindFirstChild("Humanoid") and getRoot(v) and v:FindFirstChild("Humanoid").Health > 0 and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude < NearestDist then
                           NearestBoss = v
                           NearestDist =  (getRoot(v).Position-getRoot(LP.Character).Position).magnitude
                        end
                     end
                  end
               end
            end
            getgenv().ChosenBoss = NearestBoss.Name
            CheckQuestBoss()
            if NearestBoss then
               OldY = getRoot(NearestBoss).Position.Y
               OldCFrame = getRoot(NearestBoss).CFrame
               
               FastAttack()
               --Get Quest
               if getgenv().AutoFarmQuest and QuestNameBoss then
                 
                  if Alive() and getgenv().AutoAllBoss and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                     if IsAlive(NearestBoss) and getgenv().AutoAllBoss then
                        DoTween(QuestCFrameBoss,getgenv().TweenSpeedQuest)
                        if (getRoot(LP.Character).Position- Vector3.new(QuestCFrameBoss)).magnitude < 50 then
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestNameBoss, LvQuestBoss)
                        elseif getgenv().AutoFarmQuest and getgenv().AutoAllBoss then 
                           DoTween(QuestCFrameBoss,getgenv().TweenSpeedQuest)
                           ReplStorage.Remotes.CommF_:InvokeServer("StartQuest", QuestNameBoss, LvQuestBoss)
                        end
                     end
                  end
               end
               --Tp To Boss
               if IsAlive(NearestBoss) and Alive() and getgenv().AutoAllBoss then
                  DisabledNoClip = true
                  DoTween(getRoot(NearestBoss).CFrame * CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                  DisabledNoClip = false
               end
               repeat wait()
                  
                  if Alive() then
                     FoundBoss = false
                     if getgenv().AutoAllBossHop then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                           if v then
                              local BossLevel = string.gsub(v.Name, "%D", "")
                              local PlrLevel = game.Players.LocalPlayer.Data.Level.Value
                              if BossLevel ~= nil and PlrLevel ~= nil then
                                 if v.Name ~= "Longma [Lv. 2000] [Boss]" and v.Name ~= "Order [Lv. 1250] [Raid Boss]" and v.Name ~= "Cursed Captain [Lv. 1325] [Raid Boss]" and v.Name ~= "rip_indra [Lv. 1500] [Boss]" and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and tonumber(BossLevel) <= PlrLevel and string.find(v.Name,"Boss") then
                                    if v:FindFirstChild("Humanoid") and getRoot(v) and v:FindFirstChild("Humanoid").Health > 0 then
                                       FoundBoss = true
                                    end
                                 end
                              end
                           end
                        end
                        if not FoundBoss then
                           loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/CharwarServerHop.lua"))()
                        end
                     end
                     CheckFloat1()
                     
                     FastAttack()
                     -- HitBoxPlr()
                     ResizeBoss(NearestBoss,true)
                     DisabledNoClip = true

                     if getgenv().AutoAllBoss and IsAlive(NearestBoss) and Alive() and CheckRange(NearestBoss,LP.Character,300) then

                        if getRoot(LP.Character).Position.y - getRoot(NearestBoss).Position.y > -3 then
                           if getRoot(NearestBoss).Position.Y - OldY >= 0 then
                              spawn(function()
                                 wait()
                                 if getgenv().AutoAllBoss and IsAlive(NearestBoss) then
                                    if Alive() and CheckRange(NearestBoss,LP.Character,300) then
                                       CheckFloat1()
                                       getRoot(LP.Character).CFrame = getRoot(NearestBoss).CFrame * CFrame.new(0, 40, 40)
                                    else
                                       DoTween(getRoot(NearestBoss).CFrame * CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                                    end
                                 end

                              end)
                           else 
                              wait()
                              DoTween(getRoot(NearestBoss).CFrame * CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                           end
                        elseif getgenv().AutoAllBoss then
                           local randomnumber = math.random(1,3)
                           if randomnumber == 1 then
                              getRoot(LP.Character).CFrame = getRoot(NearestBoss).CFrame * CFrame.new(0, 50, 0)      
                           elseif randomnumber ==2 then
                              getRoot(LP.Character).CFrame = getRoot(NearestBoss).CFrame * CFrame.new(0, 0, -50) 
                           elseif randomnumber ==3 then
                              getRoot(LP.Character).CFrame = getRoot(NearestBoss).CFrame * CFrame.new(0, -50, 0)
                           end    
                        end
                     

                     elseif not Tweening and IsAlive(NearestBoss) and Alive() then  
                        DoTween(getRoot(NearestBoss).CFrame* CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                        if IsAlive(NearestBoss) and not CheckRange(NearestBoss,LP.Character,300)  then
                           DoTween(getRoot(NearestBoss).CFrame* CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                        end
                     end
                  else wait(5)
                  end
               until not IsAlive(NearestBoss) or not Alive() or getgenv().AutoAllBoss == false
            end
         end)
      end
   end
end)
--Auto Ken Haki Farm(Need Rework)
spawn(function()
   while wait() do

      if getgenv().ObservationFarm and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") ~= nil then
         if FirstSea then
            MobObservation = "Galley Captain [Lv. 650]"
            PosObservation = CFrame.new(5533.29785, 88.1079102, 4852.3916)
         elseif SecondSea then
            MobObservation = "Snow Lurker [Lv. 1375]"
            PosObservation = CFrame.new(5587.1064453125, 57.5491943359375, -6607.7607421875)
         elseif ThirdSea then
            MobObservation = "Marine Commodore [Lv. 1700]"
            PosObservation = CFrame.new(5533.29785, 88.1079102, 4852.3916)
         end
         --VirtualUser:CaptureController()
         --VirtualUser:SetKeyDown('0x65')
         --VirtualUser:SetKeyUp('0x65')
            
         if MobObservation ~= nil and PosObservation ~= nil then
            if game.Workspace.Enemies:FindFirstChild(MobObservation) then
               if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                  DoTween(game.Workspace.Enemies:FindFirstChild(MobObservation).HumanoidRootPart.CFrame* CFrame.new(3,0,0),getgenv().TweenSpeedAutoFarm)
                  repeat wait()
                     if (getRoot(LP.Character).Position-game.Workspace.Enemies:FindFirstChild(MobObservation).HumanoidRootPart.Position).magnitude < 300 then
                        getRoot(LP.Character).CFrame = game.Workspace.Enemies:FindFirstChild(MobObservation).HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                     else
                        DoTween(game.Workspace.Enemies:FindFirstChild(MobObservation).HumanoidRootPart.CFrame* CFrame.new(3,0,0),getgenv().TweenSpeedAutoFarm)
                     end
                  until getgenv().Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                  if getgenv().ObservationFarmHop then
                     DoTween(PosObservation,getgenv().TweenSpeedTeleportPlace)
                     local args = {
                        [1] = "SetSpawnPoint"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     wait()
                     loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/CharwarServerHop.lua"))()
                  else
                     DoTween(PosObservation,getgenv().TweenSpeedTeleportPlace)
                     wait(60)
                  end
               else
                  CheckFloat1()
                  repeat wait()
                     if not  game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        CheckFloat1()
                        if (getRoot(LP.Character).Position-game.Workspace.Enemies:FindFirstChild(MobObservation).HumanoidRootPart.Position).magnitude < 300 then
                           getRoot(LP.Character).CFrame = game.Workspace.Enemies:FindFirstChild(MobObservation).HumanoidRootPart.CFrame * CFrame.new(30,30,30)
                        else
                           DoTween(game.Workspace.Enemies:FindFirstChild(MobObservation).HumanoidRootPart.CFrame* CFrame.new(30,30,30),getgenv().TweenSpeedAutoFarm)
                        end
                        if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                           VirtualUser:CaptureController()
                           VirtualUser:SetKeyDown('0x65')
                           wait()
                           VirtualUser:SetKeyUp('0x65')
                        end
                     end
                  until getgenv().Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                  CheckFloat2()
               end
            else DoTween(PosObservation,getgenv().TweenSpeedAutoFarm)
            end
         end
      end
   end
end)
--Auto Chest
spawn(function()
   while wait() do
      if getgenv().AutoChest then
         local close = nil 

         close = FindNearest()
         --pcall(function()
         if close ~= nil then
            
            ChestCFrame = CFrame.new(close.CFrame.X,close.CFrame.Y,close.CFrame.Z)

            if not moving then
               moving = true 
            DoTween(ChestCFrame*CFrame.new(5,0,5),getgenv().TweenSpeedAutoChest)
            end
            wait(0.1)
            
            DoTween(ChestCFrame*CFrame.new(1,0,1),getgenv().TweenSpeedAutoChest)
            
            repeat wait() 
               
               LP.Character.Humanoid:MoveTo(close.Position) 
            until close == nil or close.Parent == nil or getgenv().AutoChest == false
            moving = false
         end
         --end)
      end
   end
end)
--Insert Var
for i,v in pairs(LP.Character:GetChildren()) do
   if v and v:IsA("Tool") and v.ToolTip == "Melee" then
      Weapon = v.Name
   end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v and v:IsA("Tool") and v.ToolTip == "Melee" then
      Weapon = v.Name
   end
end
if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("DragonColorPicker") then
   for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].DragonColorPicker:GetChildren()) do
      table.insert(DragonColor,v.Name)
   end
end
for i,v in pairs(LP.Backpack:GetChildren()) do  
   if v:IsA("Tool") then
       table.insert(PLrWeapons ,v.Name)
   end
end

for i,v in pairs(LP.Character:GetChildren()) do  
  if v:IsA("Tool") then
     table.insert(PLrWeapons ,v.Name)
  end
end

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if string.find(v.Name, "Boss") then
      table.insert(BossesTable, v.Name)
   end
end

for i,v in pairs(game.Players:GetChildren()) do  
  table.insert(PlayerTable ,v.Name)
end
for i,v in pairs(require(game:GetService("ReplicatedStorage").Quests)) do
   local PlrLevel = game.Players.localPlayer.Data.Level.Value

   if typeof(v) == "table" then
      for i2,v2 in pairs(v) do
         IsBoss = false
         for i3,v3 in pairs(v2) do
            if i3 == "Task" then    
               for i4,v4 in pairs(v3) do
                  if v4 == 1 then
                     IsBoss = true
                  end
               end
            end
            if IsBoss then
               if i3 == "Name" then    
                  if not table.find(TableBoss, v3) then
                     table.insert(TableBoss, v3)
                  end
               end
               if i3 == "LevelReq" then  
               end
            end
         end
      end
   end
end
if SecondSea then
  MaxLevelSea = 1450
elseif ThirdSea then
  MaxLevelSea = 2275
elseif FirstSea then
   MaxLevelSea = 675
end
local args = {[1] = "GetFruits"}
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))) do
   for i2,v2 in pairs(v) do
      if i2 == "Name" then
         table.insert(FruitTable, v2)
      end
   end
end
--Ui


lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/rblx/ui/venyx.lua"))().new()
if getgenv().TextColorChange ~= nil then
   lib:setTheme("TextColor",getgenv().TextColorChange)
end
if getgenv().GlowColorChange ~= nil then
   lib:setTheme("TextColor",getgenv().GlowColorChange )
end
lib:Notify("Island","Ui Made by Denosaur")
wait(1)
lib:Notify("Island","Loading Functions + Data")
spawn(function()
   while wait() do
      if getgenv().RainbowUi then
         lib:setTheme("TextColor",Color3.fromHSV(tick() * 24 % 255/255, 1, 1))
         lib:setTheme("Glow",Color3.fromHSV(tick() * 24 % 255/255, 1, 1))
      end
   end
end)


local MainPage = lib:addPage("Main")
local AutoFarm = MainPage:addSection("Auto Farm")
AutoFarm:addToggle("Auto Farm (Auto Update)",getgenv().AutoFarm,function(boolen)
   getgenv().AutoFarm  = boolen
   if getgenv().AutoFarm then
      CheckFloat1()
   else 
      wait(1)
      DisabledNoClip = false
      CheckFloat2()
   end
end)
--smh this thing is  broken as hell
--Won't Support Sea 3
if FirstSea or SecondSea then
   AutoFarm:addToggle("Auto Farm v2(Glitch)(Very Fast)",getgenv().AutoFarm2,function(boolen)
      getgenv().AutoFarm2  = boolen
      --Check Quest
      CheckManually()

      --Equip
      spawn(function()
         while getgenv().AutoFarm2 and wait() do
            
            if LP.Character:FindFirstChild(Weapon) then
               Click()
            else
               Equip(Weapon)
            end
         end
      end)
      if getgenv().AutoFarm2 then
         CheckFloat1()
      else 
         DisabledNoClip = false
         CheckFloat2()
      end

      while getgenv().AutoFarm2 and wait() do
      pcall(function()
            local SmallestDistance = math.huge
            if Alive() then
               TPSpecificPlace()
               
               FastAttack()
               CheckFloat1()
               --Set Spawn
               if getgenv().AutoSetSpawn and getgenv().AutoFarm2 and Alive() then
                  --if LP.Character:FindFirstChild("Humanoid") and LP.Character:FindFirstChild("Humanoid").Health > 0 and getRoot(LP.Character) and getgenv().AutoFarm2 and game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value ~= SpawnPoint and CanTween then
                     --DoTween(SpawnCFrame,getgenv().TweenSpeedTeleportPlace)
                     local args = {
                        [1] = "SetSpawnPoint"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     wait(0.1)
                  --end
               end
               TPSpecificPlace()
               DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
               wait(0.1)
               if getgenv().AutoFarmQuest then
                  if Alive() and getgenv().AutoFarm2 and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,CurrentMobName)) then
                     if (getRoot(LP.Character).Position- Vector3.new(QuestCFrame)).magnitude < 50 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                        wait(0.5)
                     elseif getgenv().AutoFarmQuest and getgenv().AutoFarm2 then 
                        DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                        wait(0.5)
                     end
                  end
               end
               if FarmingPlace2 == nil then
                  repeat wait() 
                     if getgenv().AutoFarm2 and Alive()  then
                        if game.Workspace.Enemies:FindFirstChild(NameMob) then
                        else
                           repeat wait() until
                           game.Workspace.Enemies:FindFirstChild(NameMob) or not getgenv().AutoFarm2
                        end
                        if getgenv().AutoFarm2 then
                           if getgenv().AutoFarmQuest then
                              if Alive() and getgenv().AutoFarm2 and (LP.PlayerGui.Main.Quest.Visible == false or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,CurrentMobName)) then
                                 if (getRoot(LP.Character).Position- Vector3.new(QuestCFrame)).magnitude < 50 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                                    wait(0.5)
                                 elseif getgenv().AutoFarmQuest and getgenv().AutoFarm2 then 
                                    DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
                                    CheckFloat1()
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                                    wait(0.5)
                                 end
                              end
                           end
                           if getgenv().AutoFarm2 and Alive() then
                              TPSpecificPlace()
                              CheckFloat1()
                              
                              FastAttack()
                              HitBoxPlr()
                              CheckManually()
                              DisabledNoClip = true
                              DoTween(FarmingPlace1*CFrame.new(0,30,0))
                              CheckFloat1()
                              DisabledNoClip = false
                              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                 if not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoFarm2 and v.Name == NameMob then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and getRoot(v) and (getRoot(v).Position-FarmingPlace1.Position).magnitude <= 450 then
                                       getRoot(v).CFrame = FarmingPlace1
                                       getRoot(v).CanCollide = false
                                       getRoot(v).Size = Vector3.new(60,60,60)
                                       spawn(function()
                                          for i2,v2 in pairs(v:GetChildren()) do
                                             wait()
                                             if v2:IsA("BasePart") or v2.ClassName == "MeshPart" or v2.Name == "Head" and getgenv().AutoFarmBring then
                                                v2.Transparency = 1
                                             elseif v2.ClassName == "Accessory" and getgenv().AutoFarmBring  then
                                                v2.Handle.Transparency = 1
                                             end
                                          end
                                       end)
                                    end
                                 end
                              end
                           end
                        end
                     end
                  until not Alive() or not getgenv().AutoFarm2 
                  CheckManually()
                  DisabledNoClip = false
               else
                  repeat wait() 
                     if getgenv().AutoFarm2 then
                        if game.Workspace.Enemies:FindFirstChild(NameMob) then
                        else
                           repeat wait() until
                           game.Workspace.Enemies:FindFirstChild(NameMob) or not getgenv().AutoFarm2
                        end
                        if getgenv().AutoFarm2 then
                           if getgenv().AutoFarmQuest then
                              if Alive() and getgenv().AutoFarm2 and (LP.PlayerGui.Main.Quest.Visible == false or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,CurrentMobName)) then
                                 if (getRoot(LP.Character).Position- Vector3.new(QuestCFrame)).magnitude < 50 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                                    wait(0.5)
                                 elseif getgenv().AutoFarmQuest and getgenv().AutoFarm2 then 
                                    DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                                    wait(0.5)
                                 end
                              end
                           end
                           if getgenv().AutoFarm2 and Alive()  then
                              TPSpecificPlace()
                              CheckFloat1()
                              
                              FastAttack()
                              HitBoxPlr()
                              DisabledNoClip = true
                              DoTween(FarmingPlace1*CFrame.new(0,30,0))
                              DisabledNoClip = false

                              repeat wait()
                                 if getgenv().AutoFarm2 then
                                    CheckFloat1()
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                       if not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoFarm2 and v.Name == NameMob then
                                          if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and getRoot(v) and (getRoot(v).Position-FarmingPlace1.Position).magnitude <= 450 then
                                             getRoot(v).CFrame = FarmingPlace1*CFrame.new(math.random(1,3),0,math.random(1,3))
                                             getRoot(v).CanCollide = false
                                             getRoot(v).Size = Vector3.new(60,60,60)
                                             MobFarming = v
                                          end
                                       end
                                    end
                                 end
                              until not MobFarming or not MobFarming.Humanoid or MobFarming.Humanoid.Health <= 0 or not getgenv().AutoFarm2

                              DisabledNoClip = true
                              DoTween(FarmingPlace2*CFrame.new(0,30,0))
                              DisabledNoClip = false
                              CheckFloat1()
                              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                 if not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoFarm2 and v.Name == NameMob then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and getRoot(v) and (getRoot(v).Position-FarmingPlace2.Position).magnitude <= 350 then
                                       getRoot(v).CFrame = FarmingPlace2
                                       MobFarming = v
                                    end
                                 end
                              end
                              repeat wait()
                                 if getgenv().AutoFarm2 then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                       if not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoFarm2 and v.Name == NameMob then
                                          if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and getRoot(v) and (getRoot(v).Position-FarmingPlace2.Position).magnitude <= 350 then
                                             getRoot(v).CFrame = FarmingPlace2*CFrame.new(math.random(1,3),0,math.random(1,3))
                                             getRoot(v).CanCollide = false
                                             getRoot(v).Size = Vector3.new(60,60,60)
                                             MobFarming = v
                                          end
                                       end
                                    end
                                 end
                              until not MobFarming or not MobFarming.Humanoid or MobFarming.Humanoid.Health <= 0 or not getgenv().AutoFarm2
                           end
                        end
                     end
                  until not Alive() or not getgenv().AutoFarm2
               end
                  
                     

            else wait(5)
            end
         end)
      end
      CheckFloat2()
      wait(1)
      CheckFloat2()
   end)
end
--Auto Farm Fruit Mastery
if SecondSea or ThirdSea then
   AutoFarm:addToggle("Auto Farm Fruit Mastery",getgenv().AutoFarmFruitMastery,function(boolen)
      getgenv().AutoFarmFruitMastery = boolen
      --Check Level
         CheckLv()
         CheckQuestMob()
      if getgenv().AutoFarmFruitMastery then
         CheckFloat1()
      else 
         DisabledNoClip = false
         CheckFloat2()
      end
   end)
   AutoFarm:addToggle("Auto Farm Gun Mastery",getgenv().AutoFarmGunMastery,function(boolen)
      getgenv().AutoFarmGunMastery = boolen
         CheckLv()
         CheckQuestMob()
      if getgenv().AutoFarmGunMastery then
         CheckFloat1()
      else
         DisabledNoClip = false
         CheckFloat2()
      end
      CheckFloat2()
   end)
end
AutoFarm:addToggle("Auto Rejoin",false,function(boolen)
   getgenv().AutoRejoin = boolen
end)
AutoFarm:addSlider("Minute To Rejoin",getgenv().MinuteToRejoin,1,600,function(Value)
   getgenv().MinuteToRejoin = Value
end)
AutoFarm:addSlider("Health Mastery (%) ",getgenv().HealthMastery,0,100,function(Value)
   getgenv().HealthMastery = Value
end)
AutoFarm:addToggle("Mob Aura",false,function(boolen)
   getgenv().MobAura = boolen
   while getgenv().MobAura and task.wait() do
      local NearestMob;
      local NearestDist = math.huge
      for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
         if getRoot(v) and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
            if (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 3000 then
               if (getRoot(v).Position-getRoot(LP.Character).Position).magnitude < NearestDist then
                  NearestDist = (getRoot(v).Position-getRoot(LP.Character).Position).magnitude
                  NearestMob = v
               end
            end
         end
      end
      if NearestMob then
         pcall(function()
            if CheckRange(NearestMob,LP.Character,3000)then
               MobAuraBringPos = getRoot(NearestMob).CFrame
               repeat wait()

                  Equip(Weapon)
                  ResizeHRP(NearestMob,false)
                  if CheckRange(NearestMob,LP.Character,350) then
                     getRoot(LP.Character).CFrame = getRoot(NearestMob).CFrame * CFrame.new(0, 0, 60)
                  else
                     DoTween(getRoot(NearestMob).CFrame,getgenv().TweenSpeedAutoFarm)
                  end
               until not IsAlive(LP.Character) or not getgen().MobAura or not CheckRange(NearestMob,LP.Character,3000)
            end
         end)
      end
   end
end)
AutoFarm:addToggle("Mob Aura Bring",false,function(boolen)
   getgenv().MobAura = boolen
   while getgenv().MobAura and task.wait() do
      local NearestMob;
      local NearestDist = math.huge
      for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
         if getRoot(v) and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
            if (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 3000 then
               if (getRoot(v).Position-getRoot(LP.Character).Position).magnitude < NearestDist then
                  NearestDist = (getRoot(v).Position-getRoot(LP.Character).Position).magnitude
                  NearestMob = v
               end
            end
         end
      end
      if NearestMob and IsAlive(NearestMob) and Alive() then
         pcall(function()
            if (getRoot(NearestMob).Position-getRoot(LP.Character).Position).magnitude <= 3000 then
               MobAuraBringPos = getRoot(NearestMob).CFrame
               if Alive() and getRoot(NearestMob) then
                  BringCFrame = getRoot(NearestMob).CFrame
                  BringPos = getRoot(NearestMob).Position
               end
               repeat wait()
                  spawn(function()
                     if not BringAura then
                        BringAura = true
                        BringMobNear()
                        wait(1)
                        BringAura = false
                     end
                  end)
                  Equip(Weapon)
                  ResizeHRP(NearestMob,true)
                  if (getRoot(NearestMob).Position-getRoot(LP.Character).Position).magnitude <= 350 then

                     getRoot(LP.Character).CFrame = getRoot(NearestMob).CFrame * CFrame.new(0, 0, 60)
                  else
                     DoTween(getRoot(NearestMob).CFrame,getgenv().TweenSpeedAutoFarm)
                  end
               until not IsAlive(NearestMob) or not getgen().MobAura or not (getRoot(NearestMob).Position-getRoot(LP.Character).Position).magnitude > 3000
            end
         end)
      end
   end
end)
--Finished
if not FirstSea then
   AutoFarm:addToggle("Auto Kill Sea Beast(Weapon Skills)",false,function(boolen)
      getgenv().AutoSeaBeast = boolen
      while getgenv().AutoSeaBeast and task.wait() do
         local NearestSeaBeast;
         local NearestDistSeaBeast = math.huge
         for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
            if getRoot(v) then
               if (getRoot(v).Position-getRoot(LP.Character).Position).magnitude < NearestDistSeaBeast then
                  NearestSeaBeast = v
                  NearestDistSeaBeast = (getRoot(v).Position-getRoot(LP.Character).Position).magnitude
               end
            end
         end
         pcall(function()
            DoTween(NearestSeaBeast.HumanoidRootPart.CFrame * CFrame.new(0,300,0),getgenv().TweenSpeedTeleportPlace)
            repeat wait()
               spawn(function()
                  if WeaponSkill1 ~= nil and getgenv().AutoSeaBeast and Alive() then
                     Equip(WeaponSkill1)
                     wait()
                     if LP.Character:FindFirstChild(WeaponSkill1) then
                        Click()
                     end
                     VIM:SendKeyEvent(true,"Z",false,game)
                     VIM:SendKeyEvent(false,"Z",false,game)
                     wait()
                     VIM:SendKeyEvent(true,"X",false,game)
                     VIM:SendKeyEvent(false,"X",false,game)
                     wait()
                     VIM:SendKeyEvent(true,"C",false,game)
                     VIM:SendKeyEvent(false,"C",false,game)
                     wait()
                     VIM:SendKeyEvent(true,"V",false,game)
                     VIM:SendKeyEvent(false,"V",false,game)
                  end
                  wait(0.1)
                  if WeaponSkill2 ~= nil and getgenv().AutoSeaBeast and Alive() then
                     Equip(WeaponSkill2)
                     wait()
                     if LP.Character:FindFirstChild(WeaponSkill2) then
                        Click()
                        VIM:SendKeyEvent(true,"Z",false,game)
                        VIM:SendKeyEvent(false,"Z",false,game)
                        wait()
                        VIM:SendKeyEvent(true,"X",false,game)
                        VIM:SendKeyEvent(false,"X",false,game)
                        wait()
                        VIM:SendKeyEvent(true,"C",false,game)               
                        VIM:SendKeyEvent(false,"C",false,game)
                        wait()
                        VIM:SendKeyEvent(true,"V",false,game)
                        VIM:SendKeyEvent(false,"V",false,game)
                     end
                  end
               end)
               if ((NearestSeaBeast.HumanoidRootPart.Position+Vector3.new(0,300,0))-getRoot(LP.Character).Position).magnitude <= 350 then

                  getRoot(LP.Character).CFrame = NearestSeaBeast.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0)
                  CheckFloat1()
               else
                  DoTween(NearestSeaBeast.HumanoidRootPart.CFrame* CFrame.new(0, 300, 0),getgenv().TweenSpeedAutoFarm)
               end
            until not NearestSeaBeast.Parent or not NearestSeaBeast or not NearestSeaBeast:FindFirstChild("HumanoidRootPart") or not NearestSeaBeast:FindFirstChild("Humanoid")  or not getgen().AutoSeaBeast
         end)
      end
      CheckFloat2()
   end)
end
AutoFarm:addTextbox("MaxLevelMob",MaxLevelSea,function(Value)
   if Alive() then
      CheckLv()
      if Value ~= nil then
         ValueChanged = tonumber(Value)
         
         if typeof(ValueChanged) == nil or typeof(ValueChanged) == "nil" then
            if not NotifyBoolen then
               NotifyBoolen = true
               lib:Notify("MaxLevelMob","Please Enter Number")
               wait(1)
               NotifyBoolen = false
            end
         elseif ThirdSea then
            if ValueChanged > 1499 then
            MaxLevelSea = ValueChanged
            HighestLvToFarm = 0
            CheckLv()
            elseif not NotifyBoolen then 
               NotifyBoolen = true 
               lib:Notify("MaxLevelMob","Please enter number over 1499")                       
               wait(1)
               NotifyBoolen = false        
            end
         elseif SecondSea then
            if ValueChanged > 699 and ValueChanged < 1500 then
               MaxLevelSea = ValueChanged
               HighestLvToFarm = 0
               CheckLv()
               if HighestLvToFarm == 850 then
                  HighestLvToFarm = 800
                  CurrentMobName = "Factory Staff"
                  CurrentQuestMob = "Area2Quest"
                  CurrentQuestLevelMob = 2
               end
            elseif not NotifyBoolen then 
               NotifyBoolen = true 
               lib:Notify("MaxLevelMob","Pls enter number Between 700 and 1499")
               wait(1)
               NotifyBoolen = false     
            end
         elseif FirstSea then
            if ValueChanged >= 0 and ValueChanged <= 675 then
               MaxLevelSea = ValueChanged
               HighestLvToFarm = 0
               CheckLv()

            elseif not NotifyBoolen then 
               NotifyBoolen = true 
               lib:Notify("MaxLevelMob","Pls enter number Between 0 and 675")
               wait(1)
               NotifyBoolen = false     
            end
         end
      end
   end
end)

--Bosses Section
local AutoFarmBoss = MainPage:addSection("Auto Farm Boss")

local BossDropdown = AutoFarmBoss:addDropdown("Select Boss",BossesTable,function(Value)
   getgenv().ChosenBoss = Value
end)
AutoFarmBoss:addToggle("Kill Boss",false,function(boolen)
   getgenv().KillingBoss = boolen
   CheckQuestBoss()
   if getgenv().KillingBoss and getgenv().AutoFarmQuest then 
      CancelQuest()
   end

   if getgenv().KillingBoss then
      CheckFloat1()
   else 
      CheckFloat2()
   end
   while getgenv().KillingBoss and wait() do
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
         if v.Name == BossName then
            OldY = getRoot(v).Position.Y
            OldCFrame = getRoot(v).CFrame
            --Get Quest
            if getgenv().AutoFarmQuest and QuestNameBoss then
               if IsAlive(v) and Alive() and getgenv().KillingBoss and LP.PlayerGui.Main.Quest.Visible == false then
                  DoTween(QuestCFrameBoss,getgenv().TweenSpeedQuest)
                  CancelQuest()
                  wait(0.1)
                  if getgenv().KillingBoss then
                     if (getRoot(LP.Character).Position - QuestCFrameBoss.Position).magnitude <= 50 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestNameBoss, LvQuestBoss)
                        wait(0.5)
                     elseif getgenv().AutoFarmQuest then 
                        DoTween(QuestCFrameBoss,getgenv().TweenSpeedQuest)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestNameBoss, LvQuestBoss)
                        wait(0.5)
                     end
                  end
               end
            end
            --Tp To Boss
            if IsAlive(v) and Alive() and getgenv().KillingBoss then
               DoTween(getRoot(v).CFrame * CFrame.new(0,40,10),getgenv().TweenSpeedAutoFarm)
            end
            repeat wait()
               if Alive() then
                  CheckFloat1()
                  
                  if IsAlive(v) then
                     ResizeBoss(v,true)
                     if CheckRange(v,LP.Character,300) then
                        if getRoot(LP.Character).Position.y - getRoot(v).Position.y > -3 then
                           if getRoot(v).Position.Y - OldY >= 0 then
                              spawn(function()
                                 wait()
                                 if getgenv().KillingBoss and IsAlive(v) and Alive() then
                                    if CheckRange(v,LP.Character,300) then
                                       CheckFloat1()
                                       getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 40, 40)
                                    else
                                       DoTween(getRoot(v).CFrame * CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                                    end
                                 end

                              end)
                           else
                              wait()
                              if getgenv().KillingBoss and IsAlive(v) and Alive() then
                                 DoTween(getRoot(v).CFrame * CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                              end
                           end
                        elseif getgenv().KillingBoss then
                           local randomnumber = math.random(1,3)
                           if randomnumber == 1 then
                              getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, 50)      
                           elseif randomnumber ==2 then
                              getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, -50) 
                           elseif randomnumber ==3 then
                              getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, -50, 0)
                           end    
                        end
                     

                     elseif not Tweening and IsAlive(v) and Alive() then  
                        if IsAlive(v) and Alive() and not CheckRange(LP.Character,v,300) then
                           DoTween(getRoot(v).CFrame*CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                        end
                     end
                  end
               else wait(5)
               end
            until not IsAlive(v) or not Alive() or not getgenv().KillingBoss
         end
      end
   end
   CheckFloat2()
end)
AutoFarmBoss:addToggle("Auto All Boss",false,function(boolen)
   getgenv().AutoAllBoss = boolen
end)
AutoFarmBoss:addToggle("Silent Aim Boss",false,function(boolen)
   getgenv().SilentAimBoss = boolen
   if getgenv().ChosenBoss ~= nil then
      while getgenv().SilentAimBoss and wait() do
         for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == getgenv().ChosenBoss and IsAlive(v) then
               getgenv().SilentAimMob = true
               MobSilent = v
            end
         end
      end
   end
   if not getgenv().SilentAimBoss then
      getgenv().SilentAimMob = false
      MobSilent = nil
   end
end)
--Tp To Boss(Finished)
AutoFarmBoss:addButton("Tp to Boss",function()
   if getgenv().ChosenBoss ~= nil then
      local BossBody = game.Workspace.Enemies:FindFirstChild(getgenv().ChosenBoss)
      if IsAlive(BossBody) then
         DoTween(getRoot(BossBody).CFrame * CFrame.new(5,5,5),getgenv().TweenSpeedTeleportPlace)
      end
   end
end)
AutoFarmBoss:addButton("Refresh Boss",function()
   AutoFarmBoss:updateDropdown(BossDropdown,"Refresh Boss",refreshBosses(),function()
   end)
end)
AutoWeapon = MainPage:addSection("Auto Equip")

WeaponDropdown = AutoWeapon:addDropdown("Select A Weapon(Melee)",PLrWeapons,function(Value)
   Weapon = Value
end)

WeaponDropdown2 = AutoWeapon:addDropdown("Select A Weapon(Skill 1)",PLrWeapons,function(Value)
   WeaponSkill1 = Value
end)


WeaponDropdown3 = AutoWeapon:addDropdown("Select A Weapon(Skill 2)",PLrWeapons,function(Value)
   WeaponSkill2 = Value
end)
AutoWeapon:addButton("Refresh Weapon Dropdown",function()
   AutoWeapon:updateDropdown(WeaponDropdown,"Refresh Weapon",refreshWeapon1(),function()
   end)
end)
--[[AutoWeapon:addToggle("Auto SuperHuman",getgenv().AutoSuperHuman,function(boolen)
   getgenv().AutoSuperHuman = boolen
end)
AutoWeapon:addToggle("Auto Equip Accessory",false,function(boolen)
   getgenv().AutoAccessory = boolen
   while getgenv().AutoAccessory and wait() do
      if Alive() then
         pcall(function()
         
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
               if v.ToolTip == "Wear" then
                  WearName = v.Name
                  WearName2 = v.Name:gsub(" ","")
                  WearTool = v
               end
            end
            for i,v in pairs(LP.Character:GetChildren()) do
               if v:IsA("Tool") and v.ToolTip == "Wear" then
                  WearName = v.Name
                  WearName2 = v.Name:gsub(" ","")
                  WearTool = v
               end
            end
            WornTool = false
            if LP.Character:FindFirstChild(WearName2) then
                  WornTool = true
            end
            if not WornTool then
               if not LP.Character:FindFirstChild(WearName) then
                  LP.Character.Humanoid:EquipTool(WearTool)
                  wait()
               end
         
         
               WearTool.RemoteFunction:InvokeServer()
            end
         end)
      else wait(5)
      end
      
   end
end)]]
local AutoFarmEvent = MainPage:addSection("Auto Farm Event")
if SecondSea then
   AutoFarmEvent:addToggle("Auto Ectoplasm",getgenv().AutoEctoplasm,function(boolen)
      getgenv().AutoEctoplasm  = boolen
      if getgenv().AutoEctoplasm then
         CheckFloat1()
         if (getRoot(LP.Character).Position - Vector3.new(923.21252441406, 125.05710601807, 32852.83203125)).magnitude < 3000 then

         else
            local args = {
               [1] = "requestEntrance",
               [2] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))            
            wait(3)
         end
      else
         DisabledNoClip = false   
         CheckFloat2()
      end
      spawn(function()
         while getgenv().AutoEctoplasm and wait() do
            Equip(Weapon)
            Click()
         end
      end)
      while getgenv().AutoEctoplasm and wait() do
         DisabledNoClip = true

         pcall(function()
            if Alive() then
               if SecondSea then
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                     if (string.find(v.Name,1250) or string.find(v.Name,1275) or string.find(v.Name,1300) or string.find(v.Name,1325)) and not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoEctoplasm then
                        DoMagnet = false
   
                        FastAttack()
                        
                        if not Tweening then
                           if v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil and Alive() and getgenv().AutoEctoplasm then
                              DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                           end
                           if Alive() and IsAlive(v) then
                              BringCFrame = getRoot(v).CFrame
                              BringPos = getRoot(v).Position
                           end
                           if Alive() and (getRoot(LP.Character).Position - Vector3.new(923.21252441406, 125.05710601807, 32852.83203125)).magnitude < 3000 then

                           else
                              local args = {
                                 [1] = "requestEntrance",
                                 [2] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                              }
                  
                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                              wait(3)
                           end
                        end
                        OldY = getRoot(v).Position.Y
                        OldCFrame = getRoot(v).CFrame
                        getRoot(v).CanCollide = false
                        getRoot(v).Size = Vector3.new(60,60,60)
                        repeat 
                           
                           CheckFloat1()

                           wait()
                           --if getgenv().AutoFarmSafeMode and LP.Character:FindFirstChild("Humanoid") and LP.Character.Humanoid.Health <= (LP.Character.Humanoid.MaxHealth * getgenv().AutoFarmHealthSafeMode)/100 then DoTween(QuestCFrame,getgenv().TweenSpeedQuest) repeat wait() until LP.Character.Humanoid.Health >= (LP.Character.Humanoid.MaxHealth * 50)/100 end
   
                           if Alive() and getgenv().AutoEctoplasm then
                              if (getRoot(LP.Character).Position - Vector3.new(923.21252441406, 125.05710601807, 32852.83203125)).magnitude < 3000 then

                              else
                                 local args = {
                                    [1] = "requestEntrance",
                                    [2] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                                 }
                     
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                                 wait(3)
                              end
                              
                              if IsAlive(v) and Alive() and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                 spawn(function()
                                    if not CanBring and IsAlive(v) then
                                       CanBring = true
                                       BringMobNear()
                                       BringCFrame = getRoot(v).CFrame
                                       BringPos = getRoot(v).Position
                                       wait(1)
                                       CanBring = false
                                    end
                                 end)
                                 
   
                                    HitBoxPlr()
                                    if (getRoot(LP.Character).Position - Vector3.new(923.21252441406, 125.05710601807, 32852.83203125)).magnitude < 3000 then
                                       if getRoot(LP.Character).Position.y > getRoot(v).Position.y then
                                          if getRoot(v).Position.Y - OldY >= 0 then
                                             spawn(function()
                                                wait(1)
                                                if getgenv().AutoEctoplasm and v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil then
                                                   if Alive() and v:FindFirstChild("Humanoid").Health > 0 and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                                      CheckFloat1()
                                                      getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 30, 0)
                                                   else
                                                      DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                                   end
                                                end
         
                                             end)
                                          else 
                                              
                                             getRoot(v).CFrame = OldCFrame
                                             wait(1)
                                             DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                          end
                                       else
                                          local randomnumber = math.random(1,3)
                                          if randomnumber == 1 and getgenv().AutoEctoplasm  then
                                             CheckFloat1()
                                             getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, 30)      
                                          elseif randomnumber ==2 and getgenv().AutoEctoplasm   then
                                             CheckFloat1()
                                             getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, -30) 
                                          elseif randomnumber ==3 and getgenv().AutoEctoplasm  then
                                             CheckFloat1()
                                             getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, -30, 0)
                                          end  
                                       end
                                    else
                                       getRoot(LP.Character).CFrame = CFrame.new(923.21252441406, 125.05710601807, 32852.83203125)
                                       wait(3)
                                    end
                                 end
                              elseif not Tweening and Alive() and IsAlive(v) then  
                                 BringCFrame = getRoot(v).CFrame
                                 BringPos = getRoot(v).Position
                                 DoTween(getRoot(v).CFrame,getgenv().TweenSpeedAutoFarm)
                              end
                              DoMagnet = true
                        until not IsAlive(v) or not Alive() or not getgenv().AutoEctoplasm 
                        CheckFloat2()
                     end
                  end
               end
            else wait(5)
            end
         end)
      end
   end)
   CheckEctoplasm = AutoFarmEvent:addTextLabel("Ectoplasm: N/A",function()
   end)
   AutoFarmEvent:addToggle("Auto Factory",false,function(boolen)
      getgenv().AutoFactory = boolen
      while getgenv().AutoFactory and wait() do
         pcall(function()
            local Factory = game.Workspace.Enemies:FindFirstChild("Core")
            local FactoryPosition = Vector3.new(448.46756, 199.356781, -441.389252)
            if Factory then
               if Factory:FindFirstChild('Humanoid')and  Factory:FindFirstChild('Humanoid').Health > 0 then
                  if getgenv().AutoFarm then
                     getgenv().AutoFarm = false
                     ChangeAF = true
                  end
                  if (getRoot(LP.Character).Position - FactoryPosition).magnitude > 10 then
                     DoTween(CFrame.new(FactoryPosition),getgenv().TweenSpeedTeleportPlace)
                  else
                     repeat wait()
                        Equip(Weapon)
                        Click()                    
                     until not v or not Factory:FindFirstChild('Humanoid') or LP.Character:FindFirstChild('Humanoid').Health <= 0  or not getgenv().AutoFactory or (getRoot(LP.Character).Position - FactoryPosition).magnitude<= 10
                  end
               elseif ChangeAF == true then
                  getgenv().AutoFarm = true
                  ChangeAF = false
               end
            end
         end)
      end
   end)
   CheckFactory = AutoFarmEvent:addTextLabel("Factory: N/A")
end

if ThirdSea then
   AutoFarmEvent:addToggle("Auto Farm Bone",getgenv().AutoFarmBone,function(boolen)
   
      getgenv().AutoFarmBone  = boolen
      if getgenv().AutoFarmBone then
         CheckFloat1()
      else
         DisabledNoClip = false   
         CheckFloat2()
      end
      while getgenv().AutoFarmBone do
         wait()
         DisabledNoClip = true
         pcall(function()
            if LP.Character:FindFirstChild("Humanoid") and LP.Character:FindFirstChild("Humanoid").Health > 0 then
               if ThirdSea then
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                     if (string.find(v.Name,2050) or string.find(v.Name,2025) or string.find(v.Name,2000) or string.find(v.Name,1975)) and not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoFarmBone then
                        DoMagnet = false
   
                        FastAttack()
                        
                        if v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil and LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and getgenv().AutoFarmBone then
                           DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                        end
                        if Alive() and IsAlive(v) then
                           BringCFrame = getRoot(v).CFrame
                           BringPos = getRoot(v).Position
                        end
                        OldY = getRoot(v).Position.Y
                        OldCFrame = getRoot(v).CFrame
                        getRoot(v).CanCollide = false
                        getRoot(v).Size = Vector3.new(60,60,60)
                        repeat 
                           wait()
                           CheckFloat1()
   
                           if LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and getgenv().AutoFarmBone then
   
                              
                              if Alive() and IsAlive(v) and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                 spawn(function()
                                    if not CanBring and IsAlive(v) then
                                       CanBring = true
                                       BringMobNear()
                                       BringCFrame = getRoot(v).CFrame
                                       BringPos = getRoot(v).Position
                                       wait(1)
                                       CanBring = false
                                    end
                                 end)
                                 
   
                                    HitBoxPlr()
                                    if getRoot(LP.Character).Position.y > getRoot(v).Position.y then
                                       if getRoot(v).Position.Y - OldY >= 0 then
                                          spawn(function()
                                             wait(1)
                                             if getgenv().AutoFarmBone and v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil then
                                                if LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("Humanoid").Health > 0 and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                                   getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 30, 0)
                                                else
                                                   DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                                end
                                             end
      
                                          end)
                                       else 
                                           
                                          getRoot(v).CFrame = OldCFrame
                                          wait(1)
                                          Tweening = true
                                          DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                          Tweeeing = false
                                       end
                                    else
                                        local randomnumber = math.random(1,3)
                                       if randomnumber == 1 and getgenv().AutoFarmBone  then
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, 30)      
                                       elseif randomnumber ==2 and getgenv().AutoFarmBone   then
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, -30) 
                                       elseif randomnumber ==3 and getgenv().AutoFarmBone  then
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, -30, 0)
                                       end  
                                    end
    
                                 end
                              elseif not Tweening and getRoot(v) ~= nil and v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and LP.Character:FindFirstChild("Humanoid") ~= nil and getRoot(LP.Character) ~= nil and LP.Character:FindFirstChild("Humanoid").Health > 0 then  
                                 BringCFrame = getRoot(v).CFrame
                                 BringPos = getRoot(v).Position
                                 DoTween(getRoot(v).CFrame,getgenv().TweenSpeedAutoFarm)
                              end
                              DoMagnet = true
                           --
                        until not v.Parent or v:FindFirstChild("Humanoid") == nil or v.Humanoid.Health <= 0 or getRoot(v) == nil or LP.Character:FindFirstChild("Humanoid") == nil or getRoot(LP.Character) == nil or LP.Character:FindFirstChild("Humanoid").Health <= 0 or getgenv().AutoFarmBone == false
                        
                     end
                  end
               end
            else wait(5)
            end
         end)
      end
   end)
   CheckBone = AutoFarmEvent:addTextLabel("Bone: N/A",function()
   end)
   AutoFarmEvent:addToggle("Auto Farm Dimension",getgenv().AutoFarmCandy,function(boolen)
   
      getgenv().AutoFarmCandy  = boolen
      if getgenv().AutoFarmCandy then
         CheckFloat1()
      else
         DisabledNoClip = false   
         CheckFloat2()
      end
      while getgenv().AutoFarmCandy and task.wait() do
         DisabledNoClip = true
         pcall(function()
            if LP.Character:FindFirstChild("Humanoid") and LP.Character:FindFirstChild("Humanoid").Health > 0 then
               if ThirdSea then
                  local SmallestDistance = math.huge
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                     if (string.find(v.Name,2200) or string.find(v.Name,2225) or string.find(v.Name,2250) or string.find(v.Name,2275)) and not string.find(v.Name,"Boss") and getgenv().AutoFarmCandy then
                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and getRoot(v) then
                           if SmallestDistance > (getRoot(v).Position-getRoot(LP.Character).Position).magnitude then
                              SmallestDistance = (getRoot(v).Position-getRoot(LP.Character).Position).magnitude
                              MobToFarmCandy = v
                           end
                        end
                     end 
                  end   
                  if MobToFarmCandy then
                     FastAttack()
                     
                     if IsAlive(MobToFarmCandy) and Alive() and getgenv().AutoFarmCandy then
                        DoTween(getRoot(MobToFarmCandy).CFrame * CFrame.new(0,0,30),getgenv().TweenSpeedAutoFarm)
                        CheckFloat1()
                     end
                     if IsAlive(MobToFarmCandy) and Alive() then
                        BringCFrame = getRoot(MobToFarmCandy).CFrame
                        BringPos = getRoot(MobToFarmCandy).Position
                     end
                     OldY = getRoot(MobToFarmCandy).Position.Y
                     OldCFrame = getRoot(MobToFarmCandy).CFrame
                     ResizeHRP(MobToFarmCandy,true)
                     repeat task.wait()
                        
                        CheckFloat1()
                        if LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and getgenv().AutoFarmCandy then

                           
                           if Alive() and IsAlive(MobToFarmCandy) and CheckRange(MobToFarmCandy,LP.Character,300) then
                              spawn(function()
                                 if not CanBring and IsAlive(v) then
                                    CanBring = true
                                    BringMobNear()
                                    BringCFrame = getRoot(v).CFrame
                                    BringPos = getRoot(v).Position
                                    wait(1)
                                    CanBring = false
                                 end
                              end)

                                 HitBoxPlr()
                                 if getRoot(LP.Character).Position.y - getRoot(MobToFarmCandy).Position.y > -3 then
                                    if getRoot(MobToFarmCandy).Position.Y - OldY >= 0 then
                                       spawn(function()
                                          wait(1)
                                          if getgenv().AutoFarmCandy and MobToFarmCandy.Parent and MobToFarmCandy:FindFirstChild("Humanoid") and MobToFarmCandy:FindFirstChild("Humanoid").Health > 0 and  MobToFarmCandy:FindFirstChild("HumanoidRootPart") ~= nil then
                                             if LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and MobToFarmCandy:FindFirstChild("Humanoid").Health > 0 and (getRoot(MobToFarmCandy).Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                                CheckFloat1()
                                                getRoot(LP.Character).CFrame = getRoot(MobToFarmCandy).CFrame * CFrame.new(0, 0, 30)
                                             else
                                                DoTween(getRoot(MobToFarmCandy).CFrame * CFrame.new(0,0,30),getgenv().TweenSpeedAutoFarm)
                                                CheckFloat1()
                                             end
                                          end
   
                                       end)
                                    else 
                                          
                                       getRoot(MobToFarmCandy).CFrame = OldCFrame
                                       wait()
                                       DoTween(getRoot(MobToFarmCandy).CFrame * CFrame.new(0,0,30),getgenv().TweenSpeedAutoFarm)
                                       CheckFloat1()
                                    end
                                 else
                                    CheckFloat1()
                                    local randomnumber = math.random(1,3)
                                    if randomnumber == 1 and getgenv().AutoFarmCandy  then
                                       getRoot(LP.Character).CFrame = getRoot(MobToFarmCandy).CFrame * CFrame.new(0, 30, 0)      
                                    elseif randomnumber ==2 and getgenv().AutoFarmCandy   then
                                       getRoot(LP.Character).CFrame = getRoot(MobToFarmCandy).CFrame * CFrame.new(0, 0, -30) 
                                    elseif randomnumber ==3 and getgenv().AutoFarmCandy  then
                                       getRoot(LP.Character).CFrame = getRoot(MobToFarmCandy).CFrame * CFrame.new(0, -30, 0)
                                    end  
                                 end
   
                              end
                           elseif not Tweening and MobToFarmCandy:FindFirstChild("HumanoidRootPart") ~= nil and MobToFarmCandy.Parent and MobToFarmCandy:FindFirstChild("Humanoid") and MobToFarmCandy:FindFirstChild("Humanoid").Health > 0 and LP.Character:FindFirstChild("Humanoid") ~= nil and getRoot(LP.Character) ~= nil and LP.Character:FindFirstChild("Humanoid").Health > 0 then  
                              BringCFrame = getRoot(MobToFarmCandy).CFrame
                              BringPos = getRoot(MobToFarmCandy).Position
                              DoTween(getRoot(MobToFarmCandy).CFrame*CFrame.new(0,0,30),getgenv().TweenSpeedAutoFarm)
                           end
                     until not MobToFarmCandy.Parent or MobToFarmCandy:FindFirstChild("Humanoid") == nil or MobToFarmCandy.Humanoid.Health <= 0 or MobToFarmCandy:FindFirstChild("HumanoidRootPart") == nil or LP.Character:FindFirstChild("Humanoid") == nil or getRoot(LP.Character) == nil or LP.Character:FindFirstChild("Humanoid").Health <= 0 or getgenv().AutoFarmCandy == false
                     
                  end
               end
            else wait(5)
            end
         end)
      end
      CheckFloat2()
   end)
   CheckDimension = AutoFarmEvent:addTextLabel("Dimension: N/A kills",function()
   end)
   AutoFarmEvent:addToggle("Auto Elite Quest",getgenv().AutoElite,function(boolen)
      getgenv().AutoElite = boolen
      while getgenv().AutoElite do
         wait()
         for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if IsAlive(v) and ( string.find(v.Name, "Diablo") or string.find(v.Name, "Deandre") or string.find(v.Name, "Urban") ) then
             
               DoTween(CFrame.new(-5418.51904, 312.803192, -2828.00854),getgenv().TweenSpeedAutoFarm)
               wait(0.5)
               local args = {[1] = "EliteHunter"}
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               if IsAlive(v) and getgenv().AutoElite then
                  DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                  repeat wait()
                     Equip(Weapon)
                     if CheckRange(LP.Character,v,350) then
                        getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 30, 0)
                     else
                        DoTween(getRoot(v).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                     end
                     --HitBoxPlr()
                     Resize(v,false)
                     spawn(function()
                        Click()
                     end)
                  until not IsAlive(v) or getgenv().AutoElite == false
                  wait(10)
               end
            end
         end
      end
   end)
   CheckKillElite = AutoFarmEvent:addTextLabel("Elite Kill: N/A",function()
   end)
   AutoFarmEvent:addToggle("Auto Pirate Raid",false,function(boolen)
      getgenv().AutoPirateRaid = boolen
      PirateRaidStart = false
      while getgenv().AutoPirateRaid and wait() do
         for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if (IsAlive(v) and v:IsA("Model") and (getRoot(v).Position-CenterCastle).magnitude <= 1000) then
               PirateRaidStart = true
            end
         end
         if PirateRaidStart then
            
            if getgenv().AutoFarm then
               getgenv().AutoFarm = false
               ChangeAF = true
            end
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
               if (IsAlive(v) and v:IsA("Model") and (getRoot(v).Position-CenterCastle).magnitude <= 1000) then
                  MobPirateRaid = v
               end
            end
            if MobPirateRaid then
               local MobHumanoid = MobPirateRaid:FindFirstChild("Humanoid")
               local MobHRP = MobPirateRaid:FindFirstChild("HumanoidRootPart")
               local MobP = MobPirateRaid.Parent
               Resize(MobPirateRaid,true)
               OldY = MobHRP.Position.Y
               OldCFrame = getRoot(MobPirateRaid).CFrame
               if IsAlive(MobPirateRaid) and Alive()  and getgenv().AutoPirateRaid and not CheckRange(MobPirateRaid,LP.Character,300) then
                  DoTween(getRoot(MobPirateRaid).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
               end
               repeat wait()
                  CheckFloat1()
                  Clicking = true
                  Click()
                  if getRoot(LP.Character).Position.y >= getRoot(MobPirateRaid).Position.y then
                     if getRoot(MobPirateRaid).Position.Y - OldY >= 0 then
                        CheckFloat1()
                        spawn(function()
                           wait()
                           if getgenv().AutoPirateRaid then
                              if MobP and MobHumanoid and MobHRP then
                                 if Alive() and MobHumanoid.Health > 0 and (MobHRP.Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                    CheckFloat1()
                                    local x,z = RandomNumberF()
                                    getRoot(LP.Character).CFrame = getRoot(MobPirateRaid).CFrame * CFrame.new(x, getgenv().Y, z)
                                 else
                                    DoTween(getRoot(MobPirateRaid).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                                 end
                              end
                           end
                        end)
                     else 
                        
                        getRoot(MobPirateRaid).CFrame = OldCFrame
                        wait()
                        if getgenv().AutoPirateRaid then
                           DoTween(getRoot(MobPirateRaid).CFrame * CFrame.new(0,30,0),getgenv().TweenSpeedAutoFarm)
                        end
                     end
                  else                                 
                     if getgenv().AutoPirateRaid then
                        CheckFloat1()
                        local randomnumber = math.random(1,3)
                        if randomnumber == 1 then
                           CheckFloat1()
                           getRoot(LP.Character).CFrame = getRoot(MobPirateRaid).CFrame * CFrame.new(0, 0, 30)      
                        elseif randomnumber ==2 then
                           CheckFloat1()
                           getRoot(LP.Character).CFrame = getRoot(MobPirateRaid).CFrame * CFrame.new(0, 0, -30) 
                        elseif randomnumber ==3 then
                           CheckFloat1()
                           getRoot(LP.Character).CFrame = getRoot(MobPirateRaid).CFrame * CFrame.new(0, -30, 0)
                        end    
                     end
                  end
               until not IsAlive(MobPirateRaid) or not getgenv().AutoPirateRaid  or not Alive()
            
               --DeActive Control Room
               DisabledNoClip = false
            end
         elseif ChangeAF == true then
            getgenv().AutoFarm = true
            ChangeAF = false
         end
      end
   end)
end
local AutoStoryQuest = MainPage:addSection("Auto Story Quest")
if FirstSea then
   AutoStoryQuest:addToggle("Auto Saber",getgenv().AutoSaber,function(boolen)
      getgenv().AutoSaber = boolen
      local PlrLevel = game.Players.localPlayer.Data.Level.Value

      while getgenv().AutoSaber do
         wait()
         if PlrLevel >= 200 then
            getgenv().AutoFarm = false
            getgenv().AutoFarmGunMastery = false
            getgenv().AutoFarmFruitMastery = false
            SaberProgress()
            if KilledShanks then return lib:Notify("Auto Saber","You Already Done Saber Quest") end
            ---1180.0397949219, 22.599720001221, 187.29235839844
            if Plates ~= 5 and getgenv().AutoSaber then
               NoClip = true
               Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
               
               local Plate1 = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button
               local Plate2 = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button
               local Plate3 = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button
               local Plate4 = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button
               local Plate5 = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button

               DoTween(Plate1.CFrame,getgenv().TweenSpeedTeleportPlace)
               wait(0.3)
               DoTween(Plate2.CFrame,getgenv().TweenSpeedTeleportPlace)
               wait(0.3)
               DoTween(Plate3.CFrame,getgenv().TweenSpeedTeleportPlace)
               wait(0.3)
               DoTween(Plate4.CFrame,getgenv().TweenSpeedTeleportPlace)
               wait(0.3)
               DoTween(Plate5.CFrame,getgenv().TweenSpeedTeleportPlace)
            end

            SaberProgress()
            if Plates == 5 and getgenv().AutoSaber and not UsedTorch then
               wait(0.3)
               if not getRoot(LP.Character):FindFirstChild("Torch") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") then
               DoTween(CFrame.new(-1610.1174316406, 12.890041351318, 162.84405517578),getgenv().TweenSpeedTeleportPlace)
               end
               wait(0.3)
               DoTween(CFrame.new(1113.9545898438, 4.9214663505554, 4350.1416015625),getgenv().TweenSpeedTeleportPlace)
               Equip("Torch")
               wait(2)
               local args = {
                  [1] = "ProQuestProgress",
                  [2] = "DestroyTorch"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            end
            SaberProgress()
            if not UsedCup and UsedTorch and getgenv().AutoSaber then
               if not getRoot(LP.Character):FindFirstChild("Cup") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") then
                  DoTween(CFrame.new(1113.0310058594, 5.9840507507324, 4365.9165039063),getgenv().TweenSpeedTeleportPlace)
                  local args = {
                     [1] = "ProQuestProgress",
                     [2] = "GetCup"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               
                  wait(0.3)
               end
            Equip("Cup")
            DoTween(CFrame.new(1395.6701660156, 37.347969055176, -1320.1994628906),getgenv().TweenSpeedTeleportPlace)
            wait(2)
            local args = {
               [1] = "ProQuestProgress",
               [2] = "FillCup",
               [3] = game:GetService("Players").LocalPlayer.Character.Cup
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            wait(0.2)
            DoTween(CFrame.new(1459.4638671875, 88.619407653809, -1389.8334960938),getgenv().TweenSpeedTeleportPlace)
            local args = {
               [1] = "ProQuestProgress",
               [2] = "SickMan"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      
            end
            SaberProgress()
            if not TalkedSon and UsedCup and  getgenv().AutoSaber and UsedTorch then
               DoTween(CFrame.new(-910.07012939453, 13.752033233643, 4077.490234375),getgenv().TweenSpeedTeleportPlace)

               local args = {
                  [1] = "ProQuestProgress",
                  [2] = "RichSon"
               }

               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            SaberProgress()
            if TalkedSon and not KilledMob and getgenv().AutoSaber and UsedTorch and UsedCup then
               if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                  local MobLeader = game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]")
                  DoTween(getRoot(MobLeader).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)
   
                  repeat wait(.1)
                     if LP.Character:FindFirstChild(Weapon) == nil then
                        Equip(Weapon)
                     end
                     spawn(function()
                        Click()
                     end)
                     pcall(function()
                        --HitBoxPlr()
                        if (getRoot(LP.Character).Position - getRoot(MobLeader).Position) <= 350 then
                           getRoot(LP.Character).CFrame = getRoot(MobLeader).CFrame * CFrame.new(0,20,0)
                        else
                           DoTween(getRoot(MobLeader).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                        end
                        getRoot(MobLeader).Transparency = 0.5
                        getRoot(MobLeader).BrickColor = BrickColor.new("White")
                        getRoot(MobLeader).CanCollide = false
                        getRoot(MobLeader).Size = Vector3.new(60,60,60)
                     end)
                  until  not MobLeader.Parent or MobLeader.Humanoid.Health <= 0 or getgenv().AutoSaber == false
               end
            end
            SaberProgress()
            if not UsedRelic and getgenv().AutoSaber and UsedTorch and UsedCup and KilledMob then
               DoTween(CFrame.new(-910.07012939453, 13.752033233643, 4077.490234375),getgenv().TweenSpeedTeleportPlace)

               local args = {
                  [1] = "ProQuestProgress",
                  [2] = "RichSon"
               }

               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               DoTween(CFrame.new(-1405.31445, 29.8519974, 4.34172916, 0.870163321, 2.4032718e-09, 0.49276346, 5.68156899e-09, 1, -1.49101247e-08, -0.49276346, 1.57739137e-08, 0.870163321),getgenv().TweenSpeedTeleportPlace)
               Equip("Relic")
               local SaberDoor = game:GetService("Workspace").Map.Jungle.Final.Invis
               SaberDoor.CanCollide = false
               SaberDoor.Size = Vector3.new(20,20,20)
         
               local args = {
                  [1] = "ProQuestProgress",
                  [2] = "PlaceRelic"
               }
            
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            SaberProgress()
            if not KilledShanks and getgenv().AutoSaber and UsedRelic and UsedTorch and UsedCup and KilledMob  then
               if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                  local Shank = game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]")
                  DoTween(getRoot(Shank).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                  repeat wait()
                     if LP.Character:FindFirstChild(Weapon) == nil then
                        Equip(Weapon)
                     end
                     spawn(function()
                        Click()
                     end)
                     pcall(function()
                       -- HitBoxPlr()
                        if (getRoot(LP.Character).Position - getRoot(Shank).Position) <= 350 then
                           getRoot(LP.Character).CFrame = getRoot(Shank).CFrame * CFrame.new(0,20,0)
                        else
                           DoTween(getRoot(Shank).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                        end
                        
                        ResizeHRP(Shank,false)
                     end)
                  until  not IsAlive(Shank) or getgenv().AutoSaber == false
               end
            end
            if Noclipping and NoClip then
               NoClip = false
               Noclipping:Disconnect()
           end
         end
      end
   end)
   AutoStoryQuest:addToggle("Auto Second Sea",getgenv().AutoSecondSea,function(boolen)
      getgenv().AutoSecondSea = boolen
      while getgenv().AutoSecondSea do
         local PlrLevel = game.Players.localPlayer.Data.Level.Value
         wait()
         if PlrLevel >= 700 then
            getgenv().AutoFarm = false
            getgenv().AutoFarmGunMastery = false
            getgenv().AutoFarmFruitMastery = false

            wait(0.5)

            SecondSeaProgress()
            if not UsedKey then
               DoTween(CFrame.new(4850.42383, 5.65139151, 718.804382, 0.195783511, 9.26219599e-08, -0.980647147, -7.3901596e-08, 1, 7.96955817e-08, 0.980647147, 5.68683127e-08, 0.195783511),getgenv().TweenSpeedTeleportPlace)
               local args = {
                  [1] = "DressrosaQuestProgress",
                  [2] = "Detective"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               
               wait(0.5)
            
               Equip("Key")
               DoTween(CFrame.new(1347.7124, 37.3751602, -1325.6488),getgenv().TweenSpeedTeleportPlace)
            end
            if not KilledIceBoss and UsedKey then
               
               wait(0.5)

               if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                  local IceAdmiral = game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]")
                  DoTween(getRoot(IceAdmiral).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                  repeat wait(0.1)
                     if LP.Character:FindFirstChild(Weapon) == nil then
                        Equip(Weapon)
                     end

                     spawn(function()
                        Click()
                     end)
                     pcall(function()
                        --HitBoxPlr()
                        if (getRoot(LP.Character).Position - getRoot(IceAdmiral).Position) <= 350 then
                           getRoot(LP.Character).CFrame = getRoot(IceAdmiral).CFrame * CFrame.new(0,20,0)
                        else
                           DoTween(getRoot(IceAdmiral).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                        end
                        getRoot(LP.Character).CFrame = getRoot(IceAdmiral).CFrame * CFrame.new(0,20,0)
                        ResizeHRP(IceAdmiral,false)
                     end)
                  until  not IsAlive(IceAdmiral) or getgenv().AutoSecondSea == false
               end
            end

            if KilledIceBoss and UsedKey and TalkedDetective then

               DoTween(CFrame.new(-1165.95776, 7.65220022, 1728.58057, 0.473572224, 2.10676721e-09, -0.880755007, 6.13469986e-09, 1, 5.6905618e-09, 0.880755007, -8.09805911e-09, 0.473572224),getgenv().TweenSpeedTeleportPlace)
               wait(0.5)
               if (getRoot(LP.Character).Position-Vector3.new(-1165.95776, 7.65220022, 1728.58057)).magnitude <30 then
                  local args = {
                     [1] = "TravelDressrosa"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end
         end
      end
   end)
end
if SecondSea then
   AutoStoryQuest:addToggle("Auto Bartilo",getgenv().AutoBartilo,function(boolen)
      local PlrLevel = game.Players.localPlayer.Data.Level.Value

      getgenv().AutoBartilo = boolen
      if getgenv().AutoBartilo then
         CheckFloat1()
      else DisabledNoClip = false
         CheckFloat2()
      end
      spawn(function()
         while getgenv().AutoBartilo and wait() do
            Equip(Weapon)
            Click()
         end
      end)
      while getgenv().AutoBartilo do
         wait()
         if PlrLevel >= 800 then
            local args = {
               [1] = "getInventoryWeapons"
            }
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))) do
               for i2,v2 in pairs(v) do
                  if v2 == "Warrior Helmet" then
                     return lib:Notify("Bartilo Quest","You already completed")
                  end
               end
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Warrior Helmet") ~= nil or LP.Character:FindFirstChild("Warrior Helmet") ~= nil then
               return lib:Notify("Bartilo Quest","You already completed")
            end
            getgenv().AutoFarm = false
            getgenv().AutoFarmGunMastery = false
            getgenv().AutoFarmFruitMastery = false
            BartiloProgress()
            if not KilledBandits and not KilledSpring then
               if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
                  DoTween(CFrame.new(-461.533203, 72.3478546, 300.311096),getgenv().TweenSpeedQuest)
                  wait(0.1)
                  
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
                  wait(1)
               end
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if string.find(v.Name,"Swan Pirate") and string.find(v.Name,"775") then
                     SpecialMob = "Swan Pirate"
                     CurrentMobName = "Your123"
                     NameMob = "Your123"
                     if v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and getRoot(v) then
                        DoTween(getRoot(v).CFrame*CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                        OldY = getRoot(v).Position.Y
                        OldCFrame = getRoot(v).CFrame
                        if v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil and LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and getgenv().AutoFarm then
                           DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                        end
                        DoMagnet = false
                        
                        if LP.Character:FindFirstChild("Humanoid") and LP.Character.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and getRoot(v) then
                           BringCFrame = getRoot(v).CFrame
                           BringPos = getRoot(v).Position
                        end

                        repeat wait()

                           --HitBoxPlr()

                           spawn(function()
                              if not BringFarmBartilo then
                                 BringFarmBartilo = true
                                 BringMob()
                                 wait(0.2)
                                 BringFarmBartilo = false
                              end
                           end)
                           FastAttack()
                           CheckFloat1()
                           wait()
                           --if getgenv().AutoFarmSafeMode and LP.Character:FindFirstChild("Humanoid") and LP.Character.Humanoid.Health <= (LP.Character.Humanoid.MaxHealth * getgenv().AutoFarmHealthSafeMode)/100 then DoTween(QuestCFrame,getgenv().TweenSpeedQuest) repeat wait() until LP.Character.Humanoid.Health >= (LP.Character.Humanoid.MaxHealth * 50)/100 end
   
                           if LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0  then
                              
   
                              if v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil and LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("Humanoid").Health > 0 and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                 FastAttack()
                                 
                                 spawn(function()
                                    if not BringFarm then
                                       BringFarm = true
                                       BringMob()
                                       wait(0.2)
                                       BringFarm = false
                                    end
                                 end)
                                    wait()
                                    HitBoxPlr()
                                 getRoot(v).CanCollide = false
                                 getRoot(v).Size = Vector3.new(60, 60, 60)
                                 pcall(function()
                                    if getRoot(LP.Character).Position.y > getRoot(v).Position.y then
                                       if getRoot(v).Position.Y - OldY >= 0 then
                                          spawn(function()
                                             wait(1)
                                             if getgenv().AutoFarm and v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil then
                                                if LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("Humanoid").Health > 0 and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 300 then
                                                   getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 30, 0)
                                                else
                                                   DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                                end
                                             end
      
                                          end)
                                       else 
                                           
                                          getRoot(v).CFrame = OldCFrame
                                          wait(1)
                                          Tweening = true
                                          DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                          Tweeeing = false
                                       end
                                    else
                                       local randomnumber = math.random(1,3)
                                       if randomnumber == 1 and getgenv().AutoFarm  then
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, 30)      
                                       elseif randomnumber ==2 and getgenv().AutoFarm   then
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, -30) 
                                       elseif randomnumber ==3 and getgenv().AutoFarm  then
                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, -30, 0)
                                       end    
                                    end
                                 end)
   
                              elseif not Tweening and getRoot(v) ~= nil and v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and LP.Character:FindFirstChild("Humanoid") ~= nil and getRoot(LP.Character) ~= nil and LP.Character:FindFirstChild("Humanoid").Health > 0 then  
                                 BringCFrame = getRoot(v).CFrame
                                 BringPos = getRoot(v).Position
                                 DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                 if v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil and LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("Humanoid").Health > 0 and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude > 300 then
                                    DoTween(getRoot(v).CFrame* CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                 end
                              end
   
                              DoMagnet = true
                              Tweening = false
                           end
                        until not v.Parent or not v:FindFirstChild("Humanoid") or v:FindFirstChild("Humanoid").Health <= 0 or getgenv().AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false 
                     end
                  end
               end
            end
            BartiloProgress()
            if not KilledSpring and KilledBandits then
               DoTween(CFrame.new(-461.533203, 72.3478546, 300.311096),getgenv().TweenSpeedQuest)
               wait(0.1)
               
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
               wait(1)
               if game.Workspace.Enemies:WaitForChild("Jeremy [Lv. 850] [Boss]") then
                  Jeremy =  game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]")
                  DoTween(getRoot(Jeremy).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)
                  repeat wait()
                     if LP.Character:FindFirstChild(Weapon) == nil then
                        Equip(Weapon)
                     end
                     spawn(function()
                        Click()
                     end)
                     pcall(function()
                        HitBoxPlr()
                        getRoot(LP.Character).CFrame = getRoot(Jeremy).CFrame * CFrame.new(0,20,0)
                        ResizeHRP(Jeremy,false)
                     end)
                  until  not IsAlive(Jeremy) or getgenv().AutoBartilo == false
               end
            end
            BartiloProgress()
            if not DidPlates and KilledSpring and KilledBandits then
               local Plate1 = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1
               local Plate2 = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2
               local Plate3 = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3
               local Plate4 = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate4
               local Plate5 = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5
               local Plate6 = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6
               local Plate7 = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate7
               local Plate8 = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate8
               DoTween(CFrame.new(-1837.6804199219, 11.032466888428, 1667.9600830078),getgenv().TweenSpeedTeleportPlace)
               getRoot(LP.Character).CFrame = Plate1.CFrame

               firetouchinterest(getRoot(LP.Character), Plate1, 0)
               wait()
               firetouchinterest(getRoot(LP.Character), Plate1, 1)
               wait(0.2)
               getRoot(LP.Character).CFrame = Plate2.CFrame
               firetouchinterest(getRoot(LP.Character), Plate2, 0)
               wait()
               firetouchinterest(getRoot(LP.Character), Plate2, 1)
               wait(0.2)
               getRoot(LP.Character).CFrame = Plate3.CFrame

               firetouchinterest(getRoot(LP.Character), Plate3, 0)
               wait()
               firetouchinterest(getRoot(LP.Character), Plate3, 1)
               wait(0.2)
               getRoot(LP.Character).CFrame = Plate4.CFrame

               firetouchinterest(getRoot(LP.Character), Plate4, 0)
               wait()
               firetouchinterest(getRoot(LP.Character), Plate4, 1)
               wait(0.2)
               getRoot(LP.Character).CFrame = Plate5.CFrame

               firetouchinterest(getRoot(LP.Character), Plate5, 0)
               wait()
               firetouchinterest(getRoot(LP.Character), Plate5, 1)
               wait(0.2)
               getRoot(LP.Character).CFrame = Plate6.CFrame

               firetouchinterest(getRoot(LP.Character), Plate6, 0)
               wait()
               firetouchinterest(getRoot(LP.Character), Plate6, 1)
               wait(0.2)
               getRoot(LP.Character).CFrame = Plate7.CFrame

               firetouchinterest(getRoot(LP.Character), Plate7, 0)
               wait()
               firetouchinterest(getRoot(LP.Character), Plate7, 1)
               wait(0.2)
               DoTween(Plate8.CFrame,getgenv().TweenSpeedTeleportPlace)

               firetouchinterest(getRoot(LP.Character), Plate8, 0)
               wait()
               firetouchinterest(getRoot(LP.Character), Plate8, 1)
            end
         end
      end
   end)
   --[[AutoStoryQuest:addToggle("Auto Third Sea",getgenv().AutoThirdSea,function(boolen)
      getgenv().AutoThirdSea = boolen
      while getgenv().AutoThirdSea do
         wait()
         if PlrLevel >= 1500 then
            BartiloProgress()
            if DidPlates and KilledBandits and KilledSpring then
               getgenv().AutoFarm = false
               getgenv().AutoFarmGunMastery = false
               getgenv().AutoFarmFruitMastery = false
            end
         end
      end
   end)]]
end

if ThirdSea then
   AutoStoryQuest:addToggle("Auto Tushita",false,function(boolen)
      getgenv().AutoTushita = boolen
      while wait() and getgenv().AutoTushita do
         if game:GetService("Workspace").Map.Turtle.TushitaGate.TushitaGate.Transparency ~= 1 then
            NewIndra = game.Workspace.Enemies:WaitForChild("rip_indra True Form [Lv. 5000] [Raid Boss]")
            if NewIndra then
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                     EquipWeapon("Holy Torch")
               elseif LP.Character:FindFirstChild("Holy Torch") then
                     if game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Particles.Main.Enabled ~= true then
                        DoTween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position,getgenv().TweenSpeedTeleportPlace)
                     elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Particles.Main.Enabled ~= true then
                        DoTween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position,getgenv().TweenSpeedTeleportPlace)
                     elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Particles.Main.Enabled ~= true then
                        DoTween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position,getgenv().TweenSpeedTeleportPlace)
                     elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Particles.Main.Enabled ~= true then
                        DoTween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.CFrame)
                     elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Particles.Main.Enabled ~= true then
                        DoTween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.CFrame)
                     end
               else
                  getRoot(LP.Character).CFrame = CFrame.new(5148.03613, 162.352493, 910.548218, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                  wait(1)
               end
            end
         end
      end
   end)
   AutoStoryQuest:addToggle("Auto Citizen Quest",getgenv().AutoCitizenQuest,function(boolen)
      getgenv().AutoCitizenQuest = boolen
      spawn(function()
         while getgenv().AutoCitizenQuest do
            wait()
            Click()
         end
      end)
      while getgenv().AutoCitizenQuest do
         wait()
         local args = {
            [1] = "CitizenQuestProgress",
            [2] = "Citizen"
        }
        
        
         if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) == 3 then
            return lib:Notify("Auto Citizen Quest","Your Quest Is Already Completed")
         end
         if PlrLevel >= 1750 then
            getgenv().AutoFarm = false
            getgenv().AutoFarmBone = false
            getgenv().AutoFarmGunMastery = false
            getgenv().AutoFarmFruitMastery = false
            CitizenQuestProgress()
            if not KilledBandits and not KilledCaptainElephantCitizen and not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Forest Pirate") then
            DoTween(CFrame.new(-12445.064453125, 332.37817382812, -7672.3803710938),getgenv().TweenSpeedTeleportPlace)
            end
            
         if not KilledBanditsCitizen and not KilledCaptainElephantCitizen and getgenv().AutoCitizenQuest then
            if LP.Character:FindFirstChild("Humanoid") and LP.Character:FindFirstChild("Humanoid").Health > 0 and getRoot(LP.Character) and getgenv().AutoFarm and  game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Forest Pirate") and CanTween then
               local args = {
               [1] = "StartQuest",
               [2] = "CitizenQuest",
               [3] = 1
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
               if string.find(v.Name,1825) and not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoCitizenQuest then
                  -- Check
                     SpecialMob = "Forest Pirate"
                     NameMob = "ABCDE"
                     CurrentMobName = "ABCDE"
                     OldY = getRoot(v).Position.Y
                     OldCFrame = getRoot(v).CFrame
                  

                  DoMagnet = false
                  

                  FastAttack()
            
                  if v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil and LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and getgenv().AutoCitizenQuest then
                     Tweening = true
                     DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                     Tweening = false
                  end
                  Tweening = false

                  if LP.Character:FindFirstChild("Humanoid") and LP.Character.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and getRoot(v) then
                     BringCFrame = getRoot(v).CFrame
                     BringPos = getRoot(v).Position
                  end
                  repeat 
                     CheckFloat1()
                     wait()

                     if LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0  then
                        

                        if v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil and LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("Humanoid").Health > 0 and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 300 then
                           FastAttack()
                           

                           spawn(function()
                              if not BringFarmCitizen then
                                 BringFarmCitizen = true
                                 BringMob()
                                 --wait(0.2)
                                 BringFarmCitizen = false
                              end
                           end)
                              wait()
                              --HitBoxPlr()
                              getRoot(v).CanCollide = false
                              getRoot(v).Size = Vector3.new(60, 60, 60)
                          if getRoot(LP.Character).Position.y >= getRoot(v).Position.y then
                              if getRoot(v).Position.Y - OldY >= 0 then
                                 spawn(function()
                                    wait()
                                    if getgenv().AutoCitizenQuest and v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil then
                                       if LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("Humanoid").Health > 0 and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 300 then

                                          getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 30, 0)
                                       else
                                          DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                       end
                                    end

                                 end)
                              else 
                                  
                                 getRoot(v).CFrame = OldCFrame
                                 wait()
                                 Tweening = true
                                 DoTween(getRoot(v).CFrame * CFrame.new(0,20,0),getgenv().TweenSpeedAutoFarm)
                                 Tweeeing = false
                              end
                           else
                              local randomnumber = math.random(1,3)
                              if randomnumber == 1 and getgenv().AutoCitizenQuest  then
                                 getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, 30)      
                              elseif randomnumber ==2 and getgenv().AutoCitizenQuest   then
                                 getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, 0, -30) 
                              elseif randomnumber ==3 and getgenv().AutoCitizenQuest  then
                                 getRoot(LP.Character).CFrame = getRoot(v).CFrame * CFrame.new(0, -30, 0)
                              end    
                           end
                        

                        elseif not Tweening and getRoot(v) ~= nil and v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and LP.Character:FindFirstChild("Humanoid") ~= nil and getRoot(LP.Character) ~= nil and LP.Character:FindFirstChild("Humanoid").Health > 0 then  
                           BringCFrame = getRoot(v).CFrame
                           BringPos = getRoot(v).Position
                           DoTween(getRoot(v).CFrame,getgenv().TweenSpeedAutoFarm)
                           if v.Parent and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and  getRoot(v) ~= nil and LP.Character:FindFirstChild("Humanoid") and getRoot(LP.Character) and LP.Character:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("Humanoid").Health > 0 and (getRoot(v).Position-getRoot(LP.Character).Position).magnitude > 300 then
                              DoTween(getRoot(v).CFrame,getgenv().TweenSpeedAutoFarm)
                           end
                        end

                        DoMagnet = true
                        Tweening = false
                     end
                  until not v.Parent or v:FindFirstChild("Humanoid") == nil or v.Humanoid.Health <= 0 or getRoot(v) == nil or LP.Character:FindFirstChild("Humanoid") == nil or getRoot(LP.Character) == nil or LP.Character:FindFirstChild("Humanoid").Health <= 0 or getgenv().AutoCitizenQuest == false
                  CitizenQuestProgress()
               end
            end
         elseif not KilledCaptainElephantCitizen and getgenv().AutoCitizenQuest then
            if game.Workspace.Enemies:WaitForChild("Captain Elephant [Lv. 1875] [Boss]") then
               CaptainElephant =  game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]")
               DoTween(getRoot(CaptainElephant).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)
               repeat wait()
                  if LP.Character:FindFirstChild(Weapon) == nil then
                     Equip(Weapon)
                  end
                  spawn(function()
                     Click()
                  end)
                  pcall(function()
                     --HitBoxPlr()
                     if (getRoot(LP.Character).Position - getRoot(CaptainElephant).Position) <= 350 then
                        getRoot(LP.Character).CFrame = getRoot(CaptainElephant).CFrame * CFrame.new(0,20,0)
                     else
                        DoTween(getRoot(CaptainElephant).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                     end
                     getRoot(LP.Character).CFrame = getRoot(CaptainElephant).CFrame * CFrame.new(0,20,0)
                     ResizeHRP(CaptainElephant,false)
                  end)
               until  not IsAlive(CaptainElephant) or getgenv().AutoCitizenQuest == false
            end
            CitizenQuestProgress()
         elseif KilledCaptainElephantCitizen and getgenv().AutoCitizenQuest then
            
            DoTween(CFrame.new(-12508.901367188, 336.42013549805, -9867.9560546875),getgenv().TweenSpeedTeleportPlace)
            CitizenQuestProgress()

         end
         end
      end
   end)
   AutoStoryQuest:addToggle("Auto Fruit Bowl",getgenv().AutoObservationv2,function(boolen)
      getgenv().AutoObservationv2 = boolen
      local PlrLevel = game.Players.localPlayer.Data.Level.Value

      while getgenv().AutoObservationv2 do
         wait()
         if PlrLevel >= 1750 then
            local args = {
               [1] = "CitizenQuestProgress",
               [2] = "Citizen"
           }
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) == 3 then
               if LP.Character:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") then
                  return lib:Notify("Auto Fruit Bowl","You Already Have Bowl")
               end
               getgenv().AutoFarm = false
               getgenv().AutoFarmBone = false
               getgenv().AutoFarmGunMastery = false
               getgenv().AutoFarmFruitMastery = false
               repeat wait()
                  CheckFruitObservationv2()
                  if not FindApple and not DoingTweenObservationV2 then
                  local Apple = game:GetService("Workspace").AppleSpawner:FindFirstChild("Apple")
                  DoingTweenObservationV2 = true
                  if Apple then
                  DoTween(Apple.Handle.CFrame,getgenv().TweenSpeedTeleportPlace)
                  end
                  DoingTweenObservationV2 = false
                  end
                  if not FindBanana and not DoingTweenObservationV2  then
                  local Banana = game:GetService("Workspace").BananaSpawner:FindFirstChild("Banana")
                  DoingTweenObservationV2 = true
                  if Banana then
                  DoTween(Banana.Handle.CFrame,getgenv().TweenSpeedTeleportPlace)
                  end
                  DoingTweenObservationV2 = false
                  end
                  if not FindPineapple and not DoingTweenObservationV2  then
                  local Pineapple = game:GetService("Workspace").PineappleSpawner:FindFirstChild("Pineapple")
                  DoingTweenObservationV2 = true
                  if Pineapple then
                  DoTween(Pineapple.Handle.CFrame,getgenv().TweenSpeedTeleportPlace)
                  end
                  DoingTweenObservationV2 = false
                  end
               until (FindApple and FindBanana and FindPineapple) or not getgenv().AutoObservationv2
               CheckFruitObservationv2()

               if FindApple and FindBanana and FindBanana and getgenv().AutoObservationv2 then
               DoTween(CFrame.new(-12445.064453125, 332.37817382812, -7672.3803710938),getgenv().TweenSpeedTeleportPlace)
               local args = {
                  [1] = "CitizenQuestProgress",
                  [2] = "Citizen"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end

            else
               return lib:Notify("Auto Fruit Bowl","You Need To Complete Citizen Quest")
            end


         end
      end
   end)
   AutoStoryQuest:addToggle("Auto Rainbow Haki",getgenv().AutoRainbowHaki,function(boolen)
      getgenv().AutoRainbowHaki = boolen
      local PlrLevel = game.Players.localPlayer.Data.Level.Value

      while getgenv().AutoRainbowHaki do
         wait()
         --if PlrLevel >= 2000 then
            getgenv().AutoFarm = false
            getgenv().AutoFarmBone = false
            getgenv().AutoFarmGunMastery = false
            getgenv().AutoFarmFruitMastery = false
            local  args1 = {
               [1] = "HornedMan"
            }
         
            if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1)),"Stone") then
               DoTween(CFrame.new(-11888.973632812, 930.55096435547, -8759.3916015625),getgenv().TweenSpeedTeleportPlace)
               local StoneBoss = game:GetService("Workspace").Enemies:WaitForChild("Stone [Lv. 1550] [Boss]")
               local args = {
                  [1] = "HornedMan",
                  [2] = "Bet"
               }

               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               DoTween(getRoot(StoneBoss).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)
               repeat wait()
                  if LP.Character:FindFirstChild(Weapon) == nil then
                     Equip(Weapon)
                  end
                  spawn(function()
                     Click()
                  end)
                  pcall(function()
                     HitBoxPlr()
                     if (getRoot(LP.Character).Position - getRoot(StoneBoss).Position) <= 350 then
                        getRoot(LP.Character).CFrame = getRoot(StoneBoss).CFrame * CFrame.new(0,20,0)
                     else
                        DoTween(getRoot(StoneBoss).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                     end
                     getRoot(LP.Character).CFrame = getRoot(StoneBoss).CFrame * CFrame.new(0,20,0)
                     ResizeHRP(StoneBoss,false)
                  end)
               until  not IsAlive(StoneBoss) or getgenv().AutoRainbowHaki == false    
            elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1)),"Island Empress") then
               DoTween(CFrame.new(-11888.973632812, 930.55096435547, -8759.3916015625),getgenv().TweenSpeedTeleportPlace)
               local IslandEmpress = game:GetService("Workspace").Enemies:WaitForChild("Island Empress [Lv. 1675] [Boss]") 
               local args = {
                  [1] = "HornedMan",
                  [2] = "Bet"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               DoTween(getRoot(IslandEmpress).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)
               repeat wait()
                  if LP.Character:FindFirstChild(Weapon) == nil then
                     Equip(Weapon)
                  end
                  spawn(function()
                     Click()
                  end)
                  pcall(function()
                     HitBoxPlr()
                     if (getRoot(LP.Character).Position - getRoot(IslandEmpress).Position) <= 350 then
                        getRoot(LP.Character).CFrame = getRoot(IslandEmpress).CFrame * CFrame.new(0,20,0)
                     else
                        DoTween(getRoot(IslandEmpress).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                     end
                     getRoot(LP.Character).CFrame = getRoot(IslandEmpress).CFrame * CFrame.new(0,20,0)
                     ResizeHRP(IslandEmpress,false)
                     
                  end)
               until  not IsAlive(IslandEmpress) or getgenv().AutoRainbowHaki == false
                     
            elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1)),"Kilo Admiral") then
               DoTween(CFrame.new(-11888.973632812, 930.55096435547, -8759.3916015625),getgenv().TweenSpeedTeleportPlace)
               local KiloAdmiral = game:GetService("Workspace").Enemies:WaitForChild("Kilo Admiral [Lv. 1750] [Boss]") 
               local args = {
                  [1] = "HornedMan",
                  [2] = "Bet"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               DoTween(getRoot(KiloAdmiral).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)
               repeat wait()
                  if LP.Character:FindFirstChild(Weapon) == nil then
                     Equip(Weapon)
                  end
                  spawn(function()
                     Click()
                  end)
                  pcall(function()

                     if (getRoot(LP.Character).Position - getRoot(KiloAdmiral).Position) <= 350 then
                        getRoot(LP.Character).CFrame = getRoot(KiloAdmiral).CFrame * CFrame.new(0,20,0)
                     else
                        DoTween(getRoot(KiloAdmiral).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                     end
                     getRoot(LP.Character).CFrame = getRoot(KiloAdmiral).CFrame * CFrame.new(0,20,0)
                     ResizeHRP(LP.Character,false)
                     HitBoxPlr()
                  end)
               until  not IsAlive(LP.Character) or getgenv().AutoRainbowHaki == false
            elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1)),"Captain Elephants") then
               DoTween(CFrame.new(-11888.973632812, 930.55096435547, -8759.3916015625),getgenv().TweenSpeedTeleportPlace)
               local CaptainElephant = game:GetService("Workspace").Enemies:WaitForChild("Captain Elephant [Lv. 1875] [Boss]")
               local args = {
                  [1] = "HornedMan",
                  [2] = "Bet"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               DoTween(getRoot(CaptainElephant).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)
               repeat wait()
                  if LP.Character:FindFirstChild(Weapon) == nil then
                     Equip(Weapon)
                  end
                  spawn(function()
                     Click()
                  end)
                  pcall(function()
                     if (getRoot(LP.Character).Position - getRoot(CaptainElephant).Position) <= 350 then
                        getRoot(LP.Character).CFrame = getRoot(CaptainElephant).CFrame * CFrame.new(0,20,0)
                     else
                        DoTween(getRoot(CaptainElephant).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                     end
                     getRoot(LP.Character).CFrame = getRoot(CaptainElephant).CFrame * CFrame.new(0,20,0)
                     ResizeHRP(CaptainElephant,false)
                     HitBoxPlr()
                  end)
               until  not IsAlive(CaptainElephant) or getgenv().AutoRainbowHaki == false
               
            elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1)),"Beautiful Pirate") then
               DoTween(CFrame.new(-11888.973632812, 930.55096435547, -8759.3916015625),getgenv().TweenSpeedTeleportPlace)
               local BeautifulPirate = game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]")
               local args = {
                  [1] = "HornedMan",
                  [2] = "Bet"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               DoTween(getRoot(BeautifulPirate).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)
               repeat wait()
                  if LP.Character:FindFirstChild(Weapon) == nil then
                     Equip(Weapon)
                  end
                  spawn(function()
                     Click()
                  end)
                  pcall(function()
                     if (getRoot(LP.Character).Position - getRoot(BeautifulPirate).Position) <= 350 then
                        getRoot(LP.Character).CFrame = getRoot(BeautifulPirate).CFrame * CFrame.new(0,20,0)
                     else
                        DoTween(getRoot(BeautifulPirate).CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                     end
                     getRoot(LP.Character).CFrame = getRoot(BeautifulPirate).CFrame * CFrame.new(0,20,0)
                     ResizeHRP(BeautifulPirate,false)
                  end)
               until  not IsAlive(BeautifulPirate) or getgenv().AutoRainbowHaki == false
            elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1)),"1") then
               return lib:Notify("Auto Rainbow Haki","You Have Already Done The Quest")
            end
         --end
      end
   end)
end

local AutoStuffs = MainPage:addSection("Auto Other Stuffs")
-- Need Rework
if SecondSea then
   AutoStuffs:addToggle("Auto Buy Legendary Sword",getgenv().AutoBuyLegendarySword,function(Value)
      getgenv().AutoBuyLegendarySword = Value
   end)
end

--Enhancement
if SecondSea or ThirdSea then
   AutoStuffs:addToggle("Auto Buy Enhancement",getgenv().AutoBuyEnhancement,function(Value) 
      getgenv().AutoBuyEnhancement = Value   
   end)
end
AutoStuffs:addToggle("Auto Chest",false,function(boolen)
   getgenv().AutoChest = boolen
end)
if SecondSea then
   AutoStuffs:addToggle("Auto Give Fruit To Unlock Swan Door",false,function(boolen)
      getgenv().AutoUnlockSwan = boolen
      while getgenv().AutoUnlockSwan and wait() do
         local args = {
            [1] = "TalkTrevor",
            [2] = "3"
         }
         
         
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end)
end
AutoStuffs:addToggle("Auto Observation Farm",false,function(boolen)
   getgenv().ObservationFarm = boolen
end)
CheckKenHaki = AutoStuffs:addTextLabel("Ken Exp: N/A")
if ThirdSea then
   AutoStuffs:addButton("Auto Do Haki Color Puzzle",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
      wait(0.5)
      DoTween(CFrame.new(-5420.16602, 1084.9657, -2666.8208),getgenv().TweenSpeedTeleportPlace)
      wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
      wait(0.5)
      DoTween(CFrame.new(-5414.41357, 309.865753, -2212.4577),getgenv().TweenSpeedTeleportPlace)
      wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
      wait(0.5)
      DoTween(CFrame.new(-4971.47559, 335.565765, -3720.02954),getgenv().TweenSpeedTeleportPlace)
   end)
end
local Fruits = MainPage:addSection("Fruits")
Fruits:addButton("Buy Random Fruit",function()
   local args = {[1] = "Cousin", [2] = "Buy"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Fruits:addToggle("Auto Buy Random Fruit",getgenv().AutoBuyRandomFruit,function(boolen)
   getgenv().AutoBuyRandomFruit = boolen
   while getgenv().AutoBuyRandomFruit and wait() do
      local args = {[1] = "Cousin", [2] = "Buy"}
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   end
end)
Fruits:addToggle("Get Fruit",false,function(boolen) 
   getgenv().GetFruits = boolen
   if getgenv().GetFruits == false then return end 
   while getgenv().GetFruits and wait(0.1) do 
      for i,v in pairs(game.Workspace:GetChildren()) do
         if v:IsA("Tool") then
            if (v.Handle.Position-getRoot(LP.Character).Position).magnitude <= 800 then
               if getgenv().BringFruit then
                  v.Handle.CFrame = getRoot(LP.Character).CFrame
               end
            else
               if getgenv().TeleportFruit then
                  if v:FindFirstChild("Handle") then
                     DoTween(v.Handle.CFrame,getgenv().TweenSpeedTeleportPlace)
                  end
               end
            end
         end
         if v.Name == "Fruit" and getgenv().NaturalFruit then
            if v:FindFirstChild("Handle") then
               DoTween(v:FindFirstChild("Handle").CFrame,getgenv().TweenSpeedTeleportPlace)
            end
         end
      end
   end
end)
Fruits:addToggle("Get Fruit:Natural Fruit",getgenv().NaturalFruit,function(boolen)
   getgenv().NaturalFruit = boolen
end)
Fruits:addToggle("Get Fruit:Bring",getgenv().BringFruit,function(boolen)
   getgenv().BringFruit = boolen
end)
Fruits:addToggle("Get Fruit:Teleport",getgenv().TeleportFruit,function(boolen)
   getgenv().TeleportFruit = boolen
end)
Fruits:addDropdown("Select Auto Buy Devil Fruit In Shop",FruitTable,function(Value) 
   SelectedFruit = Value
end)
Fruits:addToggle("Auto Buy Devil Fruit In Shop",false,function(Value)
   AutoBuyFruit = Value
   if SelectedFruit == "" and AutoBuyFruit then
      lib:Notify("Auto Buy Devil Fruit In Shop","Pls Select a Fruit")
   elseif AutoBuyFruit then
      while wait() and AutoBuyFruit do
         local args = {
            [1] = "PurchaseRawFruit",
            [2] = SelectedFruit
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end	
end)
Fruits:addToggle("Auto Store Fruits",false,function(value)
   AutoStoreFruit = value
   while AutoStoreFruit do
      StoredFruit = FruitTable
      wait(1)
      local args = {
         [1] = "getInventoryFruits"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))) do
         for i2,v2 in pairs(v) do
            FruitCheck = v2
            for i3,v3 in pairs(StoredFruit) do
               if v3 == v2 then
                  table.remove(StoredFruit,i3)
               end
            end
         end
         
      end
      for i,v in pairs(StoredFruit) do
      local args = {
         [1] = "StoreFruit",
         [2] = v
      }

      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end
end)
local Stats = lib:addPage("Stats")
local StatsPlr = Stats:addSection("Stats Player")

local Melee = StatsPlr:addToggle("Auto Add Point Melee",false,function(boolen)
   MeleeStat = boolen
   while MeleeStat do
      wait()
      if LP.Data.Points.Value >= MeleePoint then
         local args = {
            [1] = "AddPoint",
            [2] = "Melee",
            [3] = MeleePoint
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end
end)


local Defense = StatsPlr:addToggle("Auto Add Point Defense",false,function(boolen)
   DefenseStat = boolen
   while DefenseStat do
      wait()
      if LP.Data.Points.Value >= DefensePoint then
         local args = {
            [1] = "AddPoint",
            [2] = "Defense",
            [3] = DefensePoint
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end
end)


local Sword = StatsPlr:addToggle("Auto Add Point Sword",false,function(boolen)
   SwordStat = boolen
   while SwordStat do
      wait()
      if game.Players.localPlayer.Data.Points.Value >= SwordPoint then
         local args = {
            [1] = "AddPoint",
            [2] = "Sword",
            [3] = SwordPoint
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end
end)


local DevilFruit = StatsPlr:addToggle("Auto Add Point DevilFruit",false,function(boolen)
   DevilFruitStat = boolen
   while DevilFruitStat do

      wait()
      if game.Players.localPlayer.Data.Points.Value >= DevilFruitPoint then
         local args = {
            [1] = "AddPoint",
            [2] = "Demon Fruit",
            [3] = DevilFruitPoint
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end
end)

local Gun = StatsPlr:addToggle("Auto Add Point Gun",false,function(boolen)
   GunStat = boolen
   while GunStat do
      wait()
      if game.Players.localPlayer.Data.Points.Value >= GunPoint then
         local args = {
            [1] = "AddPoint",
            [2] = "Gun",
            [3] = GunPoint
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end
end)
local MeleeSlider = StatsPlr:addSlider("Point Melee",1,1,20,function(Value)
   MeleePoint = Value
end)
local DefenseSlider = StatsPlr:addSlider("Point Defense",1,1,20,function(Value)
   DefensePoint = Value
end)
local SwordSlider = StatsPlr:addSlider("Point Sword",1,1,20,function(Value)
   SwordPoint = Value
end)
local DevilFruitSlider = StatsPlr:addSlider("Point DevilFruit",1,1,20,function(Value)
   DevilFruitPoint = Value
end)
local GunSlider = StatsPlr:addSlider("Point Gun",1,1,20,function(Value)
   GunPoint = Value
end)
local StatsPlr2 = Stats:addSection("Check Stats")

local Travel = lib:addPage("Travel")

local TeleportSection = Travel:addSection("TeleportSection")

TeleportSection:addToggle("Ctrl + Click = Teleport",false, function(boolen)
   getgenv().CtrlTp = boolen
end)
TeleportSection:addToggle("Ctrl + Click = Tween",false, function(boolen)
   getgenv().CtrlTween = boolen
end)
--Finished
if SecondSea then
   TeleportSection:addDropdown("Teleport Flower",Flower,function(v)

      local FlowerSelected = v
      if FlowerSelected == "Red Flower" then
         for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Flower2" then
               DoTween(v.CFrame,getgenv().TweenSpeedTeleportPlace)
            end
         end
      end

      if FlowerSelected == "Blue Flower" then
         for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Flower1" then
               DoTween(v.CFrame,getgenv().TweenSpeedTeleportPlace)
            end
         end
      end
   end)
end
--Finished
if DragonColor ~= {} then
   TeleportSection:addDropdown("Teleport Dragon Color Hoops",DragonColor,function(v)

      local SelectedDragonColor = v
      if game:GetService("Workspace")["_WorldOrigin"].DragonColorPicker:FindFirstChild(SelectedDragonColor) then
         DoTween(game:GetService("Workspace")["_WorldOrigin"].DragonColorPicker:FindFirstChild(SelectedDragonColor).CFrame,getgenv().TweenSpeedTeleportPlace)
      end
   end)
end
--Finished
if not FirstSea then
   TeleportSection:addButton("Teleport to Sea Beast", function()
      local NearestSeaBeast;
      local NearestDistSeaBeast = math.huge
      for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
         if getRoot(v) then
            if (getRoot(v).Position-getRoot(LP.Character).Position).magnitude < NearestDistSeaBeast then
               NearestSeaBeast = v
               NearestDistSeaBeast = (getRoot(v).Position-getRoot(LP.Character).Position).magnitude
            end
         end
      end
      pcall(function()
         DoTween(getRoot(v).CFrame * CFrame.new(0,500,0),getgenv().TweenSpeedTeleportPlace)
      end)
   end)
end
local TeleportSection2 = Travel:addSection("Place")
if SecondSea then
   

	TeleportSection2:addButton("First Spot", function()
		DoTween(CFrame.new(-11.845784187317, 29.276727676392, 2768.9770507812),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Cafe", function()
		DoTween(CFrame.new(-384.03524780273, 73.020072937012, 353.2282409668),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Swan Mansion", function()
		DoTween(CFrame.new(-390.096313, 331.886475, 673.464966),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Swan Room", function()
		DoTween(CFrame.new(2302.19019, 15.1778421, 663.811035),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Factory", function()
		DoTween(CFrame.new(430.42569, 210.019623, -432.504791),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Colosseum", function()
		DoTween(CFrame.new(-1836.58191, 44.5890656, 1360.30652),getgenv().TweenSpeedTeleportPlace)
	end)
   
	TeleportSection2:addButton("Dark Arena", function()
		DoTween(game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame,getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Green bit", function()
		DoTween(CFrame.new(-2304.93359375, 72.966117858887, -2782.6965332031),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Graveyard Island", function()
		DoTween(CFrame.new(-5377.3295898438, 8.9691047668457, -708.45489501953),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Snow Mountain", function()
		DoTween(CFrame.new(554.47235107422, 401.42199707031, -5364.732421875),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Hot And Cold Island", function()
		DoTween(CFrame.new(-5944.7875976562, 15.951756477356, -5114.8725585938),getgenv().TweenSpeedTeleportPlace)
	end)


   TeleportSection2:addButton("Cursed Ship Gate", function()
		DoTween(CFrame.new(-6509.4169921875, 83.187019348145, -137.396774291998),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Cursed Ship", function()
		DoTween(CFrame.new(902.059143, 124.752518, 33071.8125),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Cursed Ship(Insta TP)", function()
      getRoot(LP.Character).CFrame = CFrame.new(923.21252441406, 125.05710601807, 32852.83203125)

	end)
	TeleportSection2:addButton("Ice Castle", function()
		DoTween(CFrame.new(5662.44140625, 28.191165924072, -5982.9755859375),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Forgotten Island", function()
		DoTween(CFrame.new(-3043.31543, 238.881271, -10191.5791),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Usoap Island", function()
		DoTween(CFrame.new(4778.2431640625, 8.2086620330811, 2871.4936523438),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Minisky Island", function()
		DoTween(CFrame.new(-260.358917, 49325.7031, -35259.3008),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Indra Island", function()
		DoTween(CFrame.new(-27007.9363, 9.033, 466.6544),getgenv().TweenSpeedTeleportPlace)
	end)

elseif FirstSea then

	TeleportSection2:addButton("Pirate Start Island", function()
		DoTween(CFrame.new(781.37255859375, 5.7767753601074, 1437.2399902344),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Marine Start Island", function()
		DoTween(CFrame.new(-2606.2143554688, 6.7695031166077, 2043.04553222667),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Middle Town", function()
		DoTween(CFrame.new(-655.824158, 7.88708115, 1436.67908),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Jungle", function()
		DoTween(CFrame.new(-1334.1259765625, 11.852984428406, 502.03717041016),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Shank's Room", function()
		DoTween(CFrame.new(-1455.4440917969, 29.851997375488, -37.440139770508),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Pirate Village", function()
		DoTween(CFrame.new(-1187.3435058594, 4.7515587806702, 3809.2456054688),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Desert", function()
		DoTween(CFrame.new(1094.14587, 6.47350502, 4192.88721),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Frozen Village", function()
		DoTween(CFrame.new(1112.4229736328, 7.3036189079285, -1159.3383789062),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Marine Fortress", function()
		DoTween(CFrame.new(-4817.0161132812, 20.651899337769, 4368.0639648438),getgenv().TweenSpeedTeleportPlace)
	end)

   TeleportSection2:addButton("Mob Leader Place", function()
		DoTween(CFrame.new(-2839.7548828125, 7.3262448310852, 5319.9428710938),getgenv().TweenSpeedTeleportPlace)
	end)
   
	TeleportSection2:addButton("Prison", function()
		DoTween(CFrame.new(4874.8125, 5.6519904136658, 735.57012939453),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Colosseum", function()
		DoTween(CFrame.new(-1423.5014648438, 7.2882599830627, -2798.2961425781),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Skylands", function()
		DoTween(CFrame.new(-4970.21875, 717.707275, -2622.35449),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("SkyArea1", function()
		DoTween(CFrame.new(-4731.9462890625, 845.27691650391, -1933.5628662109),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("SkyArea2", function()
		DoTween(CFrame.new(-7884.7309570312, 5545.509765625, -383.34613037109),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Sky Secret Temple", function()
		DoTween(CFrame.new(-8018.662109375, 5609.9936523438, -1979.3544921875),getgenv().TweenSpeedTeleportPlace)
	end)
   

	TeleportSection2:addButton("Magma Village", function()
		DoTween(CFrame.new(-5231.75879, 8.61593437, 8467.87695),getgenv().TweenSpeedTeleportPlace)
	end)
   
   TeleportSection2:addButton("UnderWater City Gate", function()
		DoTween(CFrame.new(3853.0385742188, 5.3731479644775, -1919.4447021484),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("UnderWater City", function()
		DoTween(CFrame.new(61092.36328125, 18.471633911133, 1711.1674804688),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Fountain City", function()
		DoTween(CFrame.new(5053.0297851562, 1.5012743473053, 4054.8439941406),getgenv().TweenSpeedTeleportPlace)
	end)

elseif ThirdSea then

   TeleportSection2:addButton("Port Town", function()
      DoTween(CFrame.new(-447.46743774414, 6.7299399375916, 5306.3686523438),getgenv().TweenSpeedTeleportPlace)
	end)

   TeleportSection2:addButton("Hydra Island", function()
      DoTween(CFrame.new(5278.9213867188, 602.04351806641, 360.77795410156),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Secret Temple", function()
      DoTween(CFrame.new(5231.6831054688, 7.3780846595764, 1102.6005859375),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Great Tree", function()
      DoTween(CFrame.new(2253.0600585938, 24.144220352173, -6405.6694335938),getgenv().TweenSpeedTeleportPlace)
	end)


   TeleportSection2:addButton("Castle on the sea", function()
		DoTween(CFrame.new(-5026.3584, 323.515503, -2996.28442),getgenv().TweenSpeedTeleportPlace)
	end)

   TeleportSection2:addButton("Pineapple Town", function()
      DoTween(CFrame.new(-11363.5166, 362.381439, -10327.9727),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Mansion", function()
      DoTween(CFrame.new(-12555.1846, 507.168274, -7480.31543),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Mansion(Insta TP)", function()
      getRoot(LP.Character).CFrame = game:GetService("Workspace").Map.Turtle.TradeTable.P1.CFrame
   end)
   TeleportSection2:addButton("Floating Turtle", function()
		DoTween(CFrame.new(-12001.6152, 1707.39319, -8789.03711),getgenv().TweenSpeedTeleportPlace)
	end)
   
   TeleportSection2:addButton("Beautiful Pirate Gate", function()
		DoTween(CFrame.new(-11990.901367188, 331.80770874023, -8845.5888671875),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Beautiful Pirate Domain", function()
		DoTween(CFrame.new(5310.80957, 160.446838, 129.390533),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Friendly Arena", function()
		DoTween(CFrame.new(5220.28955, 72.8193436, -1500.86304),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Haunted Castle", function()
		DoTween(CFrame.new(-9530.61035, 200.860657, 5763.13477),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Soul Reaper Raid Room", function()
		DoTween(CFrame.new(-9522.0957, 315.89975, 6751.88818),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Peanut Island", function()
		DoTween(CFrame.new(-2087.0561523438, 11.722011566162, -10002.080078125),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Ice Cream Island", function()
		DoTween(CFrame.new(-851.74633789062, 65.819496154785, -10932.150390625),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Sea Of Treats",function()
      DoTween(CFrame.new(-1907.1773681640625, 9.565654754638672, -11539.8251953125),getgenv().TweenSpeedTeleportPlace)
   end)

end
local TeleportSection3 = Travel:addSection("NPC")
if FirstSea then

   TeleportSection3:addButton("Usoap", function()
      DoTween(CFrame.new(-8036.05859375, 5756.033203125, -1934.3215332031),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Remove Fruit", function()
      DoTween(CFrame.new(5665.552734375, 64.651931762695, 868.56658935547),getgenv().TweenSpeedTeleportPlace)
   end)

   TeleportSection3:addButton("Second Sea Teleporter", function()
      DoTween(CFrame.new(-1165.7058105469, 7.6522002220154, 1728.2351074219),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Magic ELf(Candy For Boosts)", function()
      DoTween(CFrame.new(-657.54931640625, 7.8522391319275, 1573.9333496094),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Santa Claws(Candy For Items)", function()
      DoTween(CFrame.new(-704.76385498047, 7.8522439002991, 1553.6007080078),getgenv().TweenSpeedTeleportPlace)
   end)
elseif SecondSea then
   TeleportSection3:addButton("First Sea Teleporter", function()
      DoTween(CFrame.new(103.8427734375, 19.276727676392, 2834.9719238281),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Third Sea Teleporter", function()
      DoTween(CFrame.new(-1945.6728515625, 9.2648057937622, -2590.9370117188),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Fruit Inventory", function()
      DoTween(CFrame.new(-302.04800415039, 73.020126342773, 308.03646850586),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addDropdown("Inventory NPC",{"Inventory(Cafe)","Inventory(FirstSpot)"},function(Value)
      if Value == "Inventory(Cafe)" then
      DoTween(CFrame.new(-300.54641723633, 73.020111083984, 296.77435302734),getgenv().TweenSpeedTeleportPlace)
      elseif Value == "Inventory(FirstSpot)" then
         DoTween(CFrame.new(119.93355560303, 19.276727676392, 2854.0834960938),getgenv().TweenSpeedTeleportPlace)
      end
   end)
   TeleportSection3:addButton("Reset Stats NPC", function()
      DoTween(CFrame.new(-1888.8653564453, 88.357986450195, -1911.0194091797),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Race Reroll NPC", function()
      DoTween(CFrame.new(-312.74591064453, 73.020111083984, 358.31781005859),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Magic ELf(Candy For Boosts)", function()
      DoTween(CFrame.new(-458.58517456055, 73.060104370117, 260.00039672852),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Greedy Elf(Candy For Fragments)", function()
      DoTween(CFrame.new(-336.14483642578, 72.959754943848, 389.41271972656),getgenv().TweenSpeedTeleportPlace)
   end)
   
   TeleportSection3:addButton("Manager", function()
      DoTween(CFrame.new(-388.47613525391, 73.030082702637, 332.55465698242),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Marine Recruiter", function()
      DoTween(CFrame.new(-1349.1331787109, 72.959510803223, -1046.486328125),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Pirate Recruiter", function()
      DoTween(CFrame.new(-427.56546020508, 72.959693908691, 1447.662109375),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Mysterious Man", function()
      DoTween(CFrame.new(2570.8295898438, 1622.2680664062, -3745.8859863281),getgenv().TweenSpeedTeleportPlace)
   end)

elseif ThirdSea then
   TeleportSection3:addButton("Fruit Inventory", function()
      DoTween(CFrame.new(-12528.346679688, 336.91436767578, -7447.4794921875),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addDropdown("Inventory NPC",{"Inventory(Mansion)","Inventory(PortTown)"},function(Value)
      if Value == "Inventory(Mansion)" then
         DoTween(CFrame.new(-12571.06640625, 336.91436767578, -7444.5751953125),getgenv().TweenSpeedTeleportPlace)
      elseif Value == "Inventory(PortTown)" then
         DoTween(CFrame.new(-218.041015625, 6.7299399375916, 5327.6635742188),getgenv().TweenSpeedTeleportPlace)
      end
   end)
   TeleportSection3:addButton("Reset Stats NPC", function()
      DoTween(CFrame.new(-5143.0615234375, 315.41546630859, -3162.0434570312),getgenv().TweenSpeedTeleportPlace)
   end)
   
   TeleportSection3:addButton("Race Reroll NPC", function()
      DoTween(CFrame.new(-12494.5234375, 336.91436767578, -7563.8916015625),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Santa Claws(Candy For Items)", function()
      DoTween(CFrame.new(-12515.71875, 332.37814331055, -7598.1450195312),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Greedy Elf(Candy For Fragments)", function()
      DoTween(CFrame.new(-12515.71875, 332.37814331055, -7598.1450195312),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Bone Trading NPC", function()
      DoTween(CFrame.new(-8724.8076171875, 142.32157897949, 6247.6552734375),getgenv().TweenSpeedTeleportPlace)
   end)
   
   TeleportSection3:addButton("Hungry Man", function()
      DoTween(CFrame.new(-10918.0078125, 624.17694091797, -10267.389648438),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Elite Hunter", function()
      DoTween(CFrame.new(-5418.3354492188, 313.71548461914, -2825.7775878906),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Player Hunter", function()
      DoTween(CFrame.new(-5558.6201171875, 313.73687744141, -2839.9396972656),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Previous Hero", function()
      DoTween(CFrame.new(-10369.604492188, 331.65417480469, -10129.833984375),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Marine Recruiter", function()
      DoTween(CFrame.new(-12802.607421875, 332.37814331055, -7696.994140625),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Pirate Recruiter", function()
      DoTween(CFrame.new(-12259.263671875, 332.37814331055, -7396.05859375),getgenv().TweenSpeedTeleportPlace)
   end) 
   TeleportSection3:addButton("Phoenix Chip Seller", function()
      DoTween(CFrame.new(-2812.732666015625, 254.0523681640625, -12594.6005859375),getgenv().TweenSpeedTeleportPlace)
   end) 
end
local Players = lib:addPage("Players")

Pvp = Players:addSection("PvP")

PlayerRD = Pvp:addDropdown("Selected Player",PlayerTable,function(Value)
   SelectedPlayer = Value
end)

Pvp:addButton("Refresh Player",function()
   Pvp:updateDropdown(PlayerRD,"Refresh Player",refreshPlayers(),function()
   end)
end)
Pvp:addToggle("Kill Player(Melee)",false,function(boolen)
   
   KillPlayerMelee = boolen
   if KillPlayerMelee and (SelectedPlayer == "" or SelectedPlayer == nil) then
      return false
   end
   --[[spawn(function()
      while KillPlayerMelee do
         wait()
         pcall(function()
            ClickMod.activeController.hitboxMagnitude = 80 
         end)
      end
   end)]]
   
   while KillPlayerMelee do
      wait()
      local PlrKillMelee = game.Players:FindFirstChild(SelectedPlayer)
      if PlrKillMelee ~=nil then
         PlrToKillMelee = PlrKillMelee.Character
         if (getRoot(LP.Character).Position - getRoot(PlrToKillMelee).Position).magnitude < 500 then
            getRoot(LP.Character).CFrame = getRoot(PlrToKillMelee).CFrame
            getRoot(PlrToKillMelee).Size = Vector3.new(200,200,200)
            --FastAttack()
            Click()
         elseif (getRoot(LP.Character).Position - getRoot(PlrToKillMelee).Position).magnitude < 10000 then
            DoTween(getRoot(PlrToKillMelee).CFrame,getgenv().TweenSpeedTeleportPlace)
         end
      end
   end
end)
Pvp:addToggle("Tween / Tp",false,function(boolen)
   
   LoopTo = boolen
   if LoopTo and (SelectedPlayer == "" or SelectedPlayer == nil) then
      return false
   end
   --[[spawn(function()
      while KillPlayerMelee do
         wait()
         pcall(function()
            ClickMod.activeController.hitboxMagnitude = 80 
         end)
      end
   end)]]
   
   while LoopTo do
      wait()
      local PlrKillMelee = game.Players:FindFirstChild(SelectedPlayer)
      if PlrKillMelee ~=nil then
         PlrToKillMelee = PlrKillMelee.Character
         if PlrToKillMelee and getRoot(PlrToKillMelee) then
            if (getRoot(LP.Character).Position - getRoot(PlrToKillMelee).Position).magnitude < 500 then
               getRoot(LP.Character).CFrame = CFrame.new(getRoot(PlrToKillMelee).Position)
            else
               DoTween(CFrame.new(getRoot(PlrToKillMelee).Position),getgenv().TweenSpeedTeleportPlace)
            end
         end
      end
   end
end)
Pvp:addToggle("Kill Player(Gun,Tween,Slow)",false,function(boolen)
   KillPlayerGunTween = boolen
   if KillPlayerGunTween and (SelectedPlayer == "" or SelectedPlayer == nil) then
      return false
   end
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
      if v:IsA("Tool") then
         if v:FindFirstChild("RemoteFunctionShoot") then 
            CurrentGun = v.Name
         end
      end
   end
   for i,v in pairs(LP.Character:GetChildren()) do  
      if v:IsA("Tool") then
         if v:FindFirstChild("RemoteFunctionShoot") then 
            CurrentGun = v.Name
         end
      end
   end

   while KillPlayerGunTween and wait() do
      if SelectedPlayer ~= nil then
         local PlrKillGunTween = game.Players:FindFirstChild(SelectedPlayer)
         if PlrKillGunTween ~=nil then 
            local Humanoid = PlrKillGunTween.Character:FindFirstChild("Humanoid")
            local Hum = getRoot(PlrKillGunTween.Character)
            if PlrKillGunTween and PlrKillGunTween.Character and Humanoid and Hum and Humanoid.Health > 0 and PlrKillGunTween then
               CheckFloat1()
               Equip(CurrentGun)
               Hum.Size = Vector3.new(70,70,70)
               if (Hum.Position-getRoot(LP.Character).Position).magnitude >= 800 then
                  spawn(function()
                     wait(0.1)
                     local guntweening = DoTween(Hum.CFrame * CFrame.new(0,10,-20),350)
                     CheckFloat1()
                  end)
                  wait(0.5)
               else
                  --Thread 1
                  if guntweening then
                     guntweening:Stop()
                  end
                  spawn(function()
                     if Hum and Humanoid.Health > 0 then
                        local RandomThing = math.random(1,4)
                        CheckFloat1()
                        if RandomThing == 1 then
                           getRoot(LP.Character).CFrame = Hum.CFrame * CFrame.new(0,80,-10)
                        elseif RandomThing == 2 then
                           getRoot(LP.Character).CFrame = Hum.CFrame * CFrame.new(0,80,10)
                        elseif RandomThing == 3 then
                           getRoot(LP.Character).CFrame = Hum.CFrame * CFrame.new(0,60,30)
                        elseif RandomThing == 4 then
                           getRoot(LP.Character).CFrame = Hum.CFrame * CFrame.new(0,60,-30)
                        end
                     end
                  end)
                  --Thread 2
                  spawn(function()
                     if LP.Character:FindFirstChild(CurrentGun) then
                        if PlrKillGunTween.Character then
                           if getRoot(PlrKillGunTween.Character) then
                              local args = {
                                 [1] = getRoot(PlrKillGunTween.Character).Position,
                                 [2] = getRoot(PlrKillGunTween.Character)
                              }
                              game:GetService("Players").LocalPlayer.Character[CurrentGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                           end
                        end
                     end
                  end)
               end
            end
         end
      end
   end
   CheckFloat2()
end)
Pvp:addToggle("Kill Player(Gun, Teleport(Close Range),High, Stay At 1 Spot)",false,function(bool)
   KillPlayerGunTeleport = bool
   if KillPlayerGunTeleport and (SelectedPlayer == "" or SelectedPlayer == nil) then
      return false
   end
   while KillPlayerGunTeleport do
      wait()
      if SelectedPlayer ~= nil then
         local PlrKillGunTp = game.Players:FindFirstChild(SelectedPlayer)
         if PlrKillGunTp ~=nil then
            PlrToKillGunTp = PlrKillGunTp.Character
            if (getRoot(LP.Character).Position - getRoot(PlrToKillGunTp).Position).magnitude < 500 then
               getRoot(LP.Character).CFrame = getRoot(PlrToKillGunTp).CFrame * CFrame.new(0,30,0)
               PlrToKillGunTp.HumanoidRootPart.Size = Vector3.new(70,70,70)
               FastAttack()
               Click()
               repeat wait()
                  spawn(function()
                     if PlrToKillGunTp:FindFirstChild("HumanoidRootPart") ~= nil then
                        CheckFloat1()
                        getRoot(LP.Character).CFrame = PlrToKillGunTp.HumanoidRootPart.CFrame * CFrame.new(30, 85, 0)
                     end
                  end)
               until not KillPlayerGunTeleport or not PlrToKillGunTp:FindFirstChild("Humanoid") or  PlrToKillGunTp.Humanoid.Health < 0
               else lib:Notify("Kill Player(Gun TP)","You are too far from Enemy") return
            end
         end
      end
   end
   local PlrKillGunTp = game.Players:FindFirstChild(SelectedPlayer)
   if PlrKillGunTp ~=nil and KillPlayerGunTeleport == false then
      PlrToKillGunTp = PlrKillGunTp.Character
      if PlrToKillGunTp then
         PlrToKillGunTp.HumanoidRootPart.Size = Vector3.new(2,1,2)
      end
   end
end)
Pvp:addButton("Tp To Player",function()
   if SelectedPlayer ~= nil then
      local TPPlayer = GetChar(SelectedPlayer)
      if TPPlayer then
         if getRoot(TPPlayer) then
            DoTween(getRoot(TPPlayer).CFrame,getgenv().TweenSpeedTeleportPlace)
         end
      end
   end
end)
Pvp:addToggle("Fully Silent Aim",false,function(boolen)
   FullySilentAim = boolen

   if SelectedPlayer ~= "" and  SelectedPlayer ~= nil and FullySilentAim then
   plr = game.Players:FindFirstChild(SelectedPlayer).Character
   
   getgenv().SilentAimPlr = true
   else getgenv().SilentAimPlr = false 
   end
end)

Pvp:addToggle("Silent Aim Gun",false,function(boolen)
   Aimbot = boolen
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
      if v:IsA("Tool") then
         if v:FindFirstChild("RemoteFunctionShoot") then 
            SilentAimGun = v.Name
         end
      end
   end
   for i,v in pairs(LP.Character:GetChildren()) do  
      if v:IsA("Tool") then
         if v:FindFirstChild("RemoteFunctionShoot") then 
            SilentAimGun = v.Name
         end
      end
   end
   SilentAimSelectedPlr = boolen
end)
Mouse.Button1Down:Connect(function()
   if Aimbot and LP.Character:FindFirstChild(SilentAimGun) ~= nil then
      spawn(function()
         if SelectedPlayer and Players:FindFirstChild(SelectedPlayer) and getRoot(SelectedPlayer)  then
            local args = {[1] = getRoot(SelectedPlayer).Position, [2] = getRoot(SelectedPlayer)}
            if LP.Character:FindFirstChild(SilentAimGun)  then
               LP.Character:FindFirstChild(SilentAimGun).RemoteFunctionShoot:InvokeServer(unpack(args))
            end
         end
      end)
      spawn(function()
         if SelectedPlayer and Players:FindFirstChild(SelectedPlayer) and getRoot(SelectedPlayer)  then
            local args = {[1] = getRoot(SelectedPlayer).Position, [2] = getRoot(SelectedPlayer)}
            if LP.Character:FindFirstChild(SilentAimGun)  then
               LP.Character:FindFirstChild(SilentAimGun).RemoteFunctionShoot:InvokeServer(unpack(args))
            end
         end
      end)
   end 
end)
--Finished
Pvp:addToggle("Spectate",false,function(boolen)
   getgenv().Spectate = boolen
   if SelectedPlayer ~= nil then
      if GetChar(SelectedPlayer) then
         local SpectatePlr = GetChar(SelectedPlayer)
         if SpectatePlr then
            repeat wait(.1)
               if SpectatePlr then
                  if FFC(SpectatePlr,"Humanoid") then
                     game.Workspace.Camera.CameraSubject = FFC(SpectatePlr,"Humanoid")
                  end
               else
                  game.Workspace.Camera.CameraSubject = LP.Character:FindFirstChild('Humanoid')
               end
            until not getgenv().Spectate
         end
         game.Workspace.Camera.CameraSubject = LP.Character:FindFirstChild('Humanoid')

      end
   end
   if not getgenv().Spectate then
      game.Workspace.Camera.CameraSubject = LP.Character:FindFirstChild('Humanoid')
   end
end)
--Finished
Pvp:addToggle("HitBox Toggle",false,function(v)
   getgenv().Hitboxv = v
   if SelectedPlayer ~= nil and Hitboxi ~= nil then
      if GetChar(SelectedPlayer) then
         local HitBoxPlayer = GetChar(SelectedPlayer)
         if HitBoxPlayer and IsAlive(HitBoxPlayer) then
            while getgenv().Hitboxv and wait() do
               pcall(function()
                  if HitBoxPlayer and IsAlive(HitBoxPlayer) then
                     ResizeCustom(HitBoxPlayer,Hitboxi,Hitboxi,Hitboxi,false)
                  end
               end)
            end
         end
         if getgenv().Hitboxv == false and IsAlive(HitBoxPlayer) then
            ResizeCustom(HitBoxPlayer,2,2,1,false)
         end
      end
   end
end)
--Finished
Pvp:addSlider("HitBox Extender",2,1,60,function(Value)
   Hitboxi = Value
end)
--Finished
Pvp:addSlider("HitBox Transparency",10,0,10,function(Value)
   HitboxTransparency = Value / 10
   if SelectedPlayer ~= nil then
      if GetChar(SelectedPlayer) then
         local HitBoxPlayer = GetChar(SelectedPlayer)
         if HitBoxPlayer and IsAlive(HitBoxPlayer) then
            pcall(function()
               if HitBoxPlayer and IsAlive(HitBoxPlayer) then
                  getRoot(HitBoxPlayer).Transparency = HitboxTransparency
               end
            end)
         end
      end
   end
end)
--Finished
Pvp:addColorPicker("Hitbox Color",Color3.new(0, 0, 0),function(Value)
   local ColorHRP = Value
   if SelectedPlayer ~= nil then
      if GetChar(SelectedPlayer) then
         local HitBoxPlayer = GetChar(SelectedPlayer)
         if HitBoxPlayer and IsAlive(HitBoxPlayer) then
            pcall(function()
               if HitBoxPlayer and IsAlive(HitBoxPlayer) then
                  getRoot(HitBoxPlayer).Color = ColorHRP
               end
            end)
         end
      end
   end
end)
--Finished
Pvp:addButton("Get Kill Player Quest",function()
   local args = {[1] = "PlayerHunter"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)
local LocalPlayerPage = lib:addPage("Local Player")

local LocalPlayerSection = LocalPlayerPage:addSection("Local Player Functions")
--Broken
--[[LocalPlayerSection:addToggle("Fly(IY)",getgenv().Fly,function(Value)
   Fly = Value
   if not Fly then
      NOFLY()
   end
end)
LocalPlayerSection:addKeybind("Fly KeyBind",Enum.KeyCode.B,function()
   if Fly then
      getgenv().IYFly = not getgenv().IYFly
      if getgenv().IYFly then
         sFLY()
      else
         NOFLY()
      end
   end
end)
LocalPlayerSection:addSlider("Fly Speed",getgenv().FlySpeed,1,20,function(Value)
   getgenv().FlySpeed = Value
end)]]
--Finished
LocalPlayerSection:addToggle("Big Hitbox Melee, Sword",function(boolen)
   HitBoxFake  = boolen
   while HitBoxFake and wait() do
      HitBoxPlrFake()
   end
end)
--Finished
LocalPlayerSection:addButton("Infinity Geppo",function(boolen)
   for i,v in next, getgc() do
      if LP.Character.Geppo then
         if typeof(v) == "function" and getfenv(v).script == LP.Character.Geppo then
            for i2,v2 in next, getupvalues(v) do
               if tostring(i2) == "9" then
                  repeat wait(.1)
                     setupvalue(v,i2,0)
                  until not Alive()
               end
            end
         end
      end
   end
end)
--Finished
LocalPlayerSection:addButton("No Soru CD",function(boolen)
   for i,v in next, getgc() do
      if LP.Character.Soru then
         if typeof(v) == "function" and getfenv(v).script == LP.Character.Soru then
            for i2,v2 in next, getupvalues(v) do
               if typeof(v2) == "table"  then
                  repeat wait(.1)
                     v2.LastUse = 0
                  until not Alive()
               end
            end
         end
      end
   end
end)
--Finished
LocalPlayerSection:addButton("No Dash CD",function(boolen)
   for i,v in next, getgc() do
         if LP.Character.Dodge then
            if typeof(v) == "function" and getfenv(v).script == LP.Character.Dodge then
            for i2,v2 in next, getupvalues(v) do
               if tostring(v2) == "0.4"  then
                  repeat wait(.1)
                     setupvalue(v,i2,0)
                  until not Alive()
               end
            end
         end
      end
   end
end)
--Need rework
LocalPlayerSection:addToggle("Water Walker",false,function(Value)
   getgenv().WaterWalker = Value
   if getgenv().WaterWalker then
      LP.Data.DevilFruit.Value = ("Ice-Ice")
   else
      LP.Data.DevilFruit.Value = MyDevilFruit
   end
end)
--[[LocalPlayerSection:addToggle("No Cd Attack",false,function(Value)
   getgenv().NoCDAttack = Value
   while game:GetService("RunService").RenderStepped:wait(1) and getgenv().NoCDAttack do
      pcall(function()
         ClickMod.activeController.attacking = false 
         ClickMod.activeController.active = false
         ClickMod.activeController.timeToNextAttack = 0
         ClickMod.activeController.increment = 4
      end)
   end
end)
LocalPlayerSection:addToggle("Increase Close Range Weapons Hitbox",false,function(boolen)
   getgenv().CloseRangeHitBox = boolen
   while getgenv().CloseRangeHitBox and wait() do
      pcall(function()
      
      ClickMod.activeController.hitboxMagnitude = 60 
      end)
   end
end)]]
--Finished
LocalPlayerSection:addToggle("Remove Crew & Marine",false,function(boolen)
   getgenv().RemoveLogo = boolen
   if getgenv().RemoveLogo == false then return end 
   while getgenv().RemoveLogo and wait(1) do 
      for i,v in pairs(getRoot(LP.Character):GetChildren()) do
         if v.Name == "CrewBBG" then   
            v:Destroy()
         end
      end
      for i,v in pairs(getRoot(LP.Character):GetChildren()) do
         if v.Name == "MarineBBG" then  
            v:Destroy()
         end
      end
   end
end)
--Finished
LocalPlayerSection:addToggle("No Stun",getgenv().NoStun,function(boolen)
   getgenv().NoStun = boolen
   while getgenv().NoStun do
      wait()
      if Alive() then 
         LP.Character.Stun.Value = 0
         getRoot(LP.Character).Size = Vector3.new(2,1,2)
      else
         wait(5)
      end
   end
end)
--Finished
LocalPlayerSection:addToggle("Inf Range Observation",getgenv().InfRangeObservation,function(boolen)
   getgenv().InfRangeObservation = boolen
   while getgenv().InfRangeObservation do
      wait()
      if Alive() then
         LP.VisionRadius.Value = math.huge
      else
         wait(5) 
      end
   end
   if not getgenv().InfRangeObservation then
      LP.VisionRadius.Value= 3000
   end
end)
--Finished
LocalPlayerSection:addToggle("WalkSpeed Hack",false,function(Value)
   SpeedHack = Value
   while SpeedHack and wait() do
      if LP.Character and Alive() then
         pcall(function()
            if WalkSpeedHack ~= nil then
               LP.Character.Movement.Disabled = true
               LP.Character:FindFirstChild('Humanoid').WalkSpeed = WalkSpeedHack
            end
         end)
      end
   end
end)
--Finished
LocalPlayerSection:addSlider("WalkSpeed",LP.Character:FindFirstChild('Humanoid').WalkSpeed,30,500,function(Value)
   wait(0.1)
   WalkSpeedHack = Value
end)
--Finished
LocalPlayerSection:addToggle("JumpPower Hack",false,function(Value)
   JumpPowerHack = Value
   while JumpPowerHack and wait() do
      if LP.Character and Alive() then
         pcall(function()
            if JumpPowerHack ~= nil then
               LP.Character.Movement.Disabled = true
               LP.Character:FindFirstChild('Humanoid').JumpPower = JumpPowerHack
            end
         end)
      end
   end
end)
--Finished
LocalPlayerSection:addSlider("Jump Power",LP.Character:FindFirstChild('Humanoid').JumpPower,50,1000,function(Value)
   JumpPowerHack = Value
end)
--Finished
LocalPlayerSection:addSlider("Gravity",game.Workspace.Gravity,0,1000,function(Value)
   game.Workspace.Gravity = Value
end)
--Finished
LocalPlayerSection:addSlider("Zoom Distance",0,500,10000,function(Value)
   LP.CameraMaxZoomDistance = Value
end)
--Finished
spawn(function()
   getgenv().NearNextIsland  = true
   while wait() do
       pcall(function()
           if getgenv().AutoNextIsland then
               if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
               if getgenv().NearNextIsland then
                   if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 3000 then
                       DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,50,0),TweenSpeedTeleportPlace)
                       TweenFloat()
                   end
               else
                   DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,50,0),TweenSpeedTeleportPlace)
               end
               elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
               if getgenv().NearNextIsland then
                   if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 3000 then
                       DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,60,0),TweenSpeedTeleportPlace)
                       TweenFloat()
                   end
               else
                   DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,60,0),TweenSpeedTeleportPlace)
               end

               elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
               if getgenv().NearNextIsland then
                   if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 3000 then
                       DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,50,0),TweenSpeedTeleportPlace)
                       TweenFloat()
                   end
               else
                   DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,50,0),TweenSpeedTeleportPlace)
               end

               elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
               if getgenv().NearNextIsland then
                   if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 3000 then
                       DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,50,0),TweenSpeedTeleportPlace)
                       TweenFloat()
                   end
               else
                   DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,50,0),TweenSpeedTeleportPlace)

               end

               elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                   if getgenv().NearNextIsland then
                       if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 3000 then
                           DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,50,0),TweenSpeedTeleportPlace)
                           TweenFloat()
                       end
                   else
                       DoTween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,50,0),TweenSpeedTeleportPlace)

                   end

               end
           end
       end)
   end
end)
local Dungeon = lib:addPage("Dungeon")
local Chip = Dungeon:addSection("Chip")
Chip:addDropdown("Select Microchip", {"Flame","Ice","Quake","Light","Dark","String","Rumble","Human: Buddha","Bird: Phoenix"}, function(Value)
   Microchip = Value
end)
--Finisheds
if SecondSea then
   Chip:addButton("Law Raid Chip",function()
      local args = {
         [1] = "BlackbeardReward",
         [2] = "Microchip",
         [3] = "2"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   end)
end
--Finished
Chip:addToggle("Auto Buy Chip",false,function()
   AutoBuyChip = true
   while AutoBuyChip and wait(1) do
      
      pcall(function()
         local args = {
         [1] = "RaidsNpc",
         [2] = "Check"
         }
         wait(.1)
         if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) == true then
            local args = {
            [1] = "RaidsNpc",
            [2] = "Select",
            [3] = Microchip
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if string.find(v.Name,"Fruit") then
               local args = {
               [1] = "RaidsNpc",
               [2] = "Select",
               [3] = Microchip
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
         end
         for i,v in pairs(LP.Character:GetChildren()) do
            if v:IsA("Tool") and string.find(v.Name,"Fruit") then
               if string.find(v.Name,"Fruit") then
                  local args = {
                  [1] = "RaidsNpc",
                  [2] = "Select",
                  [3] = Microchip
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end
         end
      end)
   end
end)
if not FirstSea then
   local Raid = Dungeon:addSection("Raid")
   if SecondSea then
      --Finished
      Raid:addToggle("Fully Auto Law Raid",getgenv().FullyAutolawRaid,function(boolen)
         getgenv().FullyAutolawRaid = boolen
         while getgenv().FullyAutolawRaid and wait() do
            pcall(function()
               if not game.Workspace.Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                  if LP.Backpack:FindFirstChild("Microchip") or LP.Character:FindFirstChild("Microchip") then 
                     DoTween(CFrame.new(-5570.052734375, 332.41363525391, -5965.91015625),getgenv().TweenSpeedTeleportPlace)
                     fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector,1)
                  elseif not LP.Backpack:FindFirstChild("Microchip") or not LP.Character:FindFirstChild("Microchip") then
                     local args = {
                        [1] = "BlackbeardReward",
                        [2] = "Microchip",
                        [3] = "2"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     wait(1)
                  end
                  
               else
                  
                  local LawBoss = game:GetService("Workspace").Enemies:WaitForChild("Order [Lv. 1250] [Raid Boss]") 
                  repeat wait()
                     if Alive() and LawBoss and IsAlive(LawBoss) then
                        ResizeBoss(LawBoss,true)
                        OldY = getRoot(LawBoss).Position.Y
                        OldCFrame = getRoot(LawBoss).CFrame
                        CheckFloat1()
                        
                        FastAttack()
                        HitBoxPlr()
                        if v:FindFirstChild('Humanoid').Health >= v:FindFirstChild('Humanoid').MaxHealth*20/100 then 
                           if IsAlive(LawBoss) and CheckRange(LawBoss,LP.Character,350) then

                              if getRoot(LP.Character).Position.y >= getRoot(LawBoss).Position.y then
                                 if getRoot(LawBoss).Position.Y - OldY >= 0 then
                                    spawn(function()
                                       wait()
                                       if getgenv().FullyAutolawRaid and IsAlive(LawBoss) then
                                          if Alive() and IsAlive(LawBoss) and CheckRange(LawBoss,LP.Character,300) then
                                             CheckFloat1()
                                             getRoot(LP.Character).CFrame = getRoot(LawBoss).CFrame * CFrame.new(0, 40, 40)
                                          else
                                             DoTween(getRoot(LawBoss).CFrame * CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                                          end
                                       end

                                    end)
                                 else 
                                    wait()
                                    DoTween(getRoot(LawBoss).CFrame * CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                                 end
                              elseif getgenv().FullyAutolawRaid then
                                 local randomnumber = math.random(1,3)
                                 if randomnumber == 1 then
                                    getRoot(LP.Character).CFrame = getRoot(LawBoss).CFrame * CFrame.new(0, 0, 40)      
                                 elseif randomnumber ==2 then
                                    getRoot(LP.Character).CFrame = getRoot(LawBoss).CFrame * CFrame.new(0, 0, -40) 
                                 elseif randomnumber ==3 then
                                    getRoot(LP.Character).CFrame = getRoot(LawBoss).CFrame * CFrame.new(0, -40, 0)
                                 end    
                              end
                           

                           elseif not Tweening and IsAlive(LawBoss) and Alive() then  
                              DoTween(getRoot(LawBoss).CFrame*CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                              if Alive() and IsAlive(LawBoss) and not CheckRange(LawBoss,LP.Character,350) then
                                 DoTween(getRoot(LawBoss).CFrame*CFrame.new(0,40,40),getgenv().TweenSpeedAutoFarm)
                              end
                           end
                        else wait(5)
                        end
                     else DoTween(CFrame.new(-6410.98828125, 485.12860107421875, -4956.431640625),getgenv().TweenSpeedTeleportPlace)
                        repeat wait()
                        until LP.Character.Humanoid.Health >= LP.Character.Humanoid.MaxHealth*50/100
                     end
                  until not IsAlive(LawBoss) or not Alive() or getgenv().FullyAutolawRaid == false
               end
            end)
         end
      end)
   end
   --Need Rework
      Raid:addToggle("Fully Auto Raid",getgenv().FullyAutoRaid,function(boolen)
      getgenv().FullyAutoRaid = boolen
      getgenv().KillAura = boolen
      spawn(function()
         while getgenv().FullyAutoRaid and wait() do
            
            KillAuraF()
            Click()
         end
      end)
      while getgenv().FullyAutoRaid do
         wait()
         getgenv().AutoNextIsland = true
         local args = {[1] = "Cousin", [2] = "Buy"}
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         wait(0.5)
         getgenv()
         if Microchip ~= nil and not AutoRaidJoined then
            local args = {
               [1] = "RaidsNpc",
               [2] = "Select",
               [3] = Microchip
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               wait(0.5)
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
               if string.find(v.Name,"Microchip") then
                  if not AutoRaidJoined then
                     if ThirdSea then
                        --DoTween(CFrame.new(-5034.16309, 314.9664, -2948.1499),getgenv().TweenSpeedTeleportPlace)
                        fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1)
                        CheckFloat1()
                     elseif SecondSea then
                     -- DoTween(CFrame.new(-6438.73535, 250.645355, -4501.50684),getgenv().TweenSpeedTeleportPlace)
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1)
                        CheckFloat1()
                     end
                        AutoRaidJoined = true
                  else AutoRaidJoined = true
                  end
               end
            end
            wait(25)
            repeat wait() CheckFloat1() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false
            wait(5)
            AutoRaidJoined = false
            getgenv().AutoNextIsland = false
         else return lib:Notify("FullyAutoRaid","Please Select A Chip")
         end
      end
      CheckFloat2()
   end)
   --Finished
   Raid:addToggle("Kill Aura",getgenv().KillAura,function(boolen)
      getgenv().KillAura = boolen
      while getgenv().KillAura and wait() do
         
         KillAuraF()
      end
   end)
   -- Finished
   Raid:addToggle("Kill Aura V2(For Bad Executors)",getgenv().KillAurav2,function(boolen)
      getgenv().KillAurav2 = boolen
      while getgenv().KillAurav2 and wait() do
         if LP.PlayerGui.Main.Timer.Visible == true then
            local NearestMob;
            local NearestDist = math.huge
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
               if IsAlive(v) and Alive() then
                  if CheckRange(v,LP.Character,1000) then
                     if CheckRange(v,LP.Character,NearestDist)  then
                        NearestDist = ReturnMagnitude(v,LP.Character)
                        NearestMob = v
                     end
                  end
               end
            end
            if NearestMob then
               pcall(function()
                  if Alive() and IsAlive(NearestMob) and CheckRange(NearestMob,LP.Character,350) then
                     MobAuraBringPos = getRoot(NearestMob).CFrame
                     repeat wait()
                        if Alive() and IsAlive(NearestMob) then
                           getgenv().KillAuraIng = true
                           Equip(Weapon)
                           Click()
                           ResizeHRP(NearestMob,true)
                           if CheckRange(NearestMob,LP.Character,350) then
                              getRoot(LP.Character).CFrame = getRoot(NearestMob).CFrame * CFrame.new(0, 10, 40)
                           end
                        end
                     until not IsAlive(NearestMob) or not getgen().MobAura or not CheckRange(NearestMob,LP.Character,1000) or getgenv().KillAurav2 == false or not Alive()
                     getgenv().KillAuraIng = false
                  end
               end)
            end

         end
      end
   end)
   --Finished
   Raid:addToggle("Auto Next Island",getgenv().AutoNextIsland,function(boolen)
      getgenv().AutoNextIsland = boolen
   end)
   --Finished
   Raid:addToggle("Auto Awaken",getgenv().AutoAwaken,function(boolen)
      getgenv().AutoAwaken = boolen
      while getgenv().AutoAwaken and wait() do
         local args = {[1] = "Awakener",[2] = "Awaken"}
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end)
   --Finished
   Raid:addButton("Teleport to Raid Room",function()
      if SecondSea then
         DoTween(CFrame.new(-6438.73535, 250.645355, -4501.50684),getgenv().TweenSpeedTeleportPlace)
      elseif ThirdSea then
         DoTween(CFrame.new(-5034.16309, 314.9664, -2948.14993),getgenv().TweenSpeedTeleportPlace)
      end
   end)
end
local MiscPage = lib:addPage("Misc")
--[[if game.PlaceId == 7449423635 or game.PlaceId == 4442272183 then
   if not getgenv().ColorNotifier then
       spawn(function()
           getgenv().ColorNotifier = true
           loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/HakiNotifier.lua"))()
           while wait(300) do
               local args = {[1] = "ColorsDealer",[2] = "1"}
               local CurrentHaki = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               if (OldHaki == nil or OldHaki == "") or (OldHaki~=CurrentHaki) then
                   loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/HakiNotifier.lua"))()
                   local args = {[1] = "ColorsDealer",[2] = "1"}
                   OldHaki =  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
           end
       end)
   end
end]]
local PlayerTeam = MiscPage:addSection("Player Team")
--Finished
PlayerTeam:addButton("Pirates Team",function()
   local args = {[1] = "SetTeam",[2] = "Pirates"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
end)
--Finished
PlayerTeam:addButton("Marines Team",function()
   local args = {[1] = "SetTeam",[2] = "Marines"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
end)
--Finished
local Esp = MiscPage:addSection("Esp")
Esp:addToggle("Esp Players",false,function(Value)
   getgenv().EspPlayer = Value
   local Players = game:GetService("Players")

   if getgenv().EspPlayer then
      ESPenabled = true
      
      for i,v in pairs(Players:GetChildren()) do
         if v.ClassName == "Player" and v.Name ~= LP.Name then
            ESP(v)
         end
      end
   else
      ESPenabled = false
      for i,c in pairs(COREGUI:GetChildren()) do
         if string.sub(c.Name, -4) == '_ESP' then
            c:Destroy()
         end
      end
   end
end)
--[[Esp:addToggle("Esp Chests",false,function(Value)
   getgenv().ChestESP = Value
   if not getgenv().ChestESP then
      for i,v in pairs(game.Workspace:GetDescendants()) do
         if v then
            if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
               local Esp = v:FindFirstChild("Esp")
               if Esp  then
                  Esp:Destroy()
               end
            end
         end
      end
      for i,v in pairs(game:GetService("ReplicatedStorage").Unloaded:GetChildren()) do
         if v.Name == "Chests" then
            for i2,v2 in pairs(v:GetChildren()) do
               if string.find(v2.Name, "Chest") ~= nil then
                  local Esp = v:FindFirstChild("Esp")
                  if Esp  then
                     Esp:Destroy()
                  end
               end
            end
         end
      end
   end
   while getgenv().ChestESP and game:GetService("RunService").RenderStepped:wait(60) do
      for i,v in pairs(game.Workspace:GetDescendants()) do
         if v and getgenv().ChestESP then
            if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
               ESPO(v)
            end
         end
      end
      for i,v in pairs(game:GetService("ReplicatedStorage").Unloaded:GetChildren()) do
         if v.Name == "Chests" then
            for i2,v2 in pairs(v:GetChildren()) do
               if string.find(v2.Name, "Chest") ~= nil then
                  ESPO(v2)
               end
            end
         end
      end
   end
end)
if SecondSea then
   Esp:addToggle("Esp Flowers",false,function(Value)
      getgenv().FlowersESP = Value
      if not getgenv().FlowersESP then
         for i,v in pairs(game.Workspace:GetChildren()) do
            if v then
               if string.find(v.Name,"Flower") then
                  local Esp = v:FindFirstChild("Esp")
                  if v and Esp then
                     Esp:Destroy()
                  end
               end
            end
         end
      end
      while getgenv().FlowersESP and game:GetService("RunService").RenderStepped:wait(1) do
         for i,v in pairs(game.Workspace:GetChildren()) do
            game:GetService("RunService").RenderStepped:wait()
            if v and getgenv().FlowersESP then
               if string.find(v.Name,"Flower") then
                  ESPO(v)
               end
            end
         end
      end
   end)
end]]

Esp:addToggle("Esp Fruit",false,function(Value)
   getgenv().FruitESP = Value
   if not getgenv().FruitESP then
      for i,v in pairs(game.Workspace:GetChildren()) do
         if v then
            if string.find(v.Name,"Fruit") then
               local Esp = v.Handle:FindFirstChild("Esp")
               if v and v.Handle and Esp then
                  Esp:Destroy()
               end
            end
         end
      end
   end
   while getgenv().FruitESP and game:GetService("RunService").RenderStepped:wait(1) do
      for i,v in pairs(game.Workspace:GetChildren()) do
         game:GetService("RunService").RenderStepped:wait()
         if v and getgenv().FruitESP then
            if string.find(v.Name,"Fruit") then
               ESPF(v)
            end
         end
      end
   end
end)
Esp:addToggle("Esp Boss",false,function(Value)
   getgenv().MobESP = Value
   if not getgenv().MobESP then
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
         if v then
            if string.find(v.Name,"Boss") then
               local Esp = v.Head:FindFirstChild("Esp")
               if v and v.Head and Esp then
                  Esp:Destroy()
               end
            end
         end
      end
   end
   if getgenv().MobESP then
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
         if v and getgenv().MobESP then
            if string.find(v.Name,"Boss") then
               ESPMob(v)
            end
         end
      end
   end
   while getgenv().MobESP and game:GetService("RunService").RenderStepped:wait(5) do
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
         if v and getgenv().MobESP then
            if string.find(v.Name,"Boss") then
               ESPMob(v)
            end
         end
      end
   end
end)
local Webhook = MiscPage:addSection("Webhook(Soon)")
--Finished
local OpenUi = MiscPage:addSection("Ui")
OpenUi:addToggle("Server Timer",false,function(boolen)
   getgenv().ServerTimer = boolen
   if getgenv().ServerTimer then
      if not COREGUI:FindFirstChild("Clocker") then
         local function CreateInstance(cls,props)
         local inst = Instance.new(cls)
         for i,v in pairs(props) do
         inst[i] = v
         end
         return inst
         end
         
         local Clocker = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='Clocker', Parent=game.CoreGui})
         local background = CreateInstance('ImageLabel',{Image='rbxassetid://2851926732',ImageColor3=Color3.new(0.117647, 0.117647, 0.117647),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(12, 12, 12, 12),Active=false,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.0424528308, 0, 0.0470347628, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 70, 0, 28),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='background',Parent = Clocker})
         local timerlabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Timer',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 70, 0, 13),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='timerlabel',Parent = background})
         local timer = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='0:0:0',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0.535714269, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 70, 0, 13),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='timer',Parent = background})
         
         while wait()do
            local scripttime=game.Workspace.DistributedGameTime
            local seconds = scripttime%60
            local minutes = math.floor(scripttime/60%60)
            local hours = math.floor(scripttime/3600)
            local tempo = string.format("%.0f:%.0f:%.0f", hours ,minutes, seconds)
            timer.Text = tempo
         end
      else game.CoreGui:FindFirstChild("Clocker").Enabled = true
      end
   elseif game.CoreGui:FindFirstChild("Clocker") then
      game.CoreGui:FindFirstChild("Clocker").Enabled = false
   end
end)
OpenUi:addButton("Inventory Weapons Ui",function()
   game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Visible = true
end)
OpenUi:addButton("Inventory Fruits Ui",function()
   game:GetService("Players")["LocalPlayer"].PlayerGui.Main.FruitInventory.Visible = true
end)
OpenUi:addButton("Fruits Shop Ui",function()
   game:GetService("Players")["LocalPlayer"].PlayerGui.Main.FruitShop.Visible = true
end)
OpenUi:addButton("Title Ui",function()
   game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Titles.Visible = true
end)
OpenUi:addButton("Open Color",function()
   game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Colors.Visible = true
end)
OpenUi:addButton("Awakening Ui",function()
   game:GetService("Players")["LocalPlayer"].PlayerGui.Main.AwakeningToggler.Visible = true
end)
--Finished
local Useless = MiscPage:addSection("Useless Section")

Useless:addToggle("Rainbow Water",false,function(boolen) 

   getgenv().RainbowWater = boolen
   for i,v in pairs(game:GetService("Workspace").Camera:GetChildren()) do
      spawn(function()
         while wait() and getgenv().RainbowWater do
            v.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
         end
      end)
      if not getgenv().RainbowWater then
         v.Color = Color3.new(0.156863, 0.505882, 0.92549)
      end
   end
end)
Useless:addButton("Delete Tree",function() 
   for i,v in pairs(game.Workspace.Map:GetDescendants()) do
      if v.Name == "Tree" then
      v:Destroy()
      end
   end
end)
--Finished
local CodeSection = MiscPage:addSection("Codes Section")

CodeSection:addButton("Redeem All Exp Codes",function() 
   EnterCode("FUDD10")
   EnterCode("fudd10_v2")
   EnterCode("BIGNEWS")
   EnterCode("THEGREATACE")
   EnterCode("SUB2NOOBMASTER123")
   EnterCode("Sub2Daigrock")
   EnterCode("Axiore")
   EnterCode("TantaiGaming")
   EnterCode("STRAWHATMAINE")
   EnterCode("Sub2OfficialNoobie")
   EnterCode("UPD16")
   EnterCode("SUB2GAMERROBOT_EXP1")
   EnterCode("3BVISITS")
   EnterCode("Enyu_is_Pro")
   EnterCode("Sub2Fer999")
   EnterCode("Bluxxy")
   EnterCode("JCWK")
   EnterCode("Magicbus")
   EnterCode("Starcodeheo")
end)
--Finished
CodeSection:addDropdown("Redeem Reset Stats Code",{"SUB2GAMERROBOT_RESET1";"Sub2UncleKizaru";},function(Value) 
   EnterCode(Value)
end)
--Need Rework
local Shop = lib:addPage("Shop")

local ShopEvent = Shop:addSection("Event-Fragments")
ShopEvent:addButton("Buy Stats Refund (2500 Fragment)",function()

   local args = {[1] = "BlackbeardReward",[2] = "Refund",[3] = "1"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {[1] = "BlackbeardReward",[2] = "Refund",[3] = "2"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end)

ShopEvent:addButton("Buy Random Race",function()
   wait(.1)
   local args = {[1] = "BlackbeardReward",[2] = "Reroll",[3] = "2"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopEvent:addButton("Buy Surprise",function()
   local args = {
      [1] = "Bones",
      [2] = "Check"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {
      [1] = "Bones",
      [2] = "Buy",
      [3] = 1,
      [4] = 1
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

ShopEvent:addToggle("Auto Buy Surprise",false,function(v)
   AutoBuyBone = v
   while AutoBuyBone do
      local args = {
         [1] = "Bones",
         [2] = "Check"
      }
      if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) >= 50 then

         local args = {
            [1] = "Bones",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end
end)      


local Melee = Shop:addSection("Fighting Styles")

Melee:addButton("Dark Step",function()
	local args = {
		[1] = "BuyBlackLeg"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Melee:addButton("Electro",function()
	local args = {
	   [1] = "BuyElectro"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)

 Melee:addButton("Water Kung Fu",function()
	local args = {
	   [1] = "BuyFishmanKarate"
	}
	
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)

 Melee:addButton("Dragon Breath",function()
	local args = {
	   [1] = "BlackbeardReward",
	   [2] = "DragonClaw",
	   [3] = "1"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
	   [1] = "BlackbeardReward",
	   [2] = "DragonClaw",
	   [3] = "2"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)

 Melee:addButton("Superhuman",function()
	local args = {
	   [1] = "BuySuperhuman"
	}
	
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)

 Melee:addButton("Death Step",function()
	local args = {
	   [1] = "BuyDeathStep"
	}
	
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)

 Melee:addButton("Sharkman Karate",function()
	local args = {
	   [1] = "BuySharkmanKarate",
	   [2] = true
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
	   [1] = "BuySharkmanKarate"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)
 Melee:addButton("Electric Claw",function()
   local args = {[1] = "BuyElectricClaw"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)
 Melee:addButton("Dragon Tailon",function()

local args = {
   [1] = "BuyDragonTalon",
   [2] = true
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
  [1] = "BuyDragonTalon"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

 end)


 local Abilities = Shop:addSection("Abilities")

 Abilities:addButton("Skyjump",function()
   local args = {
     [1] = "BuyHaki",
     [2] = "Geppo"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)

 Abilities:addButton("Enhancement",function()
   local args = {
     [1] = "BuyHaki",
     [2] = "Buso"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end)

Abilities:addButton("Flash Step",function()
   local args = {[1] = "BuyHaki",[2] = "Soru"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Abilities:addButton("Ken",function()
   local args = {[1] = "KenTalk",[2] = "Buy"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
wait()

local Sword = Shop:addSection("Swords")
Sword:addButton("Katana",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Katana"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Sword:addButton("Cutlass",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Cutlass"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   
end)
Sword:addButton("Dual Katana",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Dual Katana"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Sword:addButton("Iron Mace",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Iron Mace"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Sword:addButton("Triple Katana",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Triple Katana"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Sword:addButton("Pipe",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Pipe"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Sword:addButton("Dual-Headed Blade",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Dual-Headed Blade"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Sword:addButton("Bisento",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Bisento"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)



Sword:addButton("Soul Cane",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Soul Cane"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Sword:addButton("Midnight Blade",function()
   local args = {
      [1] = "Ectoplasm",
      [2] = "Buy",
      [3] = 3
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   
end)
Sword:addButton("True Triple Katana",function()
   local args = {
      [1] = "MysteriousMan",
      [2] = "1"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   wait()
   local args = {
      [1] = "MysteriousMan",
      [2] = "2"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   
end)

local Accessories = Shop:addSection("Accessories")

Accessories:addButton("Black Cape",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Black Cape"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Accessories:addButton("Swordsman Hat",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Swordsman Hat"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Accessories:addButton("Tomoe Ring",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Tomoe Ring"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end)
Accessories:addButton("Ghoul Mask",function()
   local args = {
      [1] = "Ectoplasm",
      [2] = "Buy",
      [3] = 2
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   
end)

local Gun = Shop:addSection("Gun")


Gun:addButton("Slingshot",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Slingshot"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Gun:addButton("Musket",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Musket"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Gun:addButton("Flintlock",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Flintlock"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   
end)

Gun:addButton("Refined Slingshot",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Refined Slingshot"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Gun:addButton("Cannon",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Cannon"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Gun:addButton("Kabucha",function()
   local args = {
      [1] = "BlackbeardReward",
      [2] = "Slingshot",
      [3] = "2"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   
end)

Gun:addButton("Bizarre Rifle",function()
   local args = {
      [1] = "Ectoplasm",
      [2] = "Buy",
      [3] = 1
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local Special = Shop:addSection("Special")
Special:addButton("Buy All Tools",function()
   local args = {
      [1] = "BuyItem",
      [2] = "Slingshot"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BuyItem",
      [2] = "Musket"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BuyItem",
      [2] = "Flintlock"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   

   local args = {
      [1] = "BuyItem",
      [2] = "Refined Slingshot"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {
      [1] = "BuyItem",
      [2] = "Cannon"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BlackbeardReward",
      [2] = "Slingshot",
      [3] = "2"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   

   local args = {
      [1] = "Ectoplasm",
      [2] = "Buy",
      [3] = 1
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {
      [1] = "BuyItem",
      [2] = "Black Cape"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {
      [1] = "BuyItem",
      [2] = "Swordsman Hat"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {
      [1] = "BuyItem",
      [2] = "Tomoe Ring"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {
      [1] = "Ectoplasm",
      [2] = "Buy",
      [3] = 2
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BuyItem",
      [2] = "Katana"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BuyItem",
      [2] = "Cutlass"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   
   local args = {
      [1] = "BuyItem",
      [2] = "Dual Katana"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BuyItem",
      [2] = "Iron Mace"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BuyItem",
      [2] = "Triple Katana"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {
      [1] = "BuyItem",
      [2] = "Pipe"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BuyItem",
      [2] = "Dual-Headed Blade"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BuyItem",
      [2] = "Bisento"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))



   local args = {
      [1] = "BuyItem",
      [2] = "Soul Cane"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {
      [1] = "Ectoplasm",
      [2] = "Buy",
      [3] = 3
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "BuyHaki",
      [2] = "Geppo"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {
      [1] = "BuyHaki",
      [2] = "Buso"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {[1] = "BuyHaki",[2] = "Soru"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

   local args = {[1] = "KenTalk",[2] = "Buy"}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   local args = {
      [1] = "MysteriousMan",
      [2] = "1"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   wait()
   local args = {
      [1] = "MysteriousMan",
      [2] = "2"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   
end)
--Need Rework
local Setting = lib:addPage("Setting")
--Setting:addSection("File Is Located In pathtoKrnl/workspace/Island/IslandSetting")

local AutofarmSetting = Setting:addSection("AutoFarm Setting")
AutofarmSetting:addToggle("Auto Farm Quest",getgenv().AutoFarmQuest,function(boolen)
    getgenv().AutoFarmQuest = boolen
end)
AutofarmSetting:addToggle("Auto Farm Bring Mob",getgenv().AutoFarmBring,function(boolen)
   getgenv().AutoFarmBring = boolen
end)
AutofarmSetting:addToggle("Auto Farm Set Spawn",getgenv().AutoSetSpawn,function(boolen)
   getgenv().AutoSetSpawn = boolen
end)
--[[AutofarmSetting:addToggle("Auto Farm Safe Mode(Doesn't Work)",getgenv().AutoSetSpawn,function(boolen)
   getgenv().AutoFarmSafeMode = boolen

end)
AutofarmSetting:addSlider("Safe Mode Health (%)",getgenv().AutoFarmHealthSafeMode,0,100,function(Value)
   getgenv().AutoFarmHealthSafeMode = Value
end)
AutofarmSetting:addToggle("Fast Attack(Risk As Hell If you use this to autofarm)",getgenv().FastAttack,function(boolen)
   getgenv().FastAttack = boolen
end)]]

local AutofarmFruitSetting = Setting:addSection("AutoFarm Fruit Mastery Setting")
AutofarmSetting:addButton("Auto Farm Mastery Fruit Info",function()
   lib:Notify("Auto Farm Mastery","10 in Slider = 1s Hold Time")
end)
AutofarmFruitSetting:addToggle("Skill Z",getgenv().SkillZ,function(Value)
   getgenv().SkillZ = Value
end)
AutofarmFruitSetting:addSlider("Skill Z Hold Time ",getgenv().SkillZHold,0,40,function(Value)
   getgenv().SkillZHold = Value
end)
AutofarmFruitSetting:addToggle("Skill X",getgenv().SkillX,function(Value)
   getgenv().SkillX = Value
end)
AutofarmFruitSetting:addSlider("Skill X Hold Time",getgenv().SkillXHold,0,40,function(Value)
   getgenv().SkillXHold = Value
end)
AutofarmFruitSetting:addToggle("Skill C",getgenv().SkillC,function(Value)
   getgenv().SkillC = Value
end)
AutofarmFruitSetting:addSlider("Skill C Hold Time",getgenv().SkillCHold,0,40,function(Value)
   getgenv().SkillCHold = Value
end)
AutofarmFruitSetting:addToggle("Skill V",getgenv().SkillV,function(Value)
   getgenv().SkillV = Value
end)
AutofarmFruitSetting:addSlider("Skill V Hold Time",getgenv().SkillVHold,0,40,function(Value)
   getgenv().SkillVHold = Value
end)
AutofarmFruitSetting:addToggle("Skill F",getgenv().SkillF,function(Value)
   getgenv().SkillF = Value
end)
AutofarmFruitSetting:addSlider("Skill F Hold Time",getgenv().SkillFHold,0,40,function(Value)
   getgenv().SkillFHold = Value
end)
local AutofarmGunSetting = Setting:addSection("AutoFarm Gun Mastery Setting")
AutofarmGunSetting:addToggle("Skill Z",getgenv().SkillZGun,function(Value)
   getgenv().SkillZGun = Value
end)
AutofarmGunSetting:addToggle("Skill X",getgenv().SkillXGun,function(Value)
   getgenv().SkillXGun = Value
end)
local TweenSetting = Setting:addSection("Tween Setting")
TweenSetting:addToggle("Use Recommended Speed",getgenv().RecommendedSpeed,function(boolen)
   getgenv().RecommendedSpeed = boolen
end)
TweenSetting:addSlider("Auto Farm Tween Speed",getgenv().TweenSpeedAutoFarm,100,1000,function(Value)
   getgenv().TweenSpeedAutoFarm = Value
end)
TweenSetting:addSlider("Quest Tween Speed",getgenv().TweenSpeedQuest,100,1000,function(Value)
   getgenv().TweenSpeedQuest = Value
end)
TweenSetting:addSlider("Teleport Place Tween Speed",getgenv().TweenSpeedTeleportPlace,100,1000,function(Value)
   getgenv().TweenSpeedTeleportPlace = Value
end)
TweenSetting:addSlider("Auto Chest Tween Speed",getgenv().TweenSpeedAutoChest,100,1000,function(Value)
   getgenv().TweenSpeedAutoChest = Value
end)
local RaidSetting = Setting:addSection("Raid Setting")
RaidSetting:addToggle("Only Teleport To Your Raid",getgenv().NearNextIsland,function(boolen)
   getgenv().NearNextIsland = boolen
end)
local AbilitySetting = Setting:addSection("Ability Setting")
AbilitySetting:addToggle("Auto Buso",getgenv().AutoBuso,function(boolen)
   getgenv().AutoBuso = boolen
end)
AbilitySetting:addToggle("Auto Observation",getgenv().AutoObservation,function(boolen)
    getgenv().AutoObservation = boolen
    while getgenv().AutoObservation and wait() do
      if LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
      else 
         wait()
         VirtualUser:CaptureController()
         VirtualUser:SetKeyDown('0x65')
         wait()
         VirtualUser:SetKeyUp('0x65')
      end
    end
end)
local UISetting = Setting:addSection("UI Setting")



for Setting, color in pairs(themes) do
	UISetting:addColorPicker(Setting, color, function(color3)
		lib:setTheme(Setting, color3)
	end)
end
UISetting:addButton("Save Setting",function()
   SaveSetting()
end)
--Finished
local GameServer = lib:addPage("Game-SV")
Server = GameServer:addSection("Server")

Server:addSlider("Server Players",ServerPlayers,1,12,function(Value)
   ServerPlayers = Value
end)
Server:addButton("Server Hop With Selected Server Players",function()
   LowestServer()
   lib:Notify("Server Hop","Done Searching : No Server Found") 
end)
Server:addButton("Server Hop(Charwar)",function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/CharwarServerHop.lua"))()
end)
Server:addButton("Find Lowest Players Server(Amnesia)",function()
   loadstring(game:HttpGet("hhttps://raw.githubusercontent.com/vinhuchi/Island_Game/main/AmnesiaServerHop.lua"))()
end)
Server:addButton("Server Hop 2(Don't Support Synx But Better)",function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/ServerHop.lua"))()
end)
Server:addButton("Find Lowest Players Server 2(Don't Support Synx But Better)",function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/UniversalLowServerHop.lua"))()
end)
Server:addButton("Set Clip Board JobId(Server Id)",function()
   setclipboard(game.JobId)
end)
Server:addTextbox("Join Server With JobId(Current Sea)","Your Server Id Here(JobId)",function(Value)
   local JobId = tostring(Value)
   game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, JobId, LP)
end)
Server:addButton("Rejoin",function()
   game:GetService("TeleportService"):Teleport(game.PlaceId, LP)
end)
GameSection = GameServer:addSection("Game")

GameSection:addButton("Delete Ui",function()
   local ui = game:GetService("CoreGui"):FindFirstChild("Island v2")
   if ui then
      ui:Destroy()
   end
end)
GameSection:addButton("Copy Discord Server Link",function()
   setclipboard("https://discord.gg/p2G3mXxfkA")
end)
GameSection:addButton("Join Discord Server",function()
   if req then
      req({
         Url = 'http://127.0.0.1:6463/rpc?v=1',
         Method = 'POST',
         Headers = {
            ['Content-Type'] = 'application/json',
            Origin = 'https://discord.com'
         },
         Body = HttpService:JSONEncode({
            cmd = 'INVITE_BROWSER',
            nonce = HttpService:GenerateGUID(false),
            args = {code = 'p2G3mXxfkA'}
         })
      })
   end
end)
local RTXmode = {
   "Autumn";
   "Summer";
   "Summer2";
}
GameSection:addDropdown("RTX mode",RTXmode,function(Value)
   getgenv().mode = Value
end)

GameSection:addButton("RTX Graphic(Client)",function()
    lib:Notify("RTX Graphic","Credit To Switchblades")
    if getgenv().mode == "Summer2" then
        local yep = game.Lighting
        local yep2 = Instance.new("Sky")
        local yep3 = Instance.new("BloomEffect")
        local yep4 = Instance.new("BlurEffect")

        yep2.Parent = yep
        yep2.MoonTextureId = "rbxasset://sky/moon.jpg"
        yep2.SkyboxBk = "http://www.roblox.com/asset?id=153258865"
        yep2.SkyboxDn = "http://www.roblox.com/asset?id=153259937"
        yep2.SkyboxFt = "http://www.roblox.com/asset?id=153258844"
        yep2.SkyboxLf = "http://www.roblox.com/asset?id=153258851"
        yep2.SkyboxRt = "http://www.roblox.com/asset?id=153258851"
        yep2.SkyboxUp = "http://www.roblox.com/asset?id=153259943"
        yep2.StarCount = 3000
        yep2.SunAngularSize = 21
        yep2.SunTextureId = "rbxasset://sky/sun.jpg"

        yep3.Parent = yep
        yep3.Intensity = 1
        yep3.Size = 24
        yep3.Threshold = 0.5
        yep3.Enabled = true

        yep4.Parent = yep
        yep4.Enabled = true
        yep4.Size = 5.5
        return
    end
    local a = game.Lighting
    a.TimeOfDay = 20
    a.Ambient = Color3.fromRGB(33, 33, 33)
    a.Brightness = 6.67
    a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
    a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
    a.EnvironmentDiffuseScale = 0.105
    a.EnvironmentSpecularScale = 0.522
    a.GlobalShadows = true
    a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
    a.ShadowSoftness = 0.04
    a.GeographicLatitude = -15.525
    a.ExposureCompensation = 0.75

    local b = Instance.new("BloomEffect", a)
    b.Enabled = true
    b.Intensity = 0.04
    b.Size = 1900
    b.Threshold = 0.915

    local c = Instance.new("ColorCorrectionEffect", a)
    c.Brightness = 0.176
    c.Contrast = 0.39
    c.Enabled = true
    c.Saturation = 0.2
    c.TintColor = Color3.fromRGB(217, 145, 57)
    if getgenv().mode == "Summer" then
        c.TintColor = Color3.fromRGB(255, 220, 148)
    elseif getgenv().mode == "Autumn" then
        c.TintColor = Color3.fromRGB(217, 145, 57)
    else
        lib:Notify("RTX mode","No mode selected!")
        lib:Notify("RTX mode","Please select a mode")
        b:Destroy()
        c:Destroy()
    end

    local d = Instance.new("DepthOfFieldEffect", a)
    d.Enabled = true
    d.FarIntensity = 0.077
    d.FocusDistance = 21.54
    d.InFocusRadius = 20.77
    d.NearIntensity = 0.277

    local e = Instance.new("ColorCorrectionEffect", a)
    e.Brightness = 0
    e.Contrast = -0.07
    e.Saturation = 0
    e.Enabled = true
    e.TintColor = Color3.fromRGB(255, 247, 239)

    local e2 = Instance.new("ColorCorrectionEffect", a)
    e2.Brightness = 0.2
    e2.Contrast = 0.45
    e2.Saturation = -0.1
    e2.Enabled = true
    e2.TintColor = Color3.fromRGB(255, 255, 255)

    local s = Instance.new("SunRaysEffect", a)
    s.Enabled = true
    s.Intensity = 0.0
    s.Spread = 0.146
end)

GameSection:addButton("FPS Boost",function()
   lib:Notify("Fps Boost","Credit to e621 and mothra#4150")

   if not game['Loaded'] or not game:GetService('Players')['LocalPlayer'] then
      game['Loaded']:Wait();
      game:WaitForChild(game:GetService('Players'));
      game:GetService('Players'):WaitForChild(game:GetService('Players').LocalPlayer.Name)
   end   
  
  --// Physics Settings
  settings().Physics.PhysicsEnvironmentalThrottle = 1
  settings().Rendering.QualityLevel = 'Level01'
  -- Comment line 7 if you want to be able to hear your game, keep it the same if you're using it for bots.
  
  
  
  --// Physical/UI Derender
  for _, v in next, game:GetDescendants() do
      if v:IsA('Workspace') then
          v.Terrain.Elasticity = 0
          v.Terrain.WaterWaveSize = 0
          v.Terrain.WaterWaveSpeed = 0
          v.Terrain.WaterReflectance = 0
          v.Terrain.WaterTransparency = 1
      elseif v:IsA('Lighting') then
          v.GlobalShadows = false
          v.FogEnd = 1/0
          v.Brightness = 0
      elseif v:IsA('Decal') or v:IsA('Texture')  then
          v.Transparency = 1
      elseif v:IsA('Fire') or v:IsA('SpotLight') or v:IsA('Smoke') or v:IsA('Sparkles') then
          v.Enabled = false
      elseif v:IsA('SpecialMesh') then
          v.TextureId = ''
          v.MeshId = ''
      elseif v:IsA('ParticleEmitter') or v:IsA('Trail') then
          v.Lifetime = NumberRange.new(0)
      elseif v:IsA('BlurEffect') or v:IsA('SunRaysEffect') or v:IsA('ColorCorrectionEffect') or v:IsA('BloomEffect') or v:IsA('DepthOfFieldEffect')  then
          v.Enabled = false
      elseif (v:IsA('BasePart') or v:IsA("Union") or v:IsA("CornerWedgePart")) and not v:IsA('MeshPart') then
          v.Reflectance = 0
          v.Material = 'SmoothPlastic'
      elseif v:IsA('Pants') or v:IsA('Shirt') then
          v[v.ClassName..'Template'] = ''
      elseif v:IsA('Explosion') then
          v.BlastPressure = 0
          v.BlastRadius = 0
          v.Visible = false
          v.Position = Vector3.new(0, 0, 0)
      elseif v:IsA('ForceField') then
          v.Visible = false
      elseif v:IsA('ShirtGraphic') then
          v.Graphic = ''
      elseif v:IsA('MeshPart') then
          v.MeshId = ''
          v.TextureID = ''
          v.Reflectance = 0
          v.Material = 'SmoothPlastic'
      elseif v:IsA('CharacterMesh') then
          v.BaseTextureId = ''
          v.MeshId = ''
          v.OverlayTextureId = ''
      end
  end
  
  local WorkspaceChildAdded;WorkspaceChildAdded = workspace.DescendantAdded:Connect(function(v)
      wait()
      if v:IsA('Model') then
      elseif v:IsA('Decal') or v:IsA('Texture')  then
          v.Transparency = 1
      elseif v:IsA('Fire') or v:IsA('SpotLight') or v:IsA('Smoke') or v:IsA('Sparkles') then
          v.Enabled = false
      elseif v:IsA('SpecialMesh') then
          v.TextureId = ''
          v.MeshId = ''
      elseif v:IsA('ParticleEmitter') or v:IsA('Trail') then
          v.Lifetime = NumberRange.new(0)
      elseif v:IsA('BlurEffect') or v:IsA('SunRaysEffect') or v:IsA('ColorCorrectionEffect') or v:IsA('BloomEffect') or v:IsA('DepthOfFieldEffect')  then
          v.Enabled = false
      elseif v:IsA('BasePart') and not v:IsA('MeshPart') then
          v.Reflectance = 0
          v.Material = 'SmoothPlastic'
      elseif v:IsA('Pants') or v:IsA('Shirt') then
          v[v.ClassName..'Template'] = ''
      elseif v:IsA('Explosion') then
          v.BlastPressure = 0
          v.BlastRadius = 0
          v.Visible = false
          v.Position = Vector3.new(0, 0, 0)
      elseif v:IsA('ForceField') then
          v.Visible = false
      elseif v:IsA('ShirtGraphic') then
          v.Graphic = ''
      elseif v:IsA('MeshPart') then
          v.MeshId = ''
          v.TextureID = ''
          v.Reflectance = 0
          v.Material = 'SmoothPlastic'
      elseif v:IsA('CharacterMesh') then
          v.BaseTextureId = ''
          v.MeshId = ''
          v.OverlayTextureId = ''
      end
  end)
   game.Lighting.ChildAdded:Connect(function(v)
      if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
         v.Enabled = false
      end
   end)
end)
spawn(function()
    wait(10)
    while wait() do
        if getgenv().Executed then
            Fly = false
            break
        end
    end
end)
GameSection:addButton("Remove 3D render(For Multi Acc Farming)",function()
   game:GetService("RunService"):Set3dRenderingEnabled(false)
end)

GameSection:addButton("Auto All Boss Hop",function()
   getgenv().AutoAllBossHop = true
   getgenv().AutoAllBoss = true
   queue_on_teleport([[
      repeat wait(1)
      until game:IsLoaded()
      repeat wait(1)
      until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
      getgenv().AutoAllBossHop = true
      getgenv().AutoAllBoss = true
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
   ]])
end)
GameSection:addButton("Auto Observation Farm Hop",function()
   getgenv().ObservationFarm = true
   getgenv().ObservationFarmHop = true
   queue_on_teleport([[
      repeat wait(1)
      until game:IsLoaded()
      repeat wait(1)
      until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
      getgenv().ObservationFarm = true
      getgenv().ObservationFarmHop = true
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
   ]])
end)
GameSection:addButton("Auto Chest Hop",function()
   getgenv().AutoChest = true
   getgenv().AutoChestHop = true
   queue_on_teleport([[
      repeat wait(1)
      until game:IsLoaded()
      repeat wait(1)
      until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
      getgenv().AutoChest = true
      getgenv().AutoChestHop = true
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Islandv2.lua'),true))()
   ]])
end)

local MusicPage = lib:addPage("Music")
local MusicSection = MusicPage:addSection("Music Section")
if getmusicasset then
   pcall(function()
      MusicSection:addTextbox("Enter Id Music","Id Here",function(Value)
   if Value ~= nil or Value ~= "" then
      SongID = "rbxassetid://"..Value
   end
end)

MusicSection:addButton("Play Music",function()
   if not LP.PlayerGui:FindFirstChild("Song") then
      newSong = Instance.new("Sound")
      newSong.Name = "Song"
      newSong.SoundId = SongID
      wait(1)
      newSong.Parent = LP.PlayerGui
      wait(1)
      newSong:Play()   
   else 
      LP.PlayerGui:FindFirstChild("Song").SoundId = SongID
      LP.PlayerGui:FindFirstChild("Song"):Play()  
   end  
end)
MusicSection:addButton("Stop Music",function()
   LP.PlayerGui:FindFirstChild("Song"):Stop()      
end)
local allurlsong = {
   ["hi2.mp3"] = "Hitorigoto",
   ["RockefellerStreet.mp3"] = "Rockefeller Street",
   ["RenaiCirculation.mp3"] = "Renai Circulation",
   ["kiepduyenkothanh.mp3"] = "Kiep Duyen Khong Thanh", -- Kiếp duyên không thành
   ["gaclaiaulo.mp3"] = "gac lai au lo", -- Gác lại âu lo
   ["keobonggon.mp3"] = "keo bong gon", -- Kẹo bông gòn
   ["racingintothenight.mp3"] = "racing into the night"
}
local NotDefaultSong = {}
MusicSection:addDropdown("Select Music(Not Roblox Id)",allurlsong,function(Value)
   if Value ~= nil or Value ~= "" then
      SelectedSong = Value
      DefaultSong = false
      if isfolder("Island") then   
         for i2,v2 in pairs(allurlsong) do
            if v2 == SelectedSong then
               savedurlsong = i2
               DefaultSong = true
            end
         end 
         if not isfile("Island/"..savedurlsong) and DefaultSong then
            local url= game:HttpGet("https://www.mboxdrive.com/"..savedurlsong)
            writefile("Island/"..savedurlsong, url)
            repeat wait() until isfile("Island/"..savedurlsong)
         end
         local sound = Instance.new("Sound",workspace)
         if game.Workspace:FindFirstChild(SelectedSong) then
            local abcd = game.Workspace:FindFirstChild(SelectedSong)
            abcd:Destroy()
         end
         wait()
         sound.Name = SelectedSong

         sound.SoundId = getmusicasset("Island/"..savedurlsong)
         sound.Volume = 1

      elseif makefolder then
         makefolder("Island")  
      end
   end
end)

MusicSection:addButton("Play Music",function() 
   local sound = game.Workspace:FindFirstChild(SelectedSong)
   if sound then
      sound:Play()
      sound.Ended:Connect(function()
         sound:Destroy()
      end)
   end
end)
MusicSection:addButton("Stop Music",function()  
   local sound = game.Workspace:FindFirstChild(SelectedSong)
   if sound then
      sound:Stop()
   end   
end)
spawn(function()
   while wait() do
      if isfolder("Island") then
         for i,v in pairs(listfiles("Island/")) do
            FixedStringSong = v:gsub("Island/","")
            DefaultSong = false
            for i2,v2 in pairs(allurlsong) do
               if FixedStringSong == v2..".mp3" then
                  DefaultSong = true
               end
            end
            if not DefaultSong and not table.find(NotDefaultSong,FixedStringSong)then
               table.insert(NotDefaultSong,FixedStringSong)
            end
         end
      end
   end
end)
MusicSection:addTextLabel("Add Music To PathKrnl/workspace/Island/")
MusicSection:addDropdown("Select Music(Not Default)",NotDefaultSong,function(Value)
   SelectedMusic2 = Value
   local sound = Instance.new("Sound",workspace)
   wait()
   sound.Name = SelectedMusic2

   sound.SoundId = getmusicasset("Island/"..SelectedMusic2)
   sound.Volume = 1
end)
MusicSection:addButton("Play Music",function() 
   local sound = game.Workspace:FindFirstChild(SelectedMusic2)
   if sound then
      sound:Play()
      sound.Ended:Connect(function()
         sound:Destroy()
      end)
   end
end)
MusicSection:addButton("Stop Music",function()  
   local sound = game.Workspace:FindFirstChild(SelectedMusic2)
   if sound then
      sound:Stop()
   end   
end)
end)

end

local KeyBindPage = lib:addPage("Keybind")
local KeyBindSection= KeyBindPage:addSection("Keybind Section")
KeyBindSection:addKeybind("Stop Tweening", Enum.KeyCode.P, function()
   local info = TweenInfo.new(0,Enum.EasingStyle.Linear)
   local tween =  game:service"TweenService":Create(getRoot(LP.Character), info, {CFrame = getRoot(LP.Character).CFrame})
   getRoot(LP.Character).Anchored = true
   tween:Play()
   tween:Cancel()
   getRoot(LP.Character).Anchored = false
end)
KeyBindSection:addKeybind("Hide UI", Enum.KeyCode.RightControl, function()
   lib:toggle()
end, function()
end)

if getgenv().CheckStats then
   spawn(function()
      while wait(1) do
         if SecondSea then
            if CheckEctoplasm ~= nil then
               AutoFarmEvent:updateTextLabel(CheckEctoplasm,"Ectoplasm:"..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Check"))
            end
            if CheckFactory ~= nil then
               if game.Workspace.Enemies:FindFirstChild("Core") then
                  AutoFarmEvent:updateTextLabel(CheckFactory,"Factory: Spawned")
               else
                  AutoFarmEvent:updateTextLabel(CheckFactory,"Factory: Not Spawned")
               end
            end
         end
         AutoStuffs:updateTextLabel(CheckKenHaki,"Ken Exp:"..game:GetService("Players")["LocalPlayer"].VisionRadius.Value)
         if ThirdSea then  
            if CheckDimension ~= nil then
               local NumberKill1 = string.gsub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true), "%D", "")
               if NumberKill1 ~= nil and tonumber(NumberKill1) ~= nil then 
                  local NumberKill2 = tonumber(NumberKill1) -500
                  if NumberKill2 ~= nil then
                     AutoFarmEvent:updateTextLabel(CheckDimension,"Dimension:"..math.abs(NumberKill2).." kills")
                  end
               else
                  AutoFarmEvent:updateTextLabel(CheckDimension,"Dimension: 500 kills")
               end
            end
            if CheckKillElite ~= nil then
               AutoFarmEvent:updateTextLabel(CheckKillElite,"Elite Kill:"..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
            end
            if CheckBone ~= nil then
               local CheckBoneValue = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
               if CheckBoneValue ~= nil or CheckBoneValue ~= 0 then
                  AutoFarmEvent:updateTextLabel(CheckBone,"Bones:"..ReplStorage.Remotes.CommF_:InvokeServer("Bones","Check"))
               end
            end
         end
      end
   end)
end
--[[
ListMelee = {
   "Combat",
   "Black Leg";
   "Electro";
   "Fishman Karate";
   "Dragon Claw";
   "Superhuman";
   "DeathStep";
   "SharkmanKarate";
   "Electric Claw";
   "Dragon Tailon";
}
function CheckSpawn()
   if FirstSea then
      if HighestLvToFarm == 0 then
         SpawnPoint = "Default"
         SpawnCFrame = CFrame.new(977.038269, 16.5166149, 1420.94336, 0.97796452, 0, -0.208771184, -0, 1, -0, 0.208771184, 0, 0.97796452)
      elseif HighestLvToFarm == 10 then
         SpawnPoint = "Jungle"
         SpawnCFrame = CFrame.new(-1332.1394, 11.8529119, 492.35907, -0.774900496, -1.23768311e-08, 0.632082939, 1.77851245e-08, 1, 4.13846735e-08, -0.632082939, 4.33106848e-08, -0.774900496)
      elseif HighestLvToFarm == 15 then
         SpawnCFrame = CFrame.new(-1332.1394, 11.8529119, 492.35907, -0.774900496, -1.23768311e-08, 0.632082939, 1.77851245e-08, 1, 4.13846735e-08, -0.632082939, 4.33106848e-08, -0.774900496)
         SpawnPoint = "Jungle"
      elseif HighestLvToFarm == 30 then  
         SpawnCFrame = CFrame.new(-1186.37769, 4.75154591, 3810.49243, 0.508615494, 0, -0.860993803, -0, 1, -0, 0.860993803, 0, 0.508615494)
         SpawnPoint = "Pirate"
      elseif HighestLvToFarm == 40 then
         SpawnCFrame = CFrame.new(-1186.37769, 4.75154591, 3810.49243, 0.508615494, 0, -0.860993803, -0, 1, -0, 0.860993803, 0, 0.508615494)
         SpawnPoint = "Pirate"
      elseif HighestLvToFarm == 60 then
         SpawnPoint = "Desert"
         SpawnCFrame = CFrame.new(917.85199, 3.37914562, 4114.66895, 0.203889921, -7.29310585e-08, 0.978993833, -8.66312355e-09, 1, 7.63001538e-08, -0.978993833, -2.40379769e-08, 0.203889921)
      elseif HighestLvToFarm == 75 then
         SpawnPoint = "Desert"
         SpawnCFrame = CFrame.new(917.85199, 3.37914562, 4114.66895, 0.203889921, -7.29310585e-08, 0.978993833, -8.66312355e-09, 1, 7.63001538e-08, -0.978993833, -2.40379769e-08, 0.203889921)
      elseif HighestLvToFarm == 90 then
         SpawnPoint = "Ice"
         SpawnCFrame = CFrame.new(1107.42444, 7.3035593, -1164.79614, 0.548184574, -8.23326758e-08, 0.836357415, 4.65359591e-08, 1, 6.79403129e-08, -0.836357415, 1.67686287e-09, 0.548184574)
      
      elseif HighestLvToFarm == 100 then
         SpawnPoint = "Ice"
         SpawnCFrame = CFrame.new(1107.42444, 7.3035593, -1164.79614, 0.548184574, -8.23326758e-08, 0.836357415, 4.65359591e-08, 1, 6.79403129e-08, -0.836357415, 1.67686287e-09, 0.548184574)
      elseif HighestLvToFarm == 120 then
         SpawnPoint = "MarineBase"
         SpawnCFrame = CFrame.new(-4922.20264, 41.2520523, 4424.44434, -0.488673091, -2.20081375e-08, 0.872467041, 1.13403127e-08, 1, 3.15769455e-08, -0.872467041, 2.53248498e-08, -0.488673091)
      elseif HighestLvToFarm == 150 then
 
         SpawnPoint = "Sky"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
      elseif HighestLvToFarm == 175 then
         
         SpawnPoint = "Sky"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
      elseif HighestLvToFarm == 250 then
         

         SpawnPoint = "Colosseum"
         SpawnCFrame = CFrame.new(-1393.48926, 7.28934002, -2842.57324, -0.998255789, 6.55446408e-09, 0.0590373725, 6.72640565e-09, 1, 2.7136855e-09, -0.0590373725, 3.10606163e-09, -0.998255789)
      elseif HighestLvToFarm == 275 then
         
         SpawnPoint = "Colosseum"
         SpawnCFrame = CFrame.new(-1393.48926, 7.28934002, -2842.57324, -0.998255789, 6.55446408e-09, 0.0590373725, 6.72640565e-09, 1, 2.7136855e-09, -0.0590373725, 3.10606163e-09, -0.998255789)
      elseif HighestLvToFarm == 300  then

         SpawnPoint = "Magma"
         SpawnCFrame = CFrame.new(-5226.26416, 8.59022045, 8472.14844, 0.506667018, 0, -0.862141788, -0, 1, -0, 0.862141907, 0, 0.506666958)

      elseif HighestLvToFarm == 325 then
         SpawnPoint = "Magma"
         SpawnCFrame = CFrame.new(-5226.26416, 8.59022045, 8472.14844, 0.506667018, 0, -0.862141788, -0, 1, -0, 0.862141907, 0, 0.506666958)


      elseif HighestLvToFarm == 375 then
         
      
      elseif HighestLvToFarm == 400 then
         
      elseif HighestLvToFarm == 450 then

         
         SpawnPoint = "Sky"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
      elseif HighestLvToFarm == 475  then

         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)

      elseif HighestLvToFarm == 525  then

         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)

      elseif HighestLvToFarm == 550  then
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
      elseif HighestLvToFarm == 625  then

         SpawnPoint = "Fountain"
         SpawnCFrame = CFrame.new(5187.77197, 38.5011406, 4141.60791, 0.779290736, 0, 0.626662672, -0, 1.00000012, -0, -0.626662731, 0, 0.779290617)
      elseif HighestLvToFarm == 650 then
         SpawnPoint = "Fountain"
         SpawnCFrame = CFrame.new(5187.77197, 38.5011406, 4141.60791, 0.779290736, 0, 0.626662672, -0, 1.00000012, -0, -0.626662731, 0, 0.779290617)

      end
   elseif SecondSea then
      if HighestLvToFarm == 700  then
         SpawnCFrame = CFrame.new(-32.1582031, 29.2783928, 2766.5874, 0.999908745, 4.07748502e-08, 0.013477576, -4.06100966e-08, 1, -1.24986625e-08, -0.013477576, 1.19501982e-08, 0.999908745)
         SpawnPoint = "Default"
      elseif HighestLvToFarm == 725 then
         SpawnCFrame = CFrame.new(-32.1582031, 29.2783928, 2766.5874, 0.999908745, 4.07748502e-08, 0.013477576, -4.06100966e-08, 1, -1.24986625e-08, -0.013477576, 1.19501982e-08, 0.999908745)
         SpawnPoint = "Default"
      elseif HighestLvToFarm == 775 then
         SpawnCFrame = CFrame.new(-389.968658, 72.9961472, 1148.09241, 0.973822653, -2.55817412e-09, -0.227309078, 5.14786969e-09, 1, 1.07999991e-08, 0.227309078, -1.16874412e-08, 0.973822653)
         SpawnPoint = "DressTown"
      elseif HighestLvToFarm == 800 then 
         SpawnCFrame = CFrame.new(-389.968658, 72.9961472, 1148.09241, 0.973822653, -2.55817412e-09, -0.227309078, 5.14786969e-09, 1, 1.07999991e-08, 0.227309078, -1.16874412e-08, 0.973822653)
         SpawnPoint = "DressTown"
      elseif HighestLvToFarm == 875 then
         SpawnPoint = "Greenb"
         SpawnCFrame = CFrame.new(-2220.05884, 72.967804, -2709.98462, 0.751716256, 2.54505395e-08, -0.659486711, -3.65784025e-08, 1, -3.10247139e-09, 0.659486711, 2.64551492e-08, 0.751716256)
      elseif HighestLvToFarm == 900 then
         SpawnPoint = "Greenb"
         SpawnCFrame = CFrame.new(-2220.05884, 72.967804, -2709.98462, 0.751716256, 2.54505395e-08, -0.659486711, -3.65784025e-08, 1, -3.10247139e-09, 0.659486711, 2.64551492e-08, 0.751716256)
      elseif HighestLvToFarm == 950 then 
         SpawnPoint = "Graveyard"
         SpawnCFrame = CFrame.new(-5386.68799, 8.97076797, -713.903381, -0.681161046, -0, -0.732133687, -0, 1.00000012, -0, 0.732133627, 0, -0.681161106)
      elseif HighestLvToFarm == 975 then 
         SpawnPoint = "Graveyard"
         SpawnCFrame = CFrame.new(-5386.68799, 8.97076797, -713.903381, -0.681161046, -0, -0.732133687, -0, 1.00000012, -0, 0.732133627, 0, -0.681161106)
      elseif HighestLvToFarm == 1000 then  
         SpawnPoint = "Snowy"
         SpawnCFrame = CFrame.new(394.089142, 401.423676, -5313.98486, 0.858188987, 0, -0.513334036, -0, 1.00000012, -0, 0.513334095, 0, 0.858188868)
      elseif HighestLvToFarm == 1050 then 
         SpawnCFrame = CFrame.new(394.089142, 401.423676, -5313.98486, 0.858188987, 0, -0.513334036, -0, 1.00000012, -0, 0.513334095, 0, 0.858188868)
         SpawnPoint = "Snowy"
      elseif HighestLvToFarm == 1100 then
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
      elseif HighestLvToFarm == 1125  then
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
      elseif HighestLvToFarm == 1175  then
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
      elseif HighestLvToFarm == 1200  then 
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
      elseif HighestLvToFarm == 1250  then
      
      elseif HighestLvToFarm == 1275 then
      
      elseif HighestLvToFarm == 1300 then 
         
      elseif HighestLvToFarm == 1325 then 
        
      elseif HighestLvToFarm == 1350 then
         SpawnCFrame = CFrame.new(5573.96826, 28.1925011, -6111.41455, 0.63015002, 2.24445866e-08, -0.776473403, 1.18417554e-09, 1, 2.98668255e-08, 0.776473403, -1.97400603e-08, 0.63015002)
         SpawnPoint = "IceCastle"
      elseif HighestLvToFarm == 1375 then 
         SpawnCFrame = CFrame.new(5573.96826, 28.1925011, -6111.41455, 0.63015002, 2.24445866e-08, -0.776473403, 1.18417554e-09, 1, 2.98668255e-08, 0.776473403, -1.97400603e-08, 0.63015002)
         SpawnPoint = "IceCastle"
      elseif HighestLvToFarm == 1425 then
         SpawnCFrame = CFrame.new(-3066.82715, 236.847992, -10159.6846, -0.0472635701, 9.39435338e-08, 0.998882413, -1.03863584e-08, 1, -9.45400771e-08, -0.998882413, -1.4843053e-08, -0.0472635701)
         SpawnPoint = "ForgottenIsland"
      elseif HighestLvToFarm >= 1450 then 
         SpawnPoint = "ForgottenIsland"
         SpawnCFrame = CFrame.new(-3066.82715, 236.847992, -10159.6846, -0.0472635701, 9.39435338e-08, 0.998882413, -1.03863584e-08, 1, -9.45400771e-08, -0.998882413, -1.4843053e-08, -0.0472635701)
      end
   elseif ThirdSea then
      if HighestLvToFarm == 1500 then
         SpawnPoint = "Default"
      elseif HighestLvToFarm == 1525 then
         SpawnPoint = "Default"
      elseif HighestLvToFarm == 1575 then
         SpawnPoint = "Hydra3"
         SpawnCFrame = CFrame.new(4727.12988, 51.453064, -1401.72839, -0.0406560153, -8.94791299e-08, -0.999172926, -1.4819995e-08, 1, -8.89501877e-08, 0.999172926, 1.11913803e-08, -0.0406560153)

      elseif HighestLvToFarm == 1600  then
         SpawnPoint = "Hydra3"
         SpawnCFrame = CFrame.new(4727.12988, 51.453064, -1401.72839, -0.0406560153, -8.94791299e-08, -0.999172926, -1.4819995e-08, 1, -8.89501877e-08, 0.999172926, 1.11913803e-08, -0.0406560153)
      elseif HighestLvToFarm == 1625  then
         SpawnPoint = "Hydra1"
         SpawnCFrame = CFrame.new(5264.06396, 602.526245, 353.749878, 0.279151142, -7.57343912e-08, 0.960247159, -6.40085602e-08, 1, 9.74774537e-08, -0.960247159, -8.86749874e-08, 0.279151142)
      elseif HighestLvToFarm == 1650  then
         
         SpawnPoint = "Hydra1"
         SpawnCFrame = CFrame.new(5264.06396, 602.526245, 353.749878, 0.279151142, -7.57343912e-08, 0.960247159, -6.40085602e-08, 1, 9.74774537e-08, -0.960247159, -8.86749874e-08, 0.279151142)
      elseif HighestLvToFarm == 1700  then

         SpawnPoint = "GreatTree"
         SpawnCFrame = CFrame.new(2260.66162, 25.852705, -6416.6084, -0.626811504, 1.25838984e-08, -0.77917093, 6.058122e-09, 1, 1.1276855e-08, 0.77917093, 2.34815012e-09, -0.626811504)

      elseif HighestLvToFarm == 1725 then
         SpawnPoint = "GreatTree"

         SpawnCFrame = CFrame.new(2260.66162, 25.852705, -6416.6084, -0.626811504, 1.25838984e-08, -0.77917093, 6.058122e-09, 1, 1.1276855e-08, 0.77917093, 2.34815012e-09, -0.626811504)
      elseif HighestLvToFarm == 1775  then
         SpawnPoint = "BigMansion"
         SpawnCFrame = CFrame.new(-12550.4844, 337.168365, -7425.26855, -0.999161005, -4.15654711e-09, 0.0409527794, -5.47581491e-09, 1, -3.21021858e-08, -0.0409527794, -3.22995035e-08, -0.999161005)
      elseif HighestLvToFarm == 1800 then
         SpawnPoint = "BigMansion"

         SpawnCFrame = CFrame.new(-12550.4844, 337.168365, -7425.26855, -0.999161005, -4.15654711e-09, 0.0409527794, -5.47581491e-09, 1, -3.21021858e-08, -0.0409527794, -3.22995035e-08, -0.999161005)

      elseif HighestLvToFarm == 1825 then
         SpawnPoint = "BigMansion"
         SpawnCFrame = CFrame.new(-12550.4844, 337.168365, -7425.26855, -0.999161005, -4.15654711e-09, 0.0409527794, -5.47581491e-09, 1, -3.21021858e-08, -0.0409527794, -3.22995035e-08, -0.999161005)
      elseif HighestLvToFarm == 1850 then
         SpawnPoint = "BigMansion"
         SpawnCFrame = CFrame.new(-12550.4844, 337.168365, -7425.26855, -0.999161005, -4.15654711e-09, 0.0409527794, -5.47581491e-09, 1, -3.21021858e-08, -0.0409527794, -3.22995035e-08, -0.999161005)
      elseif HighestLvToFarm == 1900 then
         SpawnCFrame = (CFrame.new(-11374.4658, 331.723297, -10390.6523, 0.0812454298, -6.60837287e-08, 0.996694148, -2.83417223e-09, 1, 6.65339499e-08, -0.996694148, -8.23038171e-09, 0.0812454298))
         SpawnPoint = "PineappleTown"

      elseif HighestLvToFarm == 1925  then
         SpawnCFrame = (CFrame.new(-11374.4658, 331.723297, -10390.6523, 0.0812454298, -6.60837287e-08, 0.996694148, -2.83417223e-09, 1, 6.65339499e-08, -0.996694148, -8.23038171e-09, 0.0812454298))
         SpawnPoint = "PineappleTown"
      elseif HighestLvToFarm == 1975 then
         SpawnCFrame = (CFrame.new(-9540.20898, 142.104858, 5537.26318, -0.0597328693, -5.60282345e-08, 0.998214364, -3.90994126e-09, 1, 5.5894489e-08, -0.998214364, -5.6422117e-10, -0.0597328693))
         SpawnPoint = "HauntedCastle"
      elseif HighestLvToFarm == 2000  then
         SpawnCFrame = (CFrame.new(-9540.20898, 142.104858, 5537.26318, -0.0597328693, -5.60282345e-08, 0.998214364, -3.90994126e-09, 1, 5.5894489e-08, -0.998214364, -5.6422117e-10, -0.0597328693))
         SpawnPoint = "HauntedCastle"
      elseif HighestLvToFarm == 2025  then
         SpawnPoint = "HauntedCastle"
         SpawnCFrame = (CFrame.new(-9540.20898, 142.104858, 5537.26318, -0.0597328693, -5.60282345e-08, 0.998214364, -3.90994126e-09, 1, 5.5894489e-08, -0.998214364, -5.6422117e-10, -0.0597328693))
      elseif HighestLvToFarm == 2050 then
         SpawnPoint = "HauntedCastle"
         SpawnCFrame = (CFrame.new(-9540.20898, 142.104858, 5537.26318))
      elseif HighestLvToFarm == 2075 then
         SpawnCFrame = CFrame.new(-2074.8999023438, 38.104068756104, -10210.83203125)
         SpawnPoint = "Peanut"
      elseif HighestLvToFarm == 2100 then
         SpawnCFrame = CFrame.new(-2074.8999023438, 38.104068756104, -10210.83203125)
         SpawnPoint = "Peanut"
      elseif HighestLvToFarm == 2125 then
         SpawnCFrame = CFrame.new(-910.46862792969, 58.945728302002, -10889.098632812)
         SpawnPoint = "IceCream"
      elseif HighestLvToFarm >= 2150 then
         SpawnCFrame = CFrame.new(-910.46862792969, 58.945728302002, -10889.098632812)
         SpawnPoint = "IceCream"
      end
   end
end



]]
