Wiki = {}
Wiki.events = {}

py.on_event(py.events.on_init(), function()
    remote.call("pywiki", "add_section", "alternativeenergy")

    remote.call("pywiki", "add_page", {
        name = "steam-engine",
        section = "alternativeenergy",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "steam-turbine",
        section = "alternativeenergy",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "hp-steam-turbines",
        section = "alternativeenergy",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "wind",
        section = "alternativeenergy",
        text_only = true
    })

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

    remote.call("pywiki", "add_page", {
        name = "thermosolar",
        section = "alternativeenergy",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "microwave-receiver",
        section = "alternativeenergy",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "nuclear-fission",
        section = "alternativeenergy",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "mdh",
        section = "alternativeenergy",
        text_only = true
    })
end)