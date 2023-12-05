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



