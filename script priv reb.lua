local lplr = game.Players.LocalPlayer
local data = game.ReplicatedStorage:WaitForChild("Datas"):WaitForChild(lplr.UserId)
local correctNames = {"fernanflop091o", "armijosfernando2178", "123daishinkan", "daishinkan2007", "Thamersad172", "elmegafer", "santiago123337pro", "Camila_san2021", "FreireBG", "SUPERMAXOPROXD", "NeoZz_Acer", "Crisyerfil15", "mosing0", "InFeRnUsKaSlO", "medioleandro2", "userjovan21", "SHADOWLLS", "robleixtin", "AdrienSSJG", "thead_zaiko", "iLordYamoshi666", "DylanYTHdz", "Crocrakxer246","davi157brazil2", "jeremiasmanuelpr", "heroesofroblo2"}

if table.find(correctNames, lplr.Name) then
    spawn(function()
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "IntroGui"
        screenGui.Parent = lplr:WaitForChild("PlayerGui")

        local textLabel = Instance.new("TextLabel")
        textLabel.Parent = screenGui
        textLabel.Size = UDim2.new(0.5, 0, 0.1, 0)
        textLabel.Position = UDim2.new(0.25, 0, 0.45, 0)
        textLabel.BackgroundColor3 = Color3.new(0, 0, 0)
        textLabel.BackgroundTransparency = 0.5
        textLabel.BorderSizePixel = 0
        textLabel.Text = "Hecho por Dais & Fer"
        textLabel.TextColor3 = Color3.new(1, 1, 1)
        textLabel.TextScaled = true
        textLabel.Font = Enum.Font.SourceSansBold

        wait(5)
        screenGui:Destroy()

        task.spawn(function()
            pcall(function()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local Workspace = game:GetService("Workspace")

                spawn(function()
                    if lplr.PlayerGui:FindFirstChild("Start") then
                        ReplicatedStorage.Package.Events.Start:InvokeServer()
                        if Workspace.Others:FindFirstChild("Title") then
                            Workspace.Others.Title:Destroy()
                        end
                        local cam = Workspace.CurrentCamera
                        cam.CameraType = Enum.CameraType.Custom
                        cam.CameraSubject = lplr.Character.Humanoid
                        _G.Ready = true
                        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
                        lplr.PlayerGui.Main.Enabled = true
                        if lplr.PlayerGui:FindFirstChild("Start") then
                            lplr.PlayerGui.Start:Destroy()
                        end
                        lplr.PlayerGui.Main.bruh.Enabled = false
                        lplr.PlayerGui.Main.bruh.Enabled = true
                    end
                end)

                local bb = game:GetService('VirtualUser')
                game:GetService('Players').LocalPlayer.Idled:Connect(function()
                    bb:CaptureController()
                    bb:ClickButton2(Vector2.new())
                end)
            end)
        end)
    end)
end

if not _G.Ignore then
    _G.Ignore = {}
end
if not _G.WaitPerAmount then
    _G.WaitPerAmount = 500
end
if not _G.Settings then
    _G.Settings = {
        Other = {
            ["FPS Cap"] = 240,
            ["No Shadows"] = true,
            ["Low Rendering"] = true
        }
    }
end

local Lighting, MaterialService = game:GetService("Lighting"), game:GetService("MaterialService")
local function CheckIfBad(Instance)
    if Instance:IsA("BasePart") then
        Instance.Material = Enum.Material.Plastic
        Instance.Reflectance = 0
    elseif Instance:IsA("MeshPart") then
        Instance.RenderFidelity = 2
        Instance.Reflectance = 0
        Instance.Material = Enum.Material.Plastic
    elseif Instance:IsA("Model") then
        Instance.LevelOfDetail = 1
    elseif Instance:IsA("TextLabel") then
        Instance.Font = Enum.Font.SourceSans
        Instance.TextScaled = false
        Instance.TextSize = 14
    end
end

if _G.Settings.Other["No Shadows"] then
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 9e9
    Lighting.ShadowSoftness = 0
end

if _G.Settings.Other["Low Rendering"] then
    settings().Rendering.QualityLevel = 1
    settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
end

if _G.Settings.Other["FPS Cap"] then
    if setfpscap then
        setfpscap(tonumber(_G.Settings.Other["FPS Cap"]))
    end
end

