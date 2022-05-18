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
--Loading Game
repeat wait()
until game:IsLoaded()
repeat wait()
until game.Players.LocalPlayer
repeat wait()
until game.Players.LocalPlayer.Character
repeat wait()
until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil

local Sea1;
local Sea2;
local Sea3;
--Check PlaceId
if game.PlaceId == 2753915549 then
   Sea1 = true
elseif game.PlaceId == 4442272183 then
   Sea2 = true
elseif game.PlaceId == 7449423635 then
   Sea3 = true
end
--Define Service
local VU = game:GetService("VirtualUser")
local VIM =game:GetService("VirtualInputManager")
local RS = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local CG = game:GetService("CoreGui")
local HTTPS = game:GetService("HttpService")
local RS = game:getService("RunService")
--Define Vars
--[[Parts]]
local LP = game:GetService("Players").LocalPlayer
--[[String]]
local Weapon = ""
local filename = "IslandSettingV2.lua";
local AutoFarmMode = "Melee"
--[[Number]]
local MaxLevelSea = 0
if Sea1 then
   MaxLevelSea = 675
elseif Sea2 then
   MaxLevelSea = 1450
elseif Sea3 then
   MaxLevelSea = 2275
end
local HighestLvToFarm =  0
local ServerPlayers = 6
--[[Boolen]]
local Melee_Point = 1
local Defense_Point = 1
local Sword_Point = 1
local DF_Point = 1
local Gun_Point = 1
local CanTween = true
--[[Function]]
local GC = getconnections or get_signal_cons
local req = http_request or request or HttpPost or syn.request
local getmusicasset = getsynasset or getcustomasset
local Mouse = LP:GetMouse()
--[[Require]]
local CamMod = require(game.ReplicatedStorage.Util.CameraShaker)
--[[Table]]
local Flower = {
   "Blue Flower",
   "Red Flower",
}
local Method = {
   "Melee",
   "Sword",
   "Fruit",
   "Gun",
}
local MapPos = {
   ["CenterCastle"] = Vector3.new(-5581.2353515625, 313.76556396484375, -3064.094970703125)
}
local PlrWeapons = {}
local FruitTable = {} 
local PlrsTable = {}
local BossCheck ={}
for i,v in pairs(require(game:GetService("ReplicatedStorage").Quests)) do
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
                  if not table.find(BossCheck, v3) then
                     table.insert(BossCheck, v3)
                  end
               end
            end
         end
      end
   end
end
local CurrentBoss={}
local DragonColor = {}
local Chests = {}
--[[genv]]
if getgenv().AuraDist == nil then
   getgenv().AuraDist = 750
end
if getgenv().MinuteToRejoin == nil then
   getgenv().MinuteToRejoin = 10
end
--Anti AFK
if GC then
   pcall(function()
      for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
         if v["Disable"] then
            v["Disable"](v)
         elseif v["Disconnect"] then
            v["Disconnect"](v)
         end
      end
   end)
end
LP.Idled:connect(function()
   VU:CaptureController()
   VU:ClickButton2(Vector2.new())
end)
--Define Function
function LoadSetting()
   warn("Loading Data...")

   if (readfile and isfile and isfile(filename)) then
      getgenv().Setting = HTTPS:JSONDecode(readfile(filename));
   end
   for i,v in pairs(getgenv().Setting) do
      if i == "AutoFarmQuest" then
      getgenv().AutoFarmQuest = v
      elseif i == "AutoFarmBring" then
      getgenv().AutoFarmBring = v
      elseif i == "AutoSetSpawn" then
      getgenv().AutoSetSpawn = v
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
function CheckLv()
   local PlrLevel = LP.Data.Level.Value
   CheckingMob = true
   for i,v in pairs(require(game:GetService("ReplicatedStorage").Quests)) do
      if typeof(v) == "table" and i ~= "BartiloQuest" and i~= "CitizenQuest" and i ~= "MarineQuest" then
         for i2,v2 in pairs(v) do
            SpotBoss = false
            for i3,v3 in pairs(v2) do
               if i3 == "Name" then    
                  for i4,v4 in pairs(BossCheck) do
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
                     if not Sea1 then               
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
end
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
local function TweenFloat()
   if getRoot(LP.Character) then
      if not getRoot(LP.Character):FindFirstChild("VelocityBody") then
         local BV = Instance.new("BodyVelocity")
         BV.Parent = getRoot(LP.Character)
         BV.Name = "VelocityBody"
         BV.MaxForce = Vector3.new(100000, 100000, 100000)
         BV.Velocity = Vector3.new(0, 0, 0)
      end
   end
