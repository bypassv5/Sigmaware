local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🧰Skywars Bedwarz Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "SigmaWareV1",
   LoadingSubtitle = "Only true sigmas use this",
   Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Blatant", nil) -- Title, Image
local TPTab = Window:CreateTab("TPs", nil)
local MainSection = MainTab:CreateSection("Movement")


local BronzeCoinTPButton = TPTab:CreateButton({
   Name = "Bronze Coin Tp",
   Callback = function()
       -- Get the LocalPlayer
local player = game.Players.LocalPlayer

-- Function to teleport the player to each BronzeCoin
local function teleportToCoins()
    while true do
        -- Find all BronzeCoin objects in the workspace
        local bronzeCoins = game.Workspace:GetChildren()
        local targetCoin = nil
        
        -- Search for a BronzeCoin
        for _, obj in pairs(bronzeCoins) do
            if obj.Name == "BronzeCoin" and obj:IsA("Model") then
                -- Check if the model has a PrimaryPart set
                if obj.PrimaryPart then
                    targetCoin = obj
                    break
                end
            end
        end
        
        -- If there's no BronzeCoin, stop the loop
        if not targetCoin then
            print("No more BronzeCoins in the workspace.")
            break
        end

        -- Teleport the player to the PrimaryPart of the BronzeCoin model
        player.Character:SetPrimaryPartCFrame(targetCoin.PrimaryPart.CFrame)

        -- Wait for 0.3 seconds before the next teleport
        wait(0.3)

        -- Optionally: You could destroy the coin if you want to simulate collecting it
        -- targetCoin:Destroy()
    end
end

-- Run the teleport function
teleportToCoins()
   end,
})



local SilverCoinTPButton = TPTab:CreateButton({
   Name = "Silver Coin Tp",
   Callback = function()
       -- Get the LocalPlayer
local player = game.Players.LocalPlayer

-- Function to teleport the player to each BronzeCoin
local function teleportToCoins()
    while true do
        -- Find all BronzeCoin objects in the workspace
        local bronzeCoins = game.Workspace:GetChildren()
        local targetCoin = nil
        
        -- Search for a BronzeCoin
        for _, obj in pairs(bronzeCoins) do
            if obj.Name == "IronCoin" and obj:IsA("Model") then
                -- Check if the model has a PrimaryPart set
                if obj.PrimaryPart then
                    targetCoin = obj
                    break
                end
            end
        end
        
        -- If there's no BronzeCoin, stop the loop
        if not targetCoin then
            print("No more BronzeCoins in the workspace.")
            break
        end

        -- Teleport the player to the PrimaryPart of the BronzeCoin model
        player.Character:SetPrimaryPartCFrame(targetCoin.PrimaryPart.CFrame)

        -- Wait for 0.3 seconds before the next teleport
        wait(0.3)

        -- Optionally: You could destroy the coin if you want to simulate collecting it
        -- targetCoin:Destroy()
    end
end

-- Run the teleport function
teleportToCoins()
   end,
})


local GoldCoinTPButton = TPTab:CreateButton({
   Name = "Gold Coin Tp",
   Callback = function()
       -- Get the LocalPlayer
local player = game.Players.LocalPlayer

-- Function to teleport the player to each BronzeCoin
local function teleportToCoins()
    while true do
        -- Find all BronzeCoin objects in the workspace
        local bronzeCoins = game.Workspace:GetChildren()
        local targetCoin = nil
        
        -- Search for a BronzeCoin
        for _, obj in pairs(bronzeCoins) do
            if obj.Name == "GoldCoin" and obj:IsA("Model") then
                -- Check if the model has a PrimaryPart set
                if obj.PrimaryPart then
                    targetCoin = obj
                    break
                end
            end
        end
        
        -- If there's no BronzeCoin, stop the loop
        if not targetCoin then
            print("No more BronzeCoins in the workspace.")
            break
        end

        -- Teleport the player to the PrimaryPart of the BronzeCoin model
        player.Character:SetPrimaryPartCFrame(targetCoin.PrimaryPart.CFrame)

        -- Wait for 0.3 seconds before the next teleport
        wait(0.3)

        -- Optionally: You could destroy the coin if you want to simulate collecting it
        -- targetCoin:Destroy()
    end
end

-- Run the teleport function
teleportToCoins()
   end,
})