game.DescendantAdded:Connect(function(value)
    task.wait(_G.LoadedWait or 1)
    CheckIfBad(value)
end)

for i, v in pairs(game:GetDescendants()) do
    CheckIfBad(v)
    if i % _G.WaitPerAmount == 0 then
        task.wait()
    end
end


task.spawn(function()
    task.wait(1)
    while true do
        pcall(function()
            local Forms = {
                'LBLSSJ4','Divine Rose Prominence', 'Astral Instinct', 'Ultra Ego', 'SSJB4', 'True God of Creation', 
                'True God of Destruction', 'Super Broly', 'LSSJG', 'LSSJ4', 'SSJG4', 'LSSJ3', 'Mystic Kaioken', 
                'LSSJ Kaioken', 'SSJR3', 'SSJB3', 'God Of Destruction', 'God Of Creation', 'Jiren Ultra Instinct', 
                'Mastered Ultra Instinct', 'Godly SSJ2', 'Ultra Instinct Omen', 'Evil SSJ', 'Blue Evolution', 
                'Dark Rose', 'Kefla SSJ2', 'SSJ Berserker', 'True Rose', 'SSJB Kaioken', 'SSJ Rose', 
                'SSJ Blue', 'Corrupt SSJ', 'SSJ Rage', 'SSJG', 'SSJ4', 'Mystic', 'LSSJ', 'SSJ3', 
                'Spirit SSJ', 'SSJ2 Majin', 'SSJ2', 'SSJ Kaioken', 'SSJ', 'FSSJ', 'Kaioken'
            }
            local equipRemote = game:GetService("ReplicatedStorage").Package.Events.equipskill
            local transformRemote = game:GetService("ReplicatedStorage").Package.Events.ta
            local lplr = game:GetService("Players").LocalPlayer

            if lplr.Character and lplr.Character:FindFirstChild("Humanoid") and lplr.Character.Humanoid.Health > 0 and lplr.Character:FindFirstChild("HumanoidRootPart") then
                for _, transformation in ipairs(Forms) do
                    if equipRemote:InvokeServer(transformation) then
                        break
                    end
                end
                if lplr.Status and lplr.Status:FindFirstChild("SelectedTransformation") and lplr.Status:FindFirstChild("Transformation") then
                    local status = lplr.Status
                    if status.SelectedTransformation.Value ~= status.Transformation.Value then
                        transformRemote:InvokeServer()
                    end
                end
            end
        end)
        task.wait()
    end
end)

-- Bloque para charge y block, solo si el jugador está transformado
task.spawn(function()
    wait(5) 
    while true do
        pcall(function()
            local lplr = game:GetService("Players").LocalPlayer
            if lplr.Status and lplr.Status:FindFirstChild("Transformation") and lplr.Status.Transformation.Value ~= "" then
                game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer("Blacknwhite27")
                game:GetService("ReplicatedStorage").Package.Events.block:InvokeServer(true)
                game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer()
            end
        end)
        wait(0.5)
    end
end)



local attacks2 = {
    "Super Dragon Fist", "God Slicer", "Spirit Barrage", "Mach Kick", "Wolf Fang Fist", "High Power Rush",
    "Spirit Breaking Cannon"
}
spawn(function()
    while true do
        pcall(function()
            if data.Quest.Value ~= "" then
                for _, attackName in ipairs(attacks2) do
                    task.spawn(function()
                        pcall(function()
                            game.ReplicatedStorage.Package.Events.mel:InvokeServer(attackName, "Blacknwhite27")
                            game.ReplicatedStorage.Package.Events.voleys:InvokeServer("Energy Volley", {FaceMouse = false, MouseHit = CFrame.new()}, "Blacknwhite27")         
                            game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
                        end)
                    end)
                end
            end
        end)
        wait(.1)
    end
end)

--Ciclo para  TP Tierra y Bills
task.spawn(function()
    while true do
        pcall(function()         
            if game.PlaceId == 5151400895 and data.Strength.Value <= 200000000 then
                game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer("Earth")
                task.wait(4)
            elseif game.PlaceId ~= 5151400895 and data.Strength.Value >= 200000000 then
                game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer("Vills Planet")
                task.wait(4)                
            end
        end)
        wait(1)
    end
end)