end
local function RemoveFloat()
   if getRoot(LP.Character) then
      if getRoot(LP.Character):FindFirstChild("VelocityBody") then
         getRoot(LP.Character).VelocityBody:Destroy()
      end
   end
end
local function Click()
   pcall(function()
      if Alive() then
         VU:CaptureController()
         VU:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
      end
   end)
end
local function Equip(Tool)
   pcall(function()
      local ToolEquip = LP.Backpack:FindFirstChild(Tool) or LP.Character:FindFirstChild(Tool)
      if LP.Character:FindFirstChild('Humanoid')  and not LP.Character:FindFirstChild(Tool) then
         LP.Character:FindFirstChild('Humanoid'):EquipTool(ToolEquip)
      end
   end)
end
local function TPSpecificPlace()
   if Sea2 then
      if HighestLvToFarm == 1250 or HighestLvToFarm == 1275 or HighestLvToFarm == 1300 or HighestLvToFarm == 1325 then
         if (getRoot(LP.Character).Position - Vector3.new(923.21252441406, 125.05710601807, 32852.83203125)).magnitude > 3000 then
            local args = {
               [1] = "requestEntrance",
               [2] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
      end
   elseif Sea1 then
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
local function NoclipLoop()
   if NoClip == true and LP.Character ~= nil then
      for _, child in pairs(LP.Character:GetDescendants()) do
         if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
            child.CanCollide = false
         end
      end
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
function CheckQuestMob()
   --CheckSpawn()
   local PlrLevel = game.Players.localPlayer.Data.Level.Value
   if Sea1 then
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
function DoTween(dist, Speed)
   local FastSpeedTween = false
   local LastPositionTween = dist
   if dist ~= nil  and LastPositionTween ~= nil then
      local range = (getRoot(LP.Character).Position - dist.Position).magnitude
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
      local info = TweenInfo.new((getRoot(LP.Character).Position - dist.Position).magnitude / RealSpeed,Enum.EasingStyle.Linear)
      NoClip = true
      Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)

      tween =  game:service"TweenService":Create(getRoot(LP.Character), info, {CFrame = dist})
      if CanTween and Alive() then
         tween:Play()
         if not FastSpeedTween then
            if Alive() then
               Tweening = true
            end
         end

         TweenFloat()
         LP.Character:WaitForChild("Humanoid").Died:Connect(function()
         Tweening = false
            if tween then
      
               tween:Cancel()
            end
         end)
         spawn(function()
            wait()
            local LastPosition = getRoot(LP.Character).Position
            while Tweening and task.wait() do
               if ((LastPosition-getRoot(LP.Character).Position).magnitude) > 200 then
                  tween:Cancel()
                  wait(0.5)
                  return DoTween(LastPositionTween,200)
               end
               LastPosition = getRoot(LP.Character).Position
            end
         end)
         tween.Completed:wait()
         if Noclipping and NoClip then
            NoClip = false
            Noclipping:Disconnect()
         end
         Tweening = false
         RemoveFloat()
      else
         tween:Cancel()
      end
   end
end
function GetQuest()
   FixQuestTemp()
   FixQuestCF()
   FoundQuest = false
   
   if getgenv().AutoFarmQuest then
      if Alive() and getgenv().AutoFarm and LP.PlayerGui.Main.Quest.Visible == false or not string.find(LP.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,CurrentMobName) then
         GettingQuest = true
         if not Sea1 and QuestCFrame == nil then
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
         TPSpecificPlace()
         DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
         TweenFloat()
         if (getRoot(LP.Character).Position- Vector3.new(QuestCFrame)).magnitude < 50 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
         elseif getgenv().AutoFarmQuest and getgenv().AutoFarm then 

            TPSpecificPlace()
            DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
         end
      end
   end
   GettingQuest = false