local ShardTPButton = TPTab:CreateButton({
   Name = "Shard Tp",
   Callback = function()
       -- Get the LocalPlayer
local player = game.Players.LocalPlayer

-- Function to teleport the player to each BronzeCoin
local function teleportToCoins()
    while true do
        -- Find all BronzeCoin objects in the workspace
        local bronzeCoins = game.Workspace:GetChildren()
        local targetCoin = nil
        
        -- Search for a BronzeCoin
        for _, obj in pairs(bronzeCoins) do
            if obj.Name == "Shard" and obj:IsA("Model") then
                -- Check if the model has a PrimaryPart set
                if obj.PrimaryPart then
                    targetCoin = obj
                    break
                end
            end
        end
        
        -- If there's no BronzeCoin, stop the loop
        if not targetCoin then
            print("No more BronzeCoins in the workspace.")
            break
        end

        -- Teleport the player to the PrimaryPart of the BronzeCoin model
        player.Character:SetPrimaryPartCFrame(targetCoin.PrimaryPart.CFrame)

        -- Wait for 0.3 seconds before the next teleport
        wait(0.3)

        -- Optionally: You could destroy the coin if you want to simulate collecting it
        -- targetCoin:Destroy()
    end
end

-- Run the teleport function
teleportToCoins()
   end,
})

local InfJumpButton = MainTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
       local Player = game:GetService'Players'.LocalPlayer;
       local UIS = game:GetService'UserInputService';
 
        _G.JumpHeight = 50;
 
        function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
        UIS.InputBegan:connect(function(UserInput)
            if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
                Action(Player.Character.Humanoid, function(self)
                    if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                        Action(self.Parent.HumanoidRootPart, function(self)
                            self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                        end)
                    end
                end)
            end
        end)
   end,
})

local WalkSpeedSlider = MainTab:CreateSlider({
    Name = "Walkspeed Slider",
    Range = {40, 120},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 50,
    Flag = "Slider1", -- Unique flag for the slider
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local character = player.Character
        if character and character:FindFirstChild("Humanoid") then
            local humanoid = character:FindFirstChild("Humanoid")
            humanoid.WalkSpeed = Value
        end

        -- Start a coroutine to constantly enforce the selected walk speed
        coroutine.wrap(function()
            while true do
                local character = player.Character or player.CharacterAdded:Wait()
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid.WalkSpeed = Value
                end
                wait(0.1) -- Adjust this interval as needed for performance and responsiveness
            end
        end)()
    end,
})