task.spawn(function()
    while true do
        pcall(function()
            local questValue = data.Quest.Value
            if questValue ~= "" then
                local boss = game.Workspace.Living:FindFirstChild(questValue)
                if boss and boss:FindFirstChild("HumanoidRootPart") then
                    if boss:FindFirstChild("Humanoid") and boss.Humanoid.Health <= 0 then
                        wait(1)
                    end
                    lplr.Character.HumanoidRootPart.CFrame = boss.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)
                end
            end
        end)
        task.wait()
    end
end)



local SelectedQuest, SelectedMob
local timeWithoutQuest = 0
local missionTime = 0
local resetThreshold = 50  

local questDataOutsideID = {
    {range = {0, 200000}, options = {"X Fighter", "Kid Nohag"}},
    {range = {200001, 850000}, options = {"Mapa", "Radish"}},
    {range = {850001, 4500000}, options = {"Super Vegetable", "Chilly"}},
    {range = {4500001, 25000000}, options = {"Super Vegetable", "SSJB Wukong"}},
    {range = {25000001, 100000000}, options = {"SSJ2 Wukong", "Broccoli"}},
    {range = {100000001, math.huge}, options = {"SSJG Kakata", "Winter Wukong"}}
}

local questDataInsideID = {
    {range = {100000000, 300000000}, options = {"Vegetable (GoD in-training)", "Wukong (Omen)"}},
    {range = {300000000, 900000000}, options = {"Vills (50%)", "Vis (20%)"}},
    {range = {900000000, 1500000000}, options = {"Vis (20%)", "Vegetable (LBSSJ4)"}},
    {range = {1500000000, 2500000000}, options = {"Wukong (LBSSJ4)", "Vegetable (LBSSJ4)"}},
    {range = {2500000000, 3000000000}, options = {"Wukong Rose", "Winter Beerus"}},
    {range = {3000000000, math.huge}, options = {"Winter Bills", "Vekuta (SSJBUI)"}}
}

local questData = game.PlaceId ~= 5151400895 and questDataOutsideID or questDataInsideID

task.spawn(function()
    while true do
        pcall(function()
            local lowestStat = data.Defense.Value
            local missionAssigned = false

            for _, quest in pairs(questData) do
                local minRange, maxRange = quest.range[1], quest.range[2]
                if lowestStat >= minRange and lowestStat < maxRange then
                    for _, mob in pairs(quest.options) do
                        local boss = game:GetService("Workspace").Living:FindFirstChild(mob)
                        if boss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 then
                            if SelectedQuest ~= mob then
                                missionTime = 0
                            end
                            SelectedQuest, SelectedMob = mob, mob
                            missionAssigned = true
                            break
                        end
                    end
                    break
                end
            end

            if data.Quest.Value == "" and SelectedQuest then
                local npc = game:GetService("Workspace").Others.NPCs:FindFirstChild(SelectedQuest)
                if npc and npc:FindFirstChild("HumanoidRootPart") then
                    lplr.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
                    game:GetService("ReplicatedStorage").Package.Events.Qaction:InvokeServer(npc)
                    missionAssigned = true
                end
            end

            local boss = game:GetService("Workspace").Living:FindFirstChild(SelectedMob)
            if boss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health <= 0 then
                if data.Quest.Value == "" and SelectedQuest then
                    local npc = game:GetService("Workspace").Others.NPCs:FindFirstChild(SelectedQuest)
                    if npc and npc:FindFirstChild("HumanoidRootPart") then
                        lplr.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
                        game:GetService("ReplicatedStorage").Package.Events.Qaction:InvokeServer(npc)
                        missionAssigned = true
                    end
                end
            end

            if missionAssigned then
                timeWithoutQuest = 0
                missionTime = missionTime + 1
            else
                timeWithoutQuest = timeWithoutQuest + 1
            end

            if timeWithoutQuest >= resetThreshold or missionTime >= resetThreshold then
                lplr.Character:BreakJoints()
                timeWithoutQuest = 0
                missionTime = 0
            end
        end)
        wait(1)
    end
end)
task.spawn(function()
    while true do
        for _, boss in ipairs(game.Workspace.Living:GetChildren()) do
            if boss.Name == "X Fighter" and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 then
                lplr.Character.HumanoidRootPart.CFrame = boss.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4.5)
                game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
                game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 2)
                break
            end
        end
        task.wait(0.1) 
    end
end)

