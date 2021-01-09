-- Download the reset of the repro
--local syncList = {}
--local elemCounter = 0
--local syncOrigin = "https://raw.githubusercontent.com/DigitalQR/ComputerCraft/main/"

--function DownloadFileA(path)
--    local url = syncOrigin + path
--    print("Downloading '" + url "' to '" + path + "'")

--    local content = http.get(url).readAll()
--    local handle = fs.open(path, "w")
--    handle.write(content)
--    handle.close()
--    write("Done.")
--end

function PerformDQRSetup()
{
    syncList[elemCounter++] = "index.lua"
    print("Setting up DQR");
}