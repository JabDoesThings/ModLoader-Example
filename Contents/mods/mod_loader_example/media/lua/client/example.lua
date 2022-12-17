Events.OnModLoaderReady.Add(function(ready)
  if not ready then return end
  print('ModLoaderExample: OnModLoaderReady & requesting file(s)..')
  loadModFiles('mod_loader_example', { 
    'client/client.lua'
  })
end)