local EggTPButton = TPTab:CreateButton({
   Name = "EggTP (Beta)",
   Callback = function()
       -- LocalScript for teleporting the player to a random Bed part with glide effect over 5 seconds

       local player = game.Players.LocalPlayer
       local bedsFolder = workspace.Eggs  -- Folder containing multiple bed parts

       -- Get all the Bed parts (Model or BasePart)
       local bedParts = {}

       -- Loop through all children of the "Eggs" folder and collect valid bed parts
       for _, bed in pairs(bedsFolder:GetChildren()) do
           if (bed:IsA("BasePart") or (bed:IsA("Model") and bed.PrimaryPart)) then
               -- Check if the bed has a Health attribute and ensure it's greater than 0
               local eggHealth = bed:GetAttribute("Health")
               if eggHealth and eggHealth > 0 then
                   table.insert(bedParts, bed)
               end
           end
       end

       -- Check if there are valid beds to teleport to
       if #bedParts > 0 then
           -- Pick a random bed
           local randomBed = bedParts[math.random(1, #bedParts)]

           -- Check if the random bed is a model or part and get its position
           local targetPosition

           if randomBed:IsA("Model") then
               -- If it's a model, get the PrimaryPart position
               if randomBed.PrimaryPart then
                   targetPosition = randomBed.PrimaryPart.Position
               else
                   warn("Selected bed model does not have a PrimaryPart.")
                   return
               end
           elseif randomBed:IsA("BasePart") then
               -- If it's just a part, use its position directly
               targetPosition = randomBed.Position
           else
               warn("Selected bed is neither a Model nor a BasePart.")
               return
           end

           -- Move the player to 5 units below the bed initially
           targetPosition = Vector3.new(targetPosition.X, targetPosition.Y + 2, targetPosition.Z)

           -- Wait for the player's character to load
           local character = player.Character or player.CharacterAdded:Wait()

           -- Check if the HumanoidRootPart exists
           local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

           -- Use TweenService to glide to the target position over 5 seconds
           local TweenService = game:GetService("TweenService")

           -- TweenInfo to glide over 5 seconds
           local tweenInfo = TweenInfo.new(
               0.5,  -- Duration (5 seconds)
               Enum.EasingStyle.Linear,  -- Easing style (smooth movement)
               Enum.EasingDirection.Out  -- Easing direction (slows down towards the end)
           )

           -- Goal for the CFrame, set the new position (5 units below the bed)
           local goal = {CFrame = CFrame.new(targetPosition)}

           -- Create the tween
           local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)

           -- Play the tween
           tween:Play()

           -- Optionally, wait for the tween to complete
           tween.Completed:Wait()

           -- Monitor the health of the selected bed until it reaches 0
           while true do
               local eggHealth = randomBed:GetAttribute("Health")
               if eggHealth and eggHealth <= 0 then
                   -- Once health is 0, move the player 10 units above the bed
                   targetPosition = Vector3.new(randomBed.Position.X, randomBed.Position.Y + 10, randomBed.Position.Z)

                   -- Tween to the new position (10 units above the bed)
                   local goalAbove = {CFrame = CFrame.new(targetPosition)}

                   -- Create and play the tween to move up
                   local tweenUp = TweenService:Create(humanoidRootPart, tweenInfo, goalAbove)
                   tweenUp:Play()

                   -- Wait for the tween to finish before ending the script
                   tweenUp.Completed:Wait()
                   break
               end
               -- Wait for a short time before checking the health again (to avoid checking every frame)
               wait(1)
           end

       else
           warn("No valid eggs with Health > 0 found.")
       end
   end,
})






local RedBoxButton = MainTab:CreateButton({
    Name = "ESP",
    Callback = function()
        -- Get the Players service
        local Players = game:GetService("Players")
        local Workspace = game:GetService("Workspace")
        
        -- Loop through all players in the game
        for _, player in pairs(Players:GetPlayers()) do
            -- Check if the player has a character and a HumanoidRootPart
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                -- Create a red box (part) above the player's character
                local redBox = Instance.new("Part")
                redBox.Size = Vector3.new(3, 6, 3)  -- Size of the box
                redBox.Anchored = true
                redBox.CanCollide = false
                redBox.BrickColor = BrickColor.new("Bright red")  -- Set the color of the box
                redBox.Transparency = 0.5  -- Set transparency (0 for opaque, 1 for fully transparent)
                redBox.Parent = workspace  -- Parent the box to the workspace

                -- Position the box 5 units above the player's character
                local humanoidRootPart = player.Character.HumanoidRootPart
                redBox.Position = humanoidRootPart.Position + Vector3.new(0, -1, 0)

                -- Update the position of the red box continuously
                local function updateBoxPosition()
                    -- Make sure the player still exists and has a valid HumanoidRootPart
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local newPosition = player.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
                        redBox.Position = newPosition
                    else
                        -- If the player or HumanoidRootPart is missing, stop updating the box position
                        redBox:Destroy()  -- Remove the box if the player is no longer valid
                    end
                end

                -- Connect the update function to the Heartbeat event to update the position every frame
                game:GetService("RunService").Heartbeat:Connect(updateBoxPosition)
            end
        end
    end,
})



local FOVSlider = MainTab:CreateSlider({
   Name = "FOV",
   Range = {70, 120},
   Increment = 1,
   Suffix = "FOV",
   CurrentValue = 50,
   Flag = "Slider2", -- Unique flag for the slider
   Callback = function(Value)
        local camera = workspace.CurrentCamera
        if camera then
            camera.FieldOfView = Value
        end

        -- Start a coroutine to constantly enforce the selected FOV
        coroutine.wrap(function()
            while true do
                local camera = workspace.CurrentCamera
                if camera then
                    camera.FieldOfView = Value
                end
                wait(0.1) -- Adjust this interval for performance and responsiveness
            end
        end)()
   end,
})



local SetHitboxSizeButton = MainTab:CreateButton({
    Name = "Set Hitbox & ProjectileHitbox Size to 100,100,100 (Infinite)",
    Callback = function()
        -- Get the Players service
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")

        -- Continuous loop to update Hitbox and ProjectileHitbox size for all players
        RunService.Heartbeat:Connect(function()
            -- Loop through all players in the game
            for _, player in pairs(Players:GetPlayers()) do
                -- Check if the player has a character
                if player.Character then
                    -- Look for the Hitbox part inside the player's model (direct child)
                    local hitbox = player.Character:FindFirstChild("Hitbox")
                    local projectileHitbox = player.Character:FindFirstChild("ProjectileHitbox")
                    
                    -- Check and update Hitbox size
                    if hitbox and hitbox:IsA("BasePart") then
                        -- Set the size of the Hitbox to 100, 100, 100
                        hitbox.Size = Vector3.new(100, 100, 100)
                    end
                    
                    -- Check and update ProjectileHitbox size
                    if projectileHitbox and projectileHitbox:IsA("BasePart") then
                        -- Set the size of the ProjectileHitbox to 100, 100, 100
                        projectileHitbox.Size = Vector3.new(100, 100, 100)
                    end

                    -- If no Hitbox or ProjectileHitbox part is found, print a debug message
                    if not hitbox then
                        print("No Hitbox part found for player: " .. player.Name)
                    end
                    if not projectileHitbox then
                        print("No ProjectileHitbox part found for player: " .. player.Name)
                    end
                end
            end
        end)
    end,
})





local Uninjectbutton = MainTab:CreateButton({
   Name = "Uninject",
   Callback = function()
       Rayfield:Destroy()
   end,
})
