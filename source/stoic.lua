RegisterCommand('msg', function(source, args)
    local targetId = tonumber(args[1])
    local message = table.concat(args, ' ', 2)
    
    if targetId and message then
        TriggerClientEvent('ox_lib:notify', targetId, {
            title = 'Private Message',
            description = 'You received a private message: ' .. message,
            type = 'inform',
            position = 'top',
            duration = 5000,
            alignIcon = 'center'
        })
    else
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Error',
            description = 'Invalid usage. Use /msg [TargetID] [msg]',
            type = 'error',
            position = 'top',
            duration = 5000,
            alignIcon = 'center'
        })
    end
end)

RegisterCommand('announce', function(source, args)
    if IsPlayerAceAllowed(source, 'command.announce') then
        local message = table.concat(args, ' ')
        
        if message then
            TriggerClientEvent('ox_lib:notify', -1, {
                title = 'Announcement',
                description = message,
                type = 'inform',
                position = 'top',
                duration = 5000,
                alignIcon = 'center'
            })
        else
            TriggerClientEvent('ox_lib:notify', source, {
                title = 'Error',
                description = 'Invalid usage. Use /announce [msg]',
                type = 'error',
                position = 'top',
                duration = 5000,
                alignIcon = 'center'
            })
        end
    else
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Error',
            description = 'You do not have permission to use this command.',
            type = 'error',
            position = 'top',
            duration = 5000,
            alignIcon = 'center'
        })
    end
end)

RegisterCommand('warn', function(source, args)
    if IsPlayerAceAllowed(source, 'command.warn') then
        local targetId = tonumber(args[1])
        local reason = table.concat(args, ' ', 2)
        
        if targetId and reason then
            TriggerClientEvent('ox_lib:notify', targetId, {
                title = 'Warning',
                description = 'You have been warned for: ' .. reason,
                type = 'warning',
                position = 'top',
                duration = 5000,
                alignIcon = 'center'
            })
        else
            TriggerClientEvent('ox_lib:notify', source, {
                title = 'Error',
                description = 'Invalid usage. Use /warn [TargetID] [Reason]',
                type = 'error',
                position = 'top',
                duration = 5000,
                alignIcon = 'center'
            })
        end
    else
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Error',
            description = 'You do not have permission to use this command.',
            type = 'error',
            position = 'top',
            duration = 5000,
            alignIcon = 'center'
        })
    end
end)
