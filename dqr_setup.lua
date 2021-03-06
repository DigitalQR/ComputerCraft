-- Download and run index.lua, which will download the rest of the repro
syncOrigin = "https://raw.githubusercontent.com/DigitalQR/ComputerCraft/main/"

function DownloadFile(path)
    local url = syncOrigin .. path
    print("  Downloading '" .. url .."' to '" .. path .. "'")

    local content = http.get(url).readAll()
    local handle = fs.open(path, "w")
    handle.write(content)
    handle.close()
    write("  Done.")
end

DownloadFile("dqr_index.lua");