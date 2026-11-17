-- Code beautified
-- Credits to https://codebeautify.org/lua-beautifier


local download =
    tabs.settings:CreateProgress(
    {
        name = "Download Progress",
        range = {0, 100},
        value = 0,
        steps = 5
    }
)

download:SetText("Awaiting...")

tabs.settings:CreateButton(
    {
        name = "Download cloud",
        icon = IconsV2.GetIcon("download-square-bold"),
        callback = function()
            download:SetText("Downloading Loader..")

            local success, content =
                pcall(
                function()
                    return game:HttpGet(
                        "https://raw.githubusercontent.com/Dylanfoc2/Cloud/refs/heads/main/gen2Forked.lua"
                    )
                end
            )

            if success and content then
                writefile("cloud/Loader.lua", content)
                download:Set(10)
                download:SetText("downloaded Loader..")
            end

            download:SetText("Downloading Icons..")
            local success, content =
                pcall(
                function()
                    return game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua")
                end
            )

            if success and content then
                download:SetText("Downloaded Icons...")
                writefile("cloud/icons.lua", content)
                download:Set(30)
            end
        end
    }
)
