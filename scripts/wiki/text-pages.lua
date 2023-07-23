Wiki = {}
Wiki.events = {}

Wiki.events.on_init = function()
    remote.call('pywiki', 'add_section', 'alternativeenergy')

    remote.call('pywiki', 'add_page', {
        name = 'wind',
        section = 'alternativeenergy',
        text_only = true
    })

    remote.call('pywiki', 'add_page', {
        name = 'blimp',
        section = 'alternativeenergy',
        text_only = true
    })

    remote.call('pywiki', 'add_page', {
        name = 'lfr-stirling',
        section = 'alternativeenergy',
        text_only = true
    })

    remote.call('pywiki', 'add_page', {
        name = 'microwave-receiver',
        section = 'alternativeenergy',
        text_only = true
    })
end