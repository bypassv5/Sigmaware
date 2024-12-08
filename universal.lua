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

local MainTab = Window:CreateTab("Universal", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Movement")

local InfJumpButton = MainTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
      local UserInputService = game:GetService("UserInputService")
         local speaker = game.Players.LocalPlayer
         local infJump
         local infJumpDebounce = false
         
         -- Disconnect any existing connections
         if infJump then
             infJump:Disconnect()
         end
         
         -- Create a new JumpRequest connection
         infJump = UserInputService.JumpRequest:Connect(function()
             if not infJumpDebounce then
                 infJumpDebounce = true
                 local humanoid = speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid")
                 if humanoid then
                     humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                 end
                 wait()
                 infJumpDebounce = false
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





local RedBoxButton = MainTab:CreateButton({
    Name = "ESP",
    Callback = function()
        -- Parent this script to StarterPlayerScripts or StarterGui for client-side execution.
        
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer
        
        -- Function to create a red UI box
        local function createHighlightBox(character)
            if not character then return end
        
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then return end
        
            -- Check if the highlight already exists
            if character:FindFirstChild("HighlightGui") then return end
        
            -- Create a BillboardGui
            local highlightGui = Instance.new("BillboardGui")
            highlightGui.Name = "HighlightGui"
            highlightGui.Adornee = humanoidRootPart
            highlightGui.Size = UDim2.new(4, 0, 6, 0) -- Adjust size as needed
            highlightGui.AlwaysOnTop = true
        
            -- Create the red UI box
            local box = Instance.new("Frame")
            box.Size = UDim2.new(1, 0, 1, 0)
            box.BackgroundTransparency = 1
            box.BorderSizePixel = 0
        
            -- Add a red outline
            local outline = Instance.new("UIStroke")
            outline.Thickness = 3
            outline.Color = Color3.new(1, 0, 0) -- Red color
            outline.Parent = box
        
            box.Parent = highlightGui
            highlightGui.Parent = character
        end
        
        -- Function to handle a player's character
        local function handleCharacter(player, character)
            if player == LocalPlayer then return end -- Avoid highlighting the local player
        
            -- Add a delay to ensure the character is fully loaded
            character:WaitForChild("HumanoidRootPart", 5) -- Wait up to 5 seconds for the HumanoidRootPart
            createHighlightBox(character)
        end
        
        -- Function to handle players joining
        local function handlePlayer(player)
            -- Listen for the player's character spawning or respawning
            player.CharacterAdded:Connect(function(character)
                handleCharacter(player, character)
            end)
        
            -- Check if the player's character already exists
            if player.Character then
                handleCharacter(player, player.Character)
            end
        end
        
        -- Set up for existing players
        for _, player in ipairs(Players:GetPlayers()) do
            handlePlayer(player)
        end
        
        -- Handle new players joining
        Players.PlayerAdded:Connect(handlePlayer)
        
        -- Cleanup when players leave
        Players.PlayerRemoving:Connect(function(player)
            if player.Character then
                local highlightGui = player.Character:FindFirstChild("HighlightGui")
                if highlightGui then
                    highlightGui:Destroy()
                end
            end
        end)
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

       -- Function to enforce the FOV if it changes
       local function enforceFOV()
           local camera = workspace.CurrentCamera
           while true do
               if camera and camera.FieldOfView ~= Value then
                   camera.FieldOfView = Value
               end
               wait(0.2) -- Periodic check to avoid excessive updates
           end
       end

       -- Start the enforcement in a coroutine
       coroutine.wrap(enforceFOV)()
   end,
})










local Uninjectbutton = MainTab:CreateButton({
   Name = "Uninject",
   Callback = function()
       Rayfield:Destroy()
   end,
})
