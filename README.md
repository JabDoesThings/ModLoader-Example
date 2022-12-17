# ModLoader-Example

- In `mod.info`:
`require=mod_loader`

- On the server, place your server-loaded Lua files at:
```
../Zomboid/Lua/mod_loader/mods/{MY_MOD_ID}/../my_lua_file.lua
```

- API
```lua
-- @param mod_id - The ID of the mod in 'mod.info'.
-- @param files - Array of file paths relative to 'Zomboid/Lua/mod_loader/mods/{PATH_TO_FILE}'
loadModFiles(mod_id, files)
```

- Example:
```lua
Events.OnModLoaderReady.Add(function(ready)
  if not ready then return end
  loadModFiles('my_mod_id', { 'client/my_lua_file.lua' })
end)
```
