local bin = GetPartFromPort(1, "Bin")
local sign = GetPartFromPort(2, "Sign")

while true do
sign:Configure({ SignText = bin:GetAmount() })
wait()
end



local button = GetPartFromPort(1, "Button")
local sign = GetPartFromPort(2, "Sign")

button:Connect("OnClick", function(player)
print("Bruh")
end)



local reactor = GetPartFromPort(1, "Reactor")
local dispenser = GetPartFromPort(2, "Dispenser")

while wait() do
    local fuel = reactor:GetFuel()
    for i = 1, #fuel do
        if fuel[i] <= 0 then
            dispenser:Trigger()
            wait(1)
            dispenser:Trigger()
        end
    end
end


local port = GetPartFromPort(13, "Port")

port:Configure({ PortID = PortID + 11q })


while true do

pcs = {}
for i = 1,12 do
bin = GetPartFromPort(i, "PowerCell")
x = bin:GetAmount()
table.insert(pcs, x)
end












local sw2 = GetPartFromPort(2, "Switch")
local P1 = GetPort(1)
local P3 = GetPort(3)
local thr = GetPartFromPort(1, "Thruster")
local thrust = 0

thr:Configure({ Propulsion = 0 })
sw2:Configure({ SwitchValue = false })

P1:Connect("Triggered", function()
if thrust <= 90 and thrust ~= 5 then
sw2:Configure({ SwitchValue = true })
thrust = thrust + 10
thr:Configure({ Propulsion = thrust })
elseif thrust == 5 then
sw2:Configure({ SwitchValue = true })
thrust = thrust + 5
thr:Configure({ Propulsion = thrust })
end
end)

P3:Connect("Triggered", function()
sw2:Configure({ SwitchValue = false })
thrust = 5
thr:Configure({ Propulsion = thrust })
end)



local bin1 = GetPartFromPort(1, "Bin")
local bin2 = GetPartFromPort(2, "Bin")
local con1 = GetPartFromPort(1, "Container")
local con2 = GetPartFromPort(2, "Container")
local sign = GetPartFromPort(3, "Sign")

local WP = ( con1:GetAmount() + con2:GetAmount() ) / 200
local UP = ( bin1:GetAmount() + bin2:GetAmount() ) / 20

while true do
wait()
sign:Configure({ SignText = "Coolant: " .. WP .. "% \nFuel: " .. UP .. "% " })
end



local bin1 = GetPartFromPort(1, "Bin")
local bin2 = GetPartFromPort(2, "Bin")
local bin3 = GetPartFromPort(3, "Bin")
local bin4 = GetPartFromPort(4, "Bin")
local sign = GetPartFromPort(5, "Sign")

local IP = ( bin1:GetAmount() + bin2:GetAmount() + bin3:GetAmount() + bin4:GetAmount() ) / 40 

while true do
wait()
sign:Configure({ SignText = "Ice: " .. IP .. "% " })
end



local port = GetPartFromPort(1, "Port")
local KB = GetPartFromPort(1, "Keyboard")
local switch4 = GetPartFromPort(4, "Switch")
local switch3 = GetPartFromPort(3, "Switch")
local switch2 = GetPartFromPort(2, "Switch")

KB:Connect("TextInputted", function(text)
if text:sub(1, -2) == "Uranium" or text:sub(1, -2) == "uranium" then
print(text)
switch4:Configure({ SwitchValue = true })
elseif text:sub(1, -2) == "Ice" or text:sub(1, -2) == "ice" then
print(text)
switch2:Configure({ SwitchValue = true })
elseif text:sub(1, -2) == "Helium" or text:sub(1, -2) == "helium" then
print(text)
switch3:Configure({ SwitchValue = true })
elseif text:sub(1, -2) == "Stop" or text:sub(1, -2) == "stop" then
switch4:Configure({ SwitchValue = false })
switch3:Configure({ SwitchValue = false })
switch2:Configure({ SwitchValue = false })
end
end)







local sw2 = GetPartFromPort(2, "Switch")
local P1 = GetPort(1)
local P3 = GetPort(3)
local thr = GetPartFromPort(1, "Thruster")
local thrust = 0

thr:Configure({ Propulsion = 0 })
sw2:Configure({ SwitchValue = false })

P1:Connect("Triggered", function()
if thrust <= 90 then
thrust = thrust + 10
print(thrust)
thr:Configure({ Propulsion = thrust })
sw2:Configure({ SwitchValue = true })
end
end)

P3:Connect("Triggered", function()
sw2:Configure({ SwitchValue = false })
thrust = 10
thr:Configure({ Propulsion = thrust })
end)
