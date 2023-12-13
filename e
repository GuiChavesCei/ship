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
if thrust <= 90 and thrust ~= 0 then
thrust = thrust + 10
thr:Configure({ Propulsion = thrust })
elseif thrust == 0 then
sw2:Configure({ SwitchValue = true })
thrust == thrust + 10
end
end)

P3:Connect("Triggered", function()
sw2:Configure({ SwitchValue = false })
repeat wait() until sw2:Configured()
thrust = 0
thr:Configure({ Propulsion = 10 })
end)



local bin1 = GetPartFromPort(1, "Bin")
local bin2 = GetPartFromPort(2, "Bin")
local con1 = GetPartFromPort(1, "Container")
local con2 = GetPartFromPort(2, "Container")
local sign = GetPartFromPort(3, "Sign")

local WP = ( con1:GetAmount() + con2:GetAmount() ) / 200 

while true do
wait()
sign:Configure({ SignText = "Water: " .. WP .. "% \nUranium: " .. UP .. "% " })
end