end
local function BringMobNear()
   if getgenv().AutoFarmBring then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
         if IsAlive(v) and not Tweening then
            if Alive() and CheckRange(v,LP.Character,1000) then -- and string.find(v.Name,HighestLvToFarm) and not BringBone  
               pcall(function()
                  getRoot(v).Velocity = Vector3.new(1,1,1)

                  if BringCFrame~= nil and BringPos ~= nil then
                     if CheckRange(v,LP.Character,300) and v ~= MobToFarm then
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
--Do Function
--[[1 CheckFile]]
if isfile then
   if isfile(filename) then
   else
      if writefile then
         getgenv().AutoFarmQuest = true
         getgenv().AutoFarmBring = true
         getgenv().AutoSetSpawn = false
         getgenv().FastAttack = false 

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
         SaveSetting()
      end
   end
end
--[[2 Stop Cam]]
CamMod:Stop()
--[[3 LoadSetting]]
LoadSetting()
--1 Time Do Function
--[[Infinite Loops]]

if not getgenv().Executed then
   --Put Mobs
   spawn(function()
      while wait(0.1) do
         if not Alive() then
            Tweening = false
         end
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
   --Check Melee
   spawn(function()
      while wait(5) do
         pcall(function()
            local FoundMelee = false
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
   --Simulation
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

   spawn(function()
      while task.wait() do
         if getgenv().AutoBuso and not LP.Character:FindFirstChild("HasBuso") then
            local args = {
               [1] = "Buso"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         if  getgenv().AutoFarm and AutoFarmMode == "Gun" or AutoFarmMode == "Fruit" then
            if LP.Character:FindFirstChild(Weapon) then
               Click()
            end
         end
         if getgenv().AutoFarm and AutoFarmMode == "Melee" or AutoFarmMode == "Sword" then
            
            if LP.Character:FindFirstChild(Weapon)  then
               if not Tweening then
                  Click()
               end
            else
               Equip(Weapon)
            end
         end
      end
   end)
end

--Done Check
getgenv().Executed = true
--Main
spawn(function()
   while task.wait() do
      if getgenv().AutoFarm then
         CheckLv()
         repeat wait()
         until not CheckingMob
         CheckQuestMob()

         --pcall(function()
            local SmallestDistance = math.huge
            if Alive() then
               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  if Alive() and IsAlive(v) and  not Tweening and getgenv().AutoFarm and not string.find(v.Name,"Boss") then
                     if not Sea1 then
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
               if MobToFarm and getgenv().AutoFarm then
                  if getRoot(MobToFarm) then

                  TPSpecificPlace()
                  --Define Vars
                  
                  OldY = getRoot(MobToFarm).Position.Y
                  OldCFrame = getRoot(MobToFarm).CFrame
                  ResizeHRP(MobToFarm,true)
                  if MobToFarm:FindFirstChild("Humanoid") then
                     MobToFarm:FindFirstChild("Humanoid").PlatformStand = true
                  end
                  DoMagnet = false
                  
                  TPSpecificPlace()
                  TweenFloat()
                  --Set Spawn
                  if getgenv().AutoSetSpawn then
                     local args = {
                        [1] = "SetSpawnPoint"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end
                  --Get Quest
                  GetQuest()
                  repeat task.wait()
                     if Alive() and getgenv().AutoFarm then
                        TPSpecificPlace()
                        TweenFloat()
                        if IsAlive(MobToFarm) and CheckRange(MobToFarm,LP.Character,300) then
                           spawn(function()
                              if not BringFarm then
                                 BringFarm = true    
                                 if Alive() and IsAlive(MobToFarm) then
                                    BringCFrame = getRoot(MobToFarm).CFrame
                                    BringPos = getRoot(MobToFarm).Position
                                    
                                 end
                                 BringMobNear()
                                 wait(1)
                                 BringFarm = false
                              end
                           end)
                           if getRoot(LP.Character).Position.y - getRoot(MobToFarm).Position.y > -5  then
                              if getRoot(MobToFarm).Position.Y - OldY >= 0 then
                                 spawn(function()
                                    wait()
                                    if getgenv().AutoFarm and IsAlive(MobToFarm) then
                                       if Alive() and CheckRange(MobToFarm,LP.Character,300) then
                                          TPSpecificPlace()
                                          TweenFloat()
                                          getRoot(LP.Character).CFrame = getRoot(MobToFarm).CFrame * CFrame.new(0, 50, 0)
                                       elseif getgenv().AutoFarm then
                                          TPSpecificPlace()
                                          DoTween(getRoot(MobToFarm).CFrame * CFrame.new(0,50,0),getgenv().TweenSpeedAutoFarm)
                                          TweenFloat()
                                       end
                                    end

                                 end)
                              elseif getgenv().AutoFarm  then 
                                 TPSpecificPlace()
                                 getRoot(MobToFarm).CFrame = OldCFrame
                                 wait()
                                 DoTween(getRoot(MobToFarm).CFrame * CFrame.new(0,50,0),getgenv().TweenSpeedAutoFarm)
                                 TweenFloat()
                              end
                           elseif getgenv().AutoFarm and Alive() then
                              TPSpecificPlace()
                              TweenFloat()
                              local randomnumber = math.random(1,3)
                              if randomnumber == 1 then
                                 getRoot(LP.Character).CFrame = getRoot(MobToFarm).CFrame * CFrame.new(50, 0, 0)      
                              elseif randomnumber ==2 then
                                 getRoot(LP.Character).CFrame = getRoot(MobToFarm).CFrame * CFrame.new(0, 0, -50) 
                              elseif randomnumber ==3 then
                                 getRoot(LP.Character).CFrame = getRoot(MobToFarm).CFrame * CFrame.new(0, -50, 0)
                              end    
                           end
                        

                        elseif not Tweening and IsAlive(MobToFarm) and Alive() and getgenv().AutoFarm then  
                           TPSpecificPlace()
                           TweenFloat()
                           if IsAlive(MobToFarm) and Alive() and not CheckRange(MobToFarm,LP.Character,300) and getgenv().AutoFarm then
                              TPSpecificPlace()
                              DoTween(getRoot(MobToFarm).CFrame* CFrame.new(0,50,0),getgenv().TweenSpeedAutoFarm)
                              TweenFloat()
                           end
                        end
                        DoMagnet = true
                     else wait(5)
                     end
                  until not IsAlive(MobToFarm) or not Alive() or getgenv().AutoFarm == false
                  

                  end
               end
            else wait(5)
            end
         --end)
      end
   end
end)
spawn(function()
   while task.wait() do

      if getgenv().AutoFarmAura and getgenv().AutoFarm and MobToFarm and not IsAlive(MobToFarm) and not GettingQuest then
         if Alive() then
            local NearestMob;
            local NearestDist = math.huge
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
               if getRoot(v) and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and not string.find(v.Name,"Boss")then
                  if (getRoot(v).Position-getRoot(LP.Character).Position).magnitude <= 3000 then
                     if (getRoot(v).Position-getRoot(LP.Character).Position).magnitude < NearestDist then
                        NearestDist = (getRoot(v).Position-getRoot(LP.Character).Position).magnitude
                        NearestMob = v
                     end
                  end
               end
            end
            if NearestMob and IsAlive(NearestMob) and Alive() and not IsAlive(MobToFarm) and not GettingQuest then
               TPSpecificPlace()
               pcall(function()
                  if (getRoot(NearestMob).Position-getRoot(LP.Character).Position).magnitude <= getgenv().AuraDist then
                     MobAuraBringPos = getRoot(NearestMob).CFrame
                     if AutoFarmMode == "Melee" or AutoFarmMode == "Sword" then
                        repeat wait()
                           if getRoot(NearestMob) and Alive() then
                              TPSpecificPlace()
                              spawn(function()
                                 if not BringAura then

                                    BringAura = true
                                    if Alive() and getRoot(NearestMob) then
                                       BringCFrame = getRoot(NearestMob).CFrame
                                       BringPos = getRoot(NearestMob).Position
                                       
                                    end
                                    BringMobNear()
                                    wait(1)
                                    BringAura = false
                                 end
                              end)
                              Equip(Weapon)
                              ResizeHRP(NearestMob,true)
                              if (getRoot(NearestMob).Position-getRoot(LP.Character).Position).magnitude <= 350 then
            
                                 getRoot(LP.Character).CFrame = getRoot(NearestMob).CFrame * CFrame.new(0, 50, 0)
                              else
                                 DoTween(getRoot(NearestMob).CFrame*CFrame.new(0,50,0),getgenv().TweenSpeedAutoFarm)
                              end
                           end
                        until not IsAlive(NearestMob) or GettingQuest or not IsAlive(MobToFarm) or not getRoot(NearestMob) or not (getRoot(NearestMob).Position-getRoot(LP.Character).Position).magnitude > 3000
                     end
                  end
               end)
            end
         else 
            wait(5)
         end
      end
   end
end)
--Ui
loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/version.lua"))()

repeat wait()
until getgenv().Version ~= nil
lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/venyxUi.lua"))().new(getgenv().Version)
if getgenv().TextColorChange ~= nil then
   lib:setTheme("TextColor",getgenv().TextColorChange)
end
if getgenv().GlowColorChange ~= nil then
   lib:setTheme("TextColor",getgenv().GlowColorChange )
end
lib:Notify("Island","Ui Made by Denosaur")
wait(1)
lib:Notify("Island","Loading Functions + Data")
local MainPage = lib:addPage("Main")
local AutoFarm = MainPage:addSection("Auto Farm")
AutoFarm:addToggle("Auto Farm",false,function(boolen)
   if AutoFarmMode == "Sword" or AutoFarmMode == "Melee" then
      for i,v in pairs(LP.Character:GetChildren()) do
         if v and v:IsA("Tool") and v.ToolTip == AutoFarmMode then
            Weapon = v.Name
         end
      end
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
         if v and v:IsA("Tool") and v.ToolTip == AutoFarmMode then
            Weapon = v.Name
         end
      end
      if Weapon ~= "" then
         getgenv().AutoFarm = boolen
         if boolen == false then
            wait(0.5)
            DisabledNoClip = false
            RemoveFloat()
         end
      else
         getgenv().AutoFarm = false
         return lib:Notify("Auto Farm","You Don't Have"..AutoFarmMode.." In Your Inventory")
      end
   end

   if AutoFarmMode == "Fruit" or AutoFarmMode == "Gun" then
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
      for i,v in pairs(LP.Character:GetChildren()) do
         if v and v:IsA("Tool") and v.ToolTip == AutoFarmMode then
            WeaponMastery = v.Name
         end
      end
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
         if v and v:IsA("Tool") and v.ToolTip == AutoFarmMode then
            WeaponMastery = v.Name
         end
      end
   end
end)
AutoFarm:addDropdown("Auto Farm Method",Method,function(Value)
   AutoFarmMode = Value
end)
AutoFarm:addToggle("Auto Farm Aura",false,function(boolen)
   getgenv().AutoFarmAura = boolen
end)
AutoFarm:addSlider("Auto Farm Aura Distance",getgenv().AuraDist,100,2000,function(Value)
   getgenv().AuraDist = Value
end)
AutoFarm:addTextbox("Select Lv Mob(Max Lv)",MaxLevelSea,function(Value)
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
         elseif Sea3 then
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
         elseif Sea2 then
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
         elseif Sea1 then
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
local ServerChecks = lib:addPage("Server Checks")

--[[local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()--Akira lib
local w = library:CreateWindow("Island V3")
local c = w:CreateFolder("Normal")
c:Toggle("AutoFarm Melee",function(bool)
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
   getgenv().AutoFarm = bool
   if bool == false then
      wait(0.5)
      RemoveFloat()
   end
end)]]
