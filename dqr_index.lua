-- Download and run index.lua, which will download the rest of the repro
function DownloadFile(path)
    local syncOrigin = "https://raw.githubusercontent.com/DigitalQR/ComputerCraft/main/"
    local url = syncOrigin .. path
    print("  Downloading '" .. url .."' to '" .. path .. "'")

    local content = http.get(url).readAll()
    local handle = fs.open(path, "w")
    handle.write(content)
    handle.close()
    write("  Done.")
end

syncList = {}
syncCounter = 0

syncList[syncCounter] = "DQR/inv.lua"
syncCounter = syncCounter + 1

for i=0,syncCounter do
    DownloadFile(syncList[i])
end

print("Attempting to resync library")
print("Finished syncing")