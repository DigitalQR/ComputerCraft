-- Download and run index.lua, which will download the rest of the repro
function DownloadFile(source, target)
    local syncOrigin = "https://raw.githubusercontent.com/DigitalQR/ComputerCraft/main/"
    local url = syncOrigin .. source
    print("  Downloading '" .. url .."' to '" .. target .. "'")

    local content = http.get(url).readAll()
    local handle = fs.open(target, "w")
    handle.write(content)
    handle.close()
    write("  Done.")
end

fs.delete("DQR");
DownloadFile("DQR/inv.lua", "DQR/inv")
DownloadFile("DQR/mining.lua", "DQR/mining")

print("Attempting to resync library")
print("Finished syncing")