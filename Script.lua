local Loop = false
local Table_A_500 = {}

local GUI_MAIN                           = Instance.new('ScreenGui', game.CoreGui)
local E1                         = Instance.new('TextBox', GUI_MAIN)
local E2                         = Instance.new('TextButton', E1)


GUI_MAIN.Name                      = "Sword Race farm coin"


E1.Size                    = UDim2.new(0,200,0,30)
E1.BackgroundTransparency  = 0.5
E1.BackgroundColor         = BrickColor.new('Fossil')
E1.BorderSizePixel         = 0
E1.Position                = UDim2.new(0.5,-100,0,0)
E1.Text                    = "1"
E1.TextColor3              = Color3.new(1,1,1)
E1.TextStrokeTransparency  = 1
E1.TextWrapped             = true
E1.FontSize                = 'Size24'
E1.Font                    = 'SourceSansBold'

E2.Size                    = UDim2.new(0,200,0,30)
E2.BackgroundTransparency  = 0.5
E2.BackgroundColor         = BrickColor.new('Fossil')
E2.BorderSizePixel         = 0
E2.Position                = UDim2.new(0.5,-100,0,0)
E2.Text                    = "Start farm"
E2.TextColor3              = Color3.new(1,1,1)
E2.TextStrokeTransparency  = 1
E2.TextWrapped             = true
E2.FontSize                = 'Size24'
E2.Font                    = 'SourceSansBold'
E2.MouseButton1Down:Connect(function()
Loop = not Loop
repeat
local args = {
    [1] = E1.Text
}

game:GetService("ReplicatedStorage").Remotes.RF_WeaponDraw:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.RF_WeaponDraw:InvokeServer(unpack(args))
until Loop == false
end)

