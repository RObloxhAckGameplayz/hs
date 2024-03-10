local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "⭐️Early Acesss Version⭐️ RobloxHackGamePlayz Script Hub v1.1.1 BETA", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local Tab = Window:MakeTab({
	Name = "Settings & Information",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddParagraph("THIS EARLY ACESSS SCRIPT IS NOT TO MEANT TO BE SHARED WITH ANY NON EARLY ACESSS MEMBERS.","Paragraph Content")
local Tab = Window:MakeTab({
	Name = "da hood.",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Fps Gui ",
	Callback = function()
        pcall(function()
            local espcolor = Color3.fromRGB(140, 69, 102)
            local wallhack_esp_transparency = .4
            local gui_hide_button = {Enum.KeyCode.LeftControl, "h"}
            local plrs = game:GetService("Players")
            local lplr = game:GetService("Players").LocalPlayer
            local TeamBased = false ; local teambasedswitch = "c"
            local presskeytoaim = true; local aimkey = "q"
            aimbothider = false; aimbothiderspeed = .5
            local Aim_Assist = false ; Aim_Assist_Key = {Enum.KeyCode.LeftControl, "z"}
            local espupdatetime = 5; autoesp = false; local charmsesp = true
            local movementcounting = true
            
            
            
            
            local mouselock = false
            local canaimat = true
            local lockaim = true; local lockangle = 5
            local ver = "2.4"
            local cam = game.Workspace.CurrentCamera
            local BetterDeathCount = true
            local ballisticsboost = 0
            
            local mouse = lplr:GetMouse()
            local switch = false
            local key = "k"
            local aimatpart = nil
            local lightesp = false
            
            local abs = math.abs
            
            local Gui = Instance.new("ScreenGui")
            local Move = Instance.new("Frame")
            local Main = Instance.new("Frame")
            local EspStatus = Instance.new("TextLabel")
            local st1 = Instance.new("TextLabel")
            local st1_2 = Instance.new("TextLabel")
            local st1_3 = Instance.new("TextBox")
            local Name = Instance.new("TextLabel")
            --Properties:
            
            Gui.Parent = plrs.LocalPlayer:WaitForChild("PlayerGui")
            
            
            local aimbotstatus = {"qc", "qr", "qe", "qd", "qi", "qt", "qs", "dd", "sp", "ql", "qa", "qd", "qs"}
            local gotstring = 0
            local function getrandomstring()
                gotstring = gotstring+666
                local str = ""
                local randomstring = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "g", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
                     "а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","о","п","р","с","т","у","ф","х","ч","щ","ъ","ы","ъ","э","ю","я", "`", "$", 
                    "0","1","2","3","4","5","6","7","8","9", }
                local counting123 = 0
                for i, v in ipairs(randomstring) do
                    counting123 = i
                end
                do
                    math.randomseed(tick()+gotstring)
                    for i = 3, math.random(1,100) do
                            math.randomseed(i+tick()+gotstring)
                            
                            local oneortwo = math.random(1,2)
                            if oneortwo == 2 then
                                math.randomseed(i+tick()+gotstring)
                                str = str..""..randomstring[math.random(1, counting123)]
                            else
                                math.randomseed(i+tick()+gotstring)
                                str = str..""..string.upper(randomstring[math.random(1, counting123)])
                            end
                        
                    end
                end
                return str
            end
            local mousedown = false
            local isonmovething = false
            local mouseoffset = Vector2.new()
            local mousedown = false
            local bspeed = 3584
            local aimbotoffset = {dd = ":", sp = " ", qa = "a", qb = "b",qc = "c", qd = "d", qe = "e", qf = "f", qg = "g" , qh = "h" , qi = "i", qj = "j", qk = "k", ql = "l", qm = "m", qn = "n", qo = "o", qp = "p", qq = "q", qr = "r", qs = "s", qt = "t", qu = "u", qv = "w", qx = "x", qy = "y", qz = "z"}
            
            
            
            Gui.Name = getrandomstring()
            
            Move.Name = getrandomstring()
            Move.Draggable = true
            Move.Parent = Gui
            Move.BackgroundColor3 = Color3.new(0.0431373, 1, 0.0745098)
            Move.BackgroundTransparency = 0.40000000596046
            Move.BorderSizePixel = 0
            Move.Position = UDim2.new(0.5, 0,0.018, 0)
            Move.Size = UDim2.new(0, 320, 0, 30)
            
            Move.MouseEnter:Connect(function()
                
                isonmovething = true
                
            end)
            Move.MouseLeave:Connect(function()
                
                isonmovething = mousedown and true or false
            end)
            mouse.Button1Down:connect(function()
                mousedown = true
                mouseoffset = Move.AbsolutePosition - Vector2.new(mouse.X, mouse.Y)
            end)
            mouse.Button1Up:connect(function()
                mousedown = false
            end)
            
            mouse.Move:Connect(function()
                if isonmovething == true and mousedown then
                    Move.Position = UDim2.new(0, mouseoffset.X + mouse.X, 0, mouseoffset.Y + mouse.Y)
                end
            end)
            local function uc (st)
                local ast = ""
                for i, v in ipairs(st) do
                    local let = aimbotoffset[v]
                    ast = ast..let
                end
                return ast
            end
            
            Main.Name = getrandomstring()
            Main.Parent = Move
            Main.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
            Main.BackgroundTransparency = 0.69999998807907
            Main.Position = UDim2.new(0, 0, 0.995670795, 0)
            Main.Size = UDim2.new(1.0000006, 0, 11.2, 0)
            
            st1.Name = getrandomstring()
            st1.Parent = Main
            st1.BackgroundColor3 = Color3.new(1, 1, 1)
            st1.BackgroundTransparency = 1
            st1.Position = UDim2.new(0, 0, 0, 0)
            st1.Size = UDim2.new(1, 0, 0.161862016, 0)
            st1.Font = Enum.Font.ArialBold
            st1.Text = uc(aimbotstatus)
            st1.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
            st1.TextScaled = true
            st1.TextSize = 14
            st1.TextWrapped = true
            
            st1_2.Name = getrandomstring()
            st1_2.Parent = Main
            st1_2.BackgroundColor3 = Color3.new(1, 1, 1)
            st1_2.BackgroundTransparency = 1
            st1_2.Position = UDim2.new(0, 0, 0.375590861, 0)
            st1_2.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
            st1_2.Font = Enum.Font.ArialBold
            st1_2.TextXAlignment = Enum.TextXAlignment.Left
            st1_2.Text = "Current ballistics: 0"
            st1_2.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
            st1_2.TextScaled = true
            st1_2.TextSize = 14
            st1_2.TextWrapped = true
            
            local aimbothiderbox = Instance.new("TextBox")
            aimbothiderbox.Name = getrandomstring()
            aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
            aimbothiderbox.Size = UDim2.new(1, 0,0.162, 0)
            aimbothiderbox.TextScaled = true
            aimbothiderbox.TextColor3 =Color3.fromRGB(255, 0, 0)
            aimbothiderbox.Position = UDim2.new(0, 0,0.853, 0)
            aimbothiderbox.BackgroundTransparency = 1
            aimbothiderbox.Parent = Main
            
            st1_3.Name = getrandomstring()
            st1_3.Parent = Main
            st1_3.BackgroundColor3 = Color3.new(1, 1, 1)
            st1_3.BackgroundTransparency = 1
            st1_3.Position = UDim2.new(0, 0, 0.18558608, 0)
            st1_3.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
            st1_3.Font = Enum.Font.ArialBold
            st1_3.Text = "Bullet speed = 3584"
            st1_3.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
            st1_3.TextScaled = true
            st1_3.TextSize = 14
            st1_3.TextWrapped = true
            local teambasedstatus = st1_3:Clone()
            teambasedstatus.Parent = Main
            teambasedstatus.TextScaled = true
            teambasedstatus.Position = UDim2.new(0, 0,.7, 0)
            teambasedstatus.Size = UDim2.new(1, 0,.1, 0)
            teambasedstatus.Name = getrandomstring()
            teambasedstatus.Text = "Team Based: "..tostring(TeamBased)
            local espstatustext = teambasedstatus:Clone()
            espstatustext.Name = getrandomstring()
            espstatustext.Position = UDim2.new(0, 0,0.58, 0)
            espstatustext.Text = "Esp loop :"..tostring(autoesp)
            espstatustext.Parent = Main
            local hide = Instance.new("TextButton")
            hide.Text = "_"
            hide.BackgroundTransparency = 1
            hide.TextScaled = true
            hide.TextWrapped = true
            hide.Size = UDim2.new(0.1, 0,1, 0)
            hide.Position = UDim2.new(0.9, 0,-0.15, 0)
            hide.Name = getrandomstring()
            hide.Parent = Move
            Name.Name = getrandomstring()
            Name.Parent = Move
            Name.BackgroundColor3 = Color3.new(1, 1, 1)
            Name.BackgroundTransparency = 1
            Name.Size = UDim2.new(0.838, 0, 1, 0)
            Name.Font = Enum.Font.Arial
            Name.Text = "FPS gui v"..ver
            Name.TextColor3 = Color3.new(0, 0, 0)
            Name.TextScaled = true
            Name.TextSize = 14
            Name.TextWrapped = true
            Name.TextXAlignment = Enum.TextXAlignment.Left
            local scr = Instance.new("ScrollingFrame")
            scr.Size = Main.Size
            scr.Position = Main.Position
            scr.ScrollBarThickness = 0
            scr.BackgroundTransparency = 1
            scr.Name = getrandomstring()
            Main.Size = UDim2.new(1, 0, 1, 0)
            Main.Position = UDim2.new(0,0,0,0)
            Main.Parent = scr
            scr.Parent = Move
            startpos = Main.Position
            Move.Active = true
            
            -- Scripts:
            hided = false
            hide.MouseButton1Click:Connect(function()
                if hided == false then
                    hided = true
                    Main:TweenPosition(UDim2.new(0, 0, -1.5, 0))
                else
                    hided = false
                    Main:TweenPosition(startpos)
                end
            end)
            
            
            aimbothiderbox.FocusLost:Connect(function()
                local numb = tonumber(aimbothiderbox.Text)
                if aimbothider == true then
                    aimbothiderbox.TextColor3 =Color3.fromRGB(11, 255, 19)
                else
                    aimbothiderbox.TextColor3 =Color3.fromRGB(255, 0, 0)
                end
                if numb ~= nil then
                    aimbothiderspeed = numb
                    if aimbothider == true then
                        aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
                    else
                        aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
                    end
                else
                    if aimbothider == true then
                        aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
                    else
                        aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
                    end
                end
            end)
            
            
            local plrsforaim = {}
            
            
            Move.Draggable = true
            Gui.ResetOnSpawn = false
            --Gui.Name = "Chat"
            Gui.DisplayOrder = 999
            pcall(function()
            if not game:GetService("CoreGui") then
                Gui.Parent = plrs.LocalPlayer.PlayerGui
            else
                Gui.Parent = game:GetService("CoreGui")
            end
            end)
            local espheadthing
            do
            local BillboardGui = Instance.new("BillboardGui")
            local PName = Instance.new("TextLabel")
            local Pdist = Instance.new("TextLabel")
            local ImageLabel = Instance.new("ImageLabel")
            local ImageLabel_2 = Instance.new("ImageLabel")
            --Properties:
            --BillboardGui.Parent = game.Workspace.Part
            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            BillboardGui.AlwaysOnTop = true
            BillboardGui.LightInfluence = 0
            BillboardGui.Size = UDim2.new(0, 100, 0, 46)
            BillboardGui.Name = "headoverthing"
            PName.Name = "PName"
            PName.Parent = BillboardGui
            PName.BackgroundColor3 = espcolor
            PName.BackgroundTransparency = 0.55000001192093
            PName.BorderSizePixel = 0
            PName.Size = UDim2.new(0, 100, 0, 23)
            PName.Font = Enum.Font.SourceSans
            PName.Text = "urmom"
            PName.TextColor3 = Color3.new(0, 0, 0)
            PName.TextScaled = true
            PName.TextSize = 14
            PName.TextWrapped = true
            st1.Text = uc(aimbotstatus)
            Pdist.Name = "Pdist"
            Pdist.Parent = BillboardGui
            Pdist.AnchorPoint = Vector2.new(0.5, 0)
            Pdist.BackgroundColor3 = espcolor
            Pdist.BackgroundTransparency = 0.55000001192093
            Pdist.BorderSizePixel = 0
            Pdist.Position = UDim2.new(0.5, 0, 0.5, 0)
            Pdist.Size = UDim2.new(0, 70, 0, 23)
            Pdist.Font = Enum.Font.SourceSans
            Pdist.Text = "666"
            Pdist.TextColor3 = Color3.new(0, 0, 0)
            Pdist.TextScaled = true
            Pdist.TextSize = 14
            Pdist.TextWrapped = true
            
            ImageLabel.Parent = BillboardGui
            ImageLabel.BackgroundColor3 = Color3.new(0.298039, 1, 0)
            ImageLabel.BackgroundTransparency = 1
            ImageLabel.BorderColor3 = espcolor
            ImageLabel.Position = UDim2.new(1, -15, 0.5, 0)
            ImageLabel.Rotation = 180
            ImageLabel.Size = UDim2.new(0, 15, 0, 23)
            ImageLabel.Image = "rbxassetid://2832171824"
            ImageLabel.ImageColor3 = espcolor
            ImageLabel.ImageTransparency = 0.55000001192093
            
            ImageLabel_2.Parent = BillboardGui
            ImageLabel_2.BackgroundColor3 = espcolor
            ImageLabel_2.BackgroundTransparency = 1
            ImageLabel_2.BorderColor3 = Color3.new(0.298039, 1, 0)
            ImageLabel_2.Position = UDim2.new(0, 0, 0.5, 0)
            ImageLabel_2.Rotation = 180
            ImageLabel_2.Size = UDim2.new(0, 15, 0, 23)
            ImageLabel_2.Image = "rbxassetid://2832177613"
            ImageLabel_2.ImageColor3 = espcolor
            ImageLabel_2.ImageTransparency = 0.55000001192093
            espheadthing = BillboardGui
            end
            
            
            
            f = {}
            f.UpdateHeadUI = function(v)
                
                    
                        if v.Adornee and v.Adornee ~= nil then
                            local destr = false
                            if TeamBased then
                                destr = true
                                local plr = plrs:GetPlayerFromCharacter(v.Adornee.Parent)
                                if plr and plr.Team and plr.Team.Name ~= lplr.Team.Name then
                                    destr = false
                                end
                            end
                            if lightesp == true then
                                v.Pdist.TextColor3 = Color3.new(1,1,1)
                                v.PName.TextColor3 = Color3.new(1,1,1)
                            else
                                v.Pdist.TextColor3 = Color3.new(0,0,0)
                                v.PName.TextColor3 = Color3.new(0,0,0)
                            end
                            local d = math.floor((cam.CFrame.p - v.Adornee.CFrame.p).magnitude)
                            v.Pdist.Text = tostring(d)
                            if d < 14 then
                                v.Enabled = false
                            else
                                v.Enabled = true
                            end
                            v.StudsOffset = Vector3.new(0,.6+d/14,0)
                            if destr then
                                v:Destroy()
                            end
                        else
                            v:Destroy()
                        end
                    
                
            end
            st1.Text = uc(aimbotstatus)
            local espforlder
            local partconverter = Instance.new("Part")
            --local headsupdatelist = {}
            st1_3.FocusLost:connect(function()
                if tonumber(st1_3.Text) then
                    bspeed = tonumber(st1_3.Text)
                else
                    
                end
            end)
            f.addesp = function()
                pcall(function()
                --print("ESP ran")
                if espforlder then
                    espforlder:Destroy()
                    espforlder = Instance.new("Folder")
                    espforlder.Parent = game.Workspace.CurrentCamera
                else
                    espforlder = Instance.new("Folder")
                    espforlder.Parent = game.Workspace.CurrentCamera
                end
                for i, v in pairs(espforlder:GetChildren()) do
                    v:Destroy()
                end
                for _, plr in pairs(plrs:GetChildren()) do
                    if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name then
                        if TeamBased == true then
                            
                            if plr.Team.Name ~= plrs.LocalPlayer.Team.Name  then
                                pcall(function()
                                local e = espforlder:FindFirstChild(plr.Name)
                                if not e then
                                    local fold = Instance.new("Folder", espforlder)
                                    fold.Name = plr.Name
                                    
                                    --partconverter.BrickColor = plr.Team.Color
                                    --local teamc = partconverter.Color
                                    for i, p in pairs(plr.Character:GetChildren()) do
                                        if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                                            if charmsesp then
                                            local urmom = Instance.new("BoxHandleAdornment")
                                            urmom.ZIndex = 10
                                            urmom.AlwaysOnTop = true
                                            urmom.Color3 = espcolor
                                            urmom.Size = p.Size
                                            urmom.Adornee = p
                                            urmom.Name = tick().." Ur mom has big gay"
                                            urmom.Transparency = wallhack_esp_transparency
                                            urmom.Parent = fold
                                            if p.Name == "Head" then
                                                local th = p:FindFirstChild("headoverthing")
                                                if not th then
                                                    local ht = espheadthing:Clone()
                                                    ht.PName.Text = p.Parent.Name
                                                    ht.Adornee = p
                                                    --table.insert(headsupdatelist, ht)
                                                    delay(0, function()
                                                        while wait(0.08) and plr and p do
                                                            f.UpdateHeadUI(ht)
                                                        end
                                                    end)
                                                    ht.Parent = p
                                                end
                                            end
                                            end
                                        end
                                    end
                                    plr.Character.Humanoid.Died:Connect(function()
                                        fold:Destroy()
                                    end)
                                    
                                end
                                end)
                            end
                        else
                            local e = espforlder:FindFirstChild(plr.Name)
                            if not e then
                                local fold = Instance.new("Folder", espforlder)
                                    fold.Name = plr.Name
                                    
                                    --partconverter.BrickColor = plr.Team.Color
                                    --local teamc = Move.BackgroundColor3
                                    for i, p in pairs(plr.Character:GetChildren()) do
                                        if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                                            pcall(function()
                                            if charmsesp then
                                            local urmom = Instance.new("BoxHandleAdornment")
                                            urmom.ZIndex = 10
                                            urmom.AlwaysOnTop = true
                                            urmom.Color3 = espcolor
                                            urmom.Size = p.Size
                                            urmom.Adornee = p
                                            urmom.Name = tick().." Ur mom has big gay"
                                            urmom.Transparency = wallhack_esp_transparency
                                            urmom.Parent = fold
                                            end
                                            if p.Name == "Head" then
                                                local th = p:FindFirstChild("headoverthing")
                                                if not th then
                                                    local ht = espheadthing:Clone()
                                                    ht.PName.Text = p.Parent.Name
                                                    ht.Adornee = p
                                                    delay(0, function()
                                                        while wait(0.08) and plr and p do
                                                            f.UpdateHeadUI(ht)
                                                        end
                                                    end)
                                                    --table.insert(headsupdatelist, ht)
                                                    ht.Parent = p
                                                end
                                            end
                                            end)
                                        end
                                    end
                                    plr.Character.Humanoid.Died:Connect(function()
                                        fold:Destroy()
                                    end)
                            end
                        end
                        
                        
                    end
                end
                end)
            end
            
            local uis = game:GetService("UserInputService")
            local bringall = false
            local hided2 = false
            local upping = false
            local downing = false
            mouse.KeyDown:Connect(function(a)
                
                if a == "t" then
                    --print("worked1")
                    f.addesp()
                elseif a == gui_hide_button[2] and uis:IsKeyDown(gui_hide_button[1]) then
                    if hided2 == false then
                        hided2 = true
                        autoesp =false
                        if espforlder then
                            espforlder:Destroy()
                        end
                        Gui.Enabled = false
                    else
                        Gui.Enabled = true
                        hided2 = false
                    end
                        
                elseif a == "y" then
                    if aimbothider == false then
                        aimbothider = true
                        if aimbothider == true then
                        aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
                    else
                        aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
                    end
                    else
                        
                        aimbothider = false
                        if aimbothider == true then
                        aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
                    else
                        aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
                    end
                    end
                    if aimbothider == true then
                        aimbothiderbox.TextColor3 =Color3.fromRGB(11, 255, 19)
                    else
                        aimbothiderbox.TextColor3 =Color3.fromRGB(255, 0, 0)
                    end
                elseif a == "l" then
                    if not uis:IsKeyDown(Enum.KeyCode.LeftControl) then
                        if autoesp == false then
                            autoesp = true
                        else
                            autoesp = false
                        end
                    else
                        if lightesp == true then
                            lightesp = false
                        else
                            lightesp = true
                        end
                    end
                elseif a == "]" then
                    upping = true
                    downing = false
                elseif a== "[" then
                    downing = true
                    upping = false
                elseif a == Aim_Assist_Key[2] and uis:IsKeyDown(Aim_Assist_Key[1]) then
                    if Aim_Assist == true then
                        Aim_Assist = false
                        --print("disabled")
                    else
                        Aim_Assist = true
                    end
                end
                if a == "j" then
                    if mouse.Target then
                        mouse.Target:Destroy()
                    end
                end
                if a == key then
                    if switch == false then
                        switch = true
                    else
                        switch = false
                        if aimatpart ~= nil then
                            aimatpart = nil
                        end
                    end
                elseif a == "b" and uis:IsKeyDown(Enum.KeyCode.LeftControl) and not uis:IsKeyDown(Enum.KeyCode.R) then
                    if movementcounting then
                        movementcounting = false
                    else
                        movementcounting = true
                    end
                elseif a == teambasedswitch then
                    if TeamBased == true then
                        TeamBased = false
                        teambasedstatus.Text = "Team Based: "..tostring(TeamBased)
                    else
                        TeamBased = true
                        teambasedstatus.Text = "Team Based: "..tostring(TeamBased)
                    end
                elseif a == "b" and uis:IsKeyDown(Enum.KeyCode.LeftControl) and uis:IsKeyDown(Enum.KeyCode.R) then
                    ballisticsboost = 0
                elseif a == aimkey then
                    if not aimatpart then
                        local maxangle = math.rad(20)
                        for i, plr in pairs(plrs:GetChildren()) do
                            if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
                                if TeamBased == true then
                                    if plr.Team.Name ~= lplr.Team.Name then
                                        local an = checkfov(plr.Character.HumanoidRootPart)
                                        if an < maxangle then
                                            maxangle = an
                                            aimatpart = plr.Character.HumanoidRootPart
                                        end
                                    end
                                else
                                    local an = checkfov(plr.Character.HumanoidRootPart)
                                        if an < maxangle then
                                            maxangle = an
                                            aimatpart = plr.Character.HumanoidRootPart
                                        end
                                        --print(plr)
                                end
                                local old = aimatpart
                                plr.Character.Humanoid.Died:Connect(function()
                                    --print("died")
                                    if aimatpart and aimatpart == old then
                                        aimatpart = nil
                                    end
                                end)
                                
                            end
                        end
                    else
                        aimatpart = nil
                        canaimat = false
                        delay(1.1, function()
                            canaimat = true
                        end)
                    end
                end
            end)
            
            function getfovxyz (p0, p1, deg)
                local x1, y1, z1 = p0:ToOrientation()
                local cf = CFrame.new(p0.p, p1.p)
                local x2, y2, z2 = cf:ToOrientation()
                local d = math.deg
                if deg then
                    return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
                else
                    return Vector3.new((x1-x2), (y1-y2), (z1-z2))
                end
            end
            
            
            function aimat(part)
                if part then
                    --print(part)
                    local d = (cam.CFrame.p - part.CFrame.p).magnitude
                    local calculatedrop
                    local timetoaim = 0
                    local pos2 = Vector3.new()
                    if movementcounting == true then
                        timetoaim = d/bspeed
                        pos2 = part.Velocity * timetoaim
                    end
                    local minuseddrop = (ballisticsboost+50)/50
                    if ballisticsboost ~= 0 then
                        calculatedrop = d - (d/minuseddrop)
                        
                    else
                        calculatedrop = 0
                    end
                    --print(calculatedrop)
                    local addative = Vector3.new()
                    if movementcounting then
                        addative = pos2
                    end
                    local cf = CFrame.new(cam.CFrame.p, (addative + part.CFrame.p+ Vector3.new(0, calculatedrop, 0)))
                    if aimbothider == true or Aim_Assist == true then
                        cam.CFrame = cam.CFrame:Lerp(cf, aimbothiderspeed)
                    else
                        
                        cam.CFrame = cf
                    end
                    --print(cf)
                end
            end
            function checkfov (part)
                local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
                local angle = math.abs(fov.X) + math.abs(fov.Y)
                return angle
            end
            pcall(function()
                delay(0, function()
                    while wait(.32) do
                        if Aim_Assist and not aimatpart and canaimat and lplr.Character and lplr.Character.Humanoid and lplr.Character.Humanoid.Health > 0 then
                            for i, plr in pairs(plrs:GetChildren()) do
                                
                                
                                    local minangle = math.rad(5.5)
                                    local lastpart = nil
                                    local function gg(plr)
                                        pcall(function()
                                        if plr.Name ~= lplr.Name and plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Character.Head then
                                            local raycasted = false
                                            local cf1 = CFrame.new(cam.CFrame.p, plr.Character.Head.CFrame.p) * CFrame.new(0, 0, -4)
                                            local r1 = Ray.new(cf1.p, cf1.LookVector * 9000)
                                            local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
                                            local dist = (plr.Character.Head.CFrame.p- pos).magnitude
                                            if dist < 4 then
                                                raycasted = true
                                            end
                                            if raycasted == true then
                                                local an1 = getfovxyz(cam.CFrame, plr.Character.Head.CFrame)
                                                local an = abs(an1.X) + abs(an1.Y)
                                                if an < minangle then
                                                    minangle = an
                                                    lastpart = plr.Character.Head
                                                end
                                            end
                                        end
                                        end)
                                    end
                                    if TeamBased then
                                        if plr.Team.Name ~= lplr.Team.Name then
                                            gg(plr)
                                        end
                                    else
                                        gg(plr)
                                    end
                                    --print(math.deg(minangle))
                                    if lastpart then
                                        aimatpart = lastpart
                                        aimatpart.Parent.Humanoid.Died:Connect(function()
                                            if aimatpart == lastpart then
                                                aimatpart = nil
                                            end
                                        end)
                                    
                                end
                            end
                        end
                    end
                end)
            end)
            local oldheadpos
            local lastaimapart
            game:GetService("RunService").RenderStepped:Connect(function(dt)
                if uis:IsKeyDown(Enum.KeyCode.RightBracket) or uis:IsKeyDown(Enum.KeyCode.LeftBracket) then
                    if upping then
                        ballisticsboost = ballisticsboost + dt/1.9
                    elseif downing then
                        ballisticsboost = ballisticsboost - dt/1.9
                    end
                end
                if movementcounting then
                    st1_2.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
                    st1_2.Text = "Current ballistics: "..tostring(math.floor(ballisticsboost*10)/10)
                else
                    st1_2.TextColor3 = Color3.new(1,0,0)
                end
                espstatustext.Text = "Esp loop :"..tostring(autoesp)
                if aimatpart and lplr.Character and lplr.Character.Head then
                    if BetterDeathCount and lastaimapart and lastaimapart == aimatpart then
                        local dist = (oldheadpos - aimatpart.CFrame.p).magnitude
                        if dist > 40 then
                            aimatpart = nil
                        end
                    end
                    lastaimapart = aimatpart
                    oldheadpos = lastaimapart.CFrame.p
                    do 
                        if aimatpart.Parent == plrs.LocalPlayer.Character then
                            aimatpart = nil
                        end
                        aimat(aimatpart)
                        pcall(function()
                            if Aim_Assist == true then
                                local cf1 = CFrame.new(cam.CFrame.p, aimatpart.CFrame.p) * CFrame.new(0, 0, -4)
                                local r1 = Ray.new(cf1.p, cf1.LookVector * 1000)
                                local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
                                local dist = (aimatpart.CFrame.p- pos).magnitude
                                if obj then
                                    --print(obj:GetFullName())
                                end
                                if not obj or dist > 6 then
                                    aimatpart = nil
                                    --print("ooof")
                                end
                                canaimat = false
                                delay(.5, function()
                                    canaimat = true
                                end)
                            end
                        end)
                    end
                    
                    
                    
                end
            end)
            
            
            delay(0, function()
                while wait(espupdatetime) do
                    if autoesp == true then
                        pcall(function()
                        f.addesp()
                        end)
                    end
                end
            end)
            --warn("loaded")
            end)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Faded Script",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded/main/YesEpic", true))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Nyula",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nyulachan/nyula/main/nyuladhm", true))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Oblivion",
	Callback = function()
        Loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptOblivion/Oblivion/main/loader.lua"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Beamed Ware",
	Callback = function()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "crimskid",
	Callback = function()
        loadstring(game:HttpGet("https://github.com/finobe7650/goodbyedahoodmodded/blob/main/crackthisidgaffinobeontop"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "Blox Fruits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Alyheum Hub NOT WORKING FOR MAC",
	Callback = function()
        _G.Language = "EN" -- EN ( English ) or TH ( Thai )
v=1;loadstring(game:HttpGet("https://alchemyhub.xyz/v2"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Farm Chest Works for all exec",
	Callback = function()
        v=3;loadstring(game:HttpGet("https://alchemyhub.xyz/v2"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Best Hub (Key System)",
	Callback = function()
        --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "World",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Color Correction",
	Callback = function()
        local l = game:GetService("Lighting")

local col = Instance.new("ColorCorrectionEffect", l)
col.Brightness = 0
col.Contrast = 0.01
col.Saturation = 0.67
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Low GFX",
	Callback = function()
        for _,v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Part"
            or v.ClassName == "SpawnLocation"
            or v.ClassName == "WedgePart"
            or v.ClassName == "Terrain"
            or v.ClassName == "MeshPart" then
            v.Material = "Plastic"
            end
            end
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Better FPS % Coded by nothing",
	Callback = function()
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "No Fog",
	Callback = function()
        game.Lighting.FogEnd = 50
game.Lighting.FogStart = 10
game.Lighting.OutdoorAmbient = Color3.fromRGB(60, 60, 60)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "Funky Friday",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Autoplayer.",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/RandomScript/main/FunkyFridayMobile"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "Blade Ball",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Bedol Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Hung Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JakeisSoBad/HungHub/main/Main"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "KAT",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "ill upload more here next week",
	Callback = function()
        -- Knife Ability Test GUI (So many features)
loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Knife-Ability-Test/main/Gui'))()

      		print("button pressed")

  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "Murder Mystery 2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "key system ik a lot of key system",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KidichiHB/Kidachi/main/Scripts/MM2_V2"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "The Strongest BattleGrounds",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Sillyware!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/Statue-Hub/Lua/Main"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Good TSB scriptl",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/TSBUtils.lua"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "Phantom Forces PC ONLY",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Slient Aim & Esp",
	Callback = function()
        local scriptSource = [[
    local silentaim = {
        enabled = true,
        fovEnabled = true,
        fovSize = 500,
        fovCircleEnabled = true,
        fovCircleColor = Color3.fromRGB(255, 255, 255),
        hitPercent = 100,
        headShotPercent = 100
    }
    local enemyesp = {
        boxCorners = true,
        boxLineSize = 0.33, -- 0.5 max
        boxColor = Color3.fromRGB(255, 99, 99),
        boxCornerOutline = true,
        names = true,
        nameSize = 12,
        nameOffset = 6,
        nameColor = Color3.fromRGB(255, 255, 255),
        nameOutline = true,
        healthBars = true,
        healthBarOffset = -5,
        healthBarThickness = 2,
        healthBarOutline = true,
        skeleton = true,
        skeletonThickness = 1,
        skeletonColor = Color3.fromRGB(255, 255, 255)
    }

    local requireModule
    for i, v in next, getgc(false) do
        if type(v) == "function" and debug.getinfo(v).name == "require" and islclosure(v) then
            requireModule = v
            break
        end
    end

    local publicSettings = requireModule("PublicSettings")
    local replication = requireModule("ReplicationInterface")
    local bulletObject = requireModule("BulletObject")
    local network = requireModule("NetworkClient")

    local runService = game:GetService("RunService")
    local workspace = game:GetService("Workspace")
    local players = game:GetService("Players")

    local currentCamera = workspace.CurrentCamera
    local localplayer = players.LocalPlayer
    local ignore = workspace.Ignore
    local new = bulletObject.new
    local zero = Vector3.zero
    local send = network.send
    local dot = zero.Dot

    local espData = {}
    local healthbarData = game:HttpGet("https://i.imgur.com/FpnD6XG.png")
    local defaultProperties = {
        Thickness = 1,
        Filled = false,
        Transparency = 1,
        Outline = false,
        Center = true,
        Visible = false
    }

    local fovCircle = Drawing.new("Circle")
    fovCircle.Position = currentCamera.ViewportSize * 0.5
    fovCircle.Visible = silentaim.fovCircleEnabled
    fovCircle.Color = silentaim.fovCircleColor
    fovCircle.Radius = silentaim.fovSize
    fovCircle.Transparency = 1
    fovCircle.Filled = false
    fovCircle.NumSides = 32

    local function getClosest(partName, fov)
        local distance, position, closestPlayer, part = fov or math.huge, nil, nil, nil
        fovCircle.Position = currentCamera.ViewportSize * 0.5
    
        replication.operateOnAllEntries(function(player, entry)
            local character = entry._thirdPersonObject and entry._thirdPersonObject._characterHash

            if character and player.Team ~= localplayer.Team then
                local screenPosition, onscreen = currentCamera:WorldToViewportPoint(character[partName].Position)
                local screenDistance = (Vector2.new(screenPosition.X, screenPosition.Y) - fovCircle.Position).Magnitude
    
                if screenPosition.Z > 0 and screenDistance < distance then
                    part = character[partName]
                    position = part.Position
                    distance = screenDistance
                    closestPlayer = entry
                end
            end
        end)

        return position, closestPlayer, part
    end

    local function trajectory(o, a, t, s, e)
        local f = -a
        local ld = t - o
        local a = dot(f, f)
        local b = 4 * dot(ld, ld)
        local k = (4 * (dot(f, ld) + s * s)) / (2 * a)
        local v = (k * k - b / a) ^ 0.5
        local t, t0 = k - v, k + v

        t = t < 0 and t0 or t; t = t ^ 0.5
        return f * t / 2 + (e or zero) + ld / t, t
    end

    local missChance
    local headChance
    function network:send(name, ...)
        if name == "newbullets" and silentaim.enabled and missChance <= silentaim.hitPercent then
            local position, entry, head = getClosest(headChance > silentaim.headShotPercent and "Torso" or "Head", silentaim.fovEnabled and silentaim.fovSize)

            if position then
                local a, data, time, b = ...
                local velocity = trajectory(data.firepos, publicSettings.bulletAcceleration, position, data.bullets[1][1].Magnitude, entry._velspring.t)

                for i = 1, #data.bullets do
                    data.bullets[i][1] = velocity
                end

                return send(self, name, a, data, time, b)
            end
        end

        return send(self, name, ...)
    end

    function bulletObject.new(data)
        if silentaim.enabled and data.onplayerhit and missChance <= silentaim.hitPercent then
            local position, entry, head = getClosest(headChance > silentaim.headShotPercent and "Torso" or "Head", silentaim.fovEnabled and silentaim.fovSize)

            if position then
                data.velocity = trajectory(data.position, publicSettings.bulletAcceleration, position, data.velocity.Magnitude, entry._velspring.t)
            end
        end

        return new(data)
    end

    task.spawn(function()
        while task.wait(0.1) do
            missChance = math.random(1, 100)
            headChance = math.random(1, 100)
        end
    end)

    function draw(shape)
        local drawing = Drawing.new(shape)

        for i, v in pairs(defaultProperties) do
            pcall(function()
                drawing[i] = v
            end)
        end

        return drawing
    end

    function getSquarePositions(character)
        local top = currentCamera:WorldToViewportPoint(character.Head.Position + Vector3.yAxis)
        local middle = currentCamera:WorldToViewportPoint(character.Torso.Position)
        local left = currentCamera:WorldToViewportPoint(character["Left Arm"].Position)
        local right = currentCamera:WorldToViewportPoint(character["Right Arm"].Position)

        local leftSize, rightSize
        if left.X < right.X then
            leftSize = "Left Arm"
            rightSize = "Right Arm"
        else
            leftSize = "Left Arm"
            rightSize = "Right Arm"
        end

        left = currentCamera:WorldToViewportPoint(character[leftSize].Position - currentCamera.CFrame.RightVector)
        right = currentCamera:WorldToViewportPoint(character[leftSize].Position + currentCamera.CFrame.RightVector)

        local size = Vector2.new(math.abs(left.X - right.X) * 2, (middle.Y - top.Y) * 2.2)

        return Vector2.new(middle.X - size.X * 0.5, top.Y), size
    end

    runService.Heartbeat:Connect(function()
        local alive = ignore:FindFirstChild("RefPlayer")

        replication.operateOnAllEntries(function(player, entry)
            local data = espData[player]

            if not data then
                data = {}
                data.visible = false
                data.entry = entry
                data.drawings = {
                    line100 = draw("Line"),
                    line101 = draw("Line"),
                    line110 = draw("Line"),
                    line111 = draw("Line"),
                    line120 = draw("Line"),
                    line121 = draw("Line"),
                    line130 = draw("Line"),
                    line131 = draw("Line"),
                    line000 = draw("Line"),
                    line001 = draw("Line"),
                    line010 = draw("Line"),
                    line011 = draw("Line"),
                    line020 = draw("Line"),
                    line021 = draw("Line"),
                    line030 = draw("Line"),
                    line031 = draw("Line"),
                    name = draw("Text"),
                    skeletonhead = draw("Line"),
                    skeletonlarm = draw("Line"),
                    skeletonrarm = draw("Line"),
                    skeletonlleg = draw("Line"),
                    skeletonrleg = draw("Line"),
                    healthbaroutline = draw("Square"),
                    healthbarimage = draw("Image"),
                    healthbarsquare = draw("Square"),
                }
                for drawingName, drawing in next, data.drawings do
                    if string.find(drawingName, "line1") then
                        drawing.Thickness = 3
                        drawing.Color = Color3.fromRGB(0, 0, 0)
                    end
                end
                data.drawings.name.Text = player.Name
                data.drawings.healthbarsquare.Filled = true
                data.drawings.healthbaroutline.Filled = true
                data.drawings.healthbaroutline.Color = Color3.fromRGB(0, 0, 0)
                data.drawings.healthbarimage.Data = healthbarData
                data.drawings.healthbarimage.Visible = true
                data.setVisibility = function(visible)
                    data.drawings.name.Visible = visible and enemyesp.names
                    data.drawings.line000.Visible = visible and enemyesp.boxCorners
                    data.drawings.line001.Visible = visible and enemyesp.boxCorners
                    data.drawings.line010.Visible = visible and enemyesp.boxCorners
                    data.drawings.line011.Visible = visible and enemyesp.boxCorners
                    data.drawings.line020.Visible = visible and enemyesp.boxCorners
                    data.drawings.line021.Visible = visible and enemyesp.boxCorners
                    data.drawings.line030.Visible = visible and enemyesp.boxCorners
                    data.drawings.line031.Visible = visible and enemyesp.boxCorners
                    data.drawings.line100.Visible = visible and enemyesp.boxCorners and enemyesp.boxCornerOutline
                    data.drawings.line101.Visible = visible and enemyesp.boxCorners and enemyesp.boxCornerOutline
                    data.drawings.line110.Visible = visible and enemyesp.boxCorners and enemyesp.boxCornerOutline
                    data.drawings.line111.Visible = visible and enemyesp.boxCorners and enemyesp.boxCornerOutline
                    data.drawings.line120.Visible = visible and enemyesp.boxCorners and enemyesp.boxCornerOutline
                    data.drawings.line121.Visible = visible and enemyesp.boxCorners and enemyesp.boxCornerOutline
                    data.drawings.line130.Visible = visible and enemyesp.boxCorners and enemyesp.boxCornerOutline
                    data.drawings.line131.Visible = visible and enemyesp.boxCorners and enemyesp.boxCornerOutline
                    data.drawings.skeletonhead.Visible = visible and enemyesp.skeleton
                    data.drawings.skeletonlarm.Visible = visible and enemyesp.skeleton
                    data.drawings.skeletonrarm.Visible = visible and enemyesp.skeleton
                    data.drawings.skeletonlleg.Visible = visible and enemyesp.skeleton
                    data.drawings.skeletonrleg.Visible = visible and enemyesp.skeleton
                    data.drawings.healthbaroutline.Visible = visible and enemyesp.healthBars and enemyesp.healthBarOutline
                    data.drawings.healthbarimage.Transparency = visible and enemyesp.healthBars and 1 or 0
                    data.drawings.healthbarimage.Visible = visible and enemyesp.healthBars
                    data.drawings.healthbarsquare.Visible = visible and enemyesp.healthBars
                    data.visible = visible
                end

                espData[player] = data
            end

            if (not entry._alive and data.visible) or not alive then
                data.setVisibility(false)
            end
        end)

        if alive and alive:FindFirstChild("HumanoidRootPart") then
            for player, data in next, espData do
                if data.entry._alive and data.entry._player.Team ~= players.LocalPlayer.Team then
                    local character = data.entry._thirdPersonObject and data.entry._thirdPersonObject._characterHash

                    if character then
                        local screenPosition, onScreen = currentCamera:WorldToViewportPoint(character.Head.Position)

                        if onScreen and screenPosition.Z > 0 then
                            if not data.visible then
                                data.setVisibility(true)
                            end
                            
                            local boxPosition, boxSize, middle
                            if enemyesp.boxCorners or enemyesp.names or enemyesp.healthBars then
                                boxPosition, boxSize = getSquarePositions(character)
                                middle = boxPosition + boxSize * 0.5
                            end

                            local p0, p1, p2, p3, sx, sy, p00, p01, p10, p11, p20, p21, p30, p31
                            if enemyesp.boxCorners then
                                sx, sy = Vector2.new(boxSize.X, 0), Vector2.new(0, boxSize.Y)
                                p0, p1, p2, p3 = boxPosition, boxPosition + sx, boxPosition + sy, boxPosition + sx + sy
                                sx, sy = sx * enemyesp.boxLineSize, sy * enemyesp.boxLineSize
                                p00, p01, p10, p11, p20, p21, p30, p31 = p0 + sx, p0 + sy, p1 - sx, p1 + sy, p2 + sx, p2 - sy, p3 - sx, p3 - sy

                                data.drawings.line000.From = p0
                                data.drawings.line001.From = p0
                                data.drawings.line000.To = p00
                                data.drawings.line001.To = p01
                                data.drawings.line010.From = p1
                                data.drawings.line011.From = p1
                                data.drawings.line010.To = p10
                                data.drawings.line011.To = p11
                                data.drawings.line020.From = p2
                                data.drawings.line021.From = p2
                                data.drawings.line020.To = p20
                                data.drawings.line021.To = p21
                                data.drawings.line030.From = p3
                                data.drawings.line031.From = p3
                                data.drawings.line030.To = p30
                                data.drawings.line031.To = p31

                                for drawingName, drawing in next, data.drawings do
                                    if string.find(drawingName, "line0") then
                                        drawing.Color = enemyesp.boxColor
                                    end
                                end
                            end
                            
                            if data.drawings.line100.Visible then
                                data.drawings.line100.From = p0
                                data.drawings.line101.From = p0
                                data.drawings.line100.To = p00
                                data.drawings.line101.To = p01
                                data.drawings.line110.From = p1
                                data.drawings.line111.From = p1
                                data.drawings.line110.To = p10
                                data.drawings.line111.To = p11
                                data.drawings.line120.From = p2
                                data.drawings.line121.From = p2
                                data.drawings.line120.To = p20
                                data.drawings.line121.To = p21
                                data.drawings.line130.From = p3
                                data.drawings.line131.From = p3
                                data.drawings.line130.To = p30
                                data.drawings.line131.To = p31
                            end

                            if enemyesp.names then
                                local name = data.drawings.name
                                name.Position = Vector2.new(middle.X, boxPosition.Y + (enemyesp.nameOffset < 0 and boxSize.Y or 0) - enemyesp.nameOffset - enemyesp.nameSize * 0.5)
                                name.Size = enemyesp.nameSize
                                name.Color = enemyesp.nameColor
                                name.Outline = enemyesp.nameOutline
                            end

                            if enemyesp.healthBars then
                                local healthbarimage = data.drawings.healthbarimage
                                local healthbarsquare = data.drawings.healthbarsquare
                                local health = (data.entry._healthstate.health0 ~= 0 and data.entry._healthstate.health0 or 100) * 0.01
                                local squareSize = boxSize.Y * (1 - health)
                                healthbarimage.Position = Vector2.new(boxPosition.X + (enemyesp.healthBarOffset > 0 and boxSize.X or 0) + enemyesp.healthBarOffset - enemyesp.healthBarThickness * 0.5, boxPosition.Y)
                                healthbarimage.Size = Vector2.new(enemyesp.healthBarThickness, boxSize.Y)
                                healthbarsquare.Position = healthbarimage.Position
                                healthbarsquare.Size = Vector2.new(enemyesp.healthBarThickness, squareSize)
                            end

                            if data.drawings.healthbaroutline.Visible then
                                local healthbaroutline = data.drawings.healthbaroutline
                                healthbaroutline.Position = data.drawings.healthbarimage.Position - Vector2.new(1, 1)
                                healthbaroutline.Size = data.drawings.healthbarimage.Size + Vector2.new(2, 2)
                            end

                            if enemyesp.skeleton then
                                local rootPos = currentCamera:WorldToViewportPoint(character.Torso.Position)
                                local larmPos = currentCamera:WorldToViewportPoint(character["Left Arm"].Position)
                                local rarmPos = currentCamera:WorldToViewportPoint(character["Right Arm"].Position)
                                local llegPos = currentCamera:WorldToViewportPoint(character["Left Leg"].Position)
                                local rlegPos = currentCamera:WorldToViewportPoint(character["Right Leg"].Position)
                                
                                local drawings = data.drawings
                                drawings.skeletonhead.To = Vector2.new(screenPosition.X, screenPosition.Y)
                                drawings.skeletonlarm.To = Vector2.new(larmPos.X, larmPos.Y)
                                drawings.skeletonrarm.To = Vector2.new(rarmPos.X, rarmPos.Y)
                                drawings.skeletonlleg.To = Vector2.new(llegPos.X, llegPos.Y)
                                drawings.skeletonrleg.To = Vector2.new(rlegPos.X, rlegPos.Y)

                                local fromPos = Vector2.new(rootPos.X, rootPos.Y)
                                for drawingName, drawing in next, drawings do
                                    if string.find(drawingName, "skeleton") then
                                        drawing.Thickness = enemyesp.skeletonThickness
                                        drawing.Color = enemyesp.skeletonColor
                                        drawing.From = fromPos
                                    end
                                end
                            end
                        elseif data.visible then
                            data.setVisibility(false)
                        end
                    end
                end
            end
        end
    end)

    players.PlayerRemoving:Connect(function(player)
        player = espData[player]

        if player then
            player.setVisibility(false)

            for _, drawing in next, player.drawings do
                drawing:Remove()
            end

            espData[player] = nil
        end
    end)
]]

local requireModule
for i, v in next, getgc(false) do
    if type(v) == "function" and debug.getinfo(v).name == "require" and islclosure(v) then
        requireModule = v
        break
    end
end

if requireModule then
    loadstring(scriptSource)()
else
    queue_on_teleport("task.wait(5);" .. scriptSource)
    setfflag("DebugRunParallelLuaOnMainThread", "True")
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "Break In 2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Break in 2 Script!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RObloxhAckGameplayz/ScriptBreakin2/main/README.md", true))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "Bedwars (2)",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Vape V4",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "Godsploit",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/GodSploit/main/LoadString"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = ".gg/render ",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/installer.lua'))()('RIA-63151c93-51eb-49fb-a874-3dfde7ccf290')
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
