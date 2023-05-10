function notify(_, icy_title)
    if icy_title then
        artist, title = string.gmatch(icy_title, "(.+) %- (.+)")()
        if artist and title then
            mp.commandv("run", "notify-send", artist, title)
        end
    end
end

mp.observe_property("metadata/icy-title", "string", notify)
