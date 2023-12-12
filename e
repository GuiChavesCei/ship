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
if thrust <= 90 then
thrust = thrust + 10
print(thrust)
thr:Configure({ Propulsion = thrust })
sw2:Configure({ SwitchValue = true })
end
end)

P3:Connect("Triggered", function()
print("down")
if thrust > 10 then
thrust = thrust - 10
print(thrust)
thr:Configure({ Propulsion = thrust })
sw2:Configure({ SwitchValue = true })
elseif thrust == 10 then
sw2:Configure({ SwitchValue = false })
repeat
wait()
until sw2:Configured()
thrust = 0
print(thrust)
thr:Configure({ Propulsion = thrust })
end
end)
