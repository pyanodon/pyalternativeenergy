Event.register(Event.core_events.init_and_config, function()
    remote.call("pywiki", "add_section", "alternativeenergy")

    remote.call("pywiki", "add_page", {
        name = "blimp",
        section = "alternativeenergy",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "lfr-stirling",
        section = "alternativeenergy",
        text_only = true
    })
end)
