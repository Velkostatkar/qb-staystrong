CreateThread(function()
    local sleepThread = 1000
  
    if not HasStreamedTextureDictLoaded('enufflogo') then
      RequestStreamedTextureDict('enufflogo', true)

      while not HasStreamedTextureDictLoaded('enufflogo') do
        Wait(0)
      end
    end
    
    while true do
      local coords = GetEntityCoords(PlayerPedId())
      local distance = #(coords - Config.Coords)

     if distance < 400 then
        sleepThread = 0
        DrawMarker(43, 248.28, -729.33, 56.57, -33.0, -90.0, -170.0, 33.0, 0.0, 0.0, 12.9, 7.9, 0.0, 255, 255, 255, 255,false, false, 2, false, "enufflogo", "fileServlet", false)
      else
        sleepThread = 1000
      end
       
      Wait(sleepThread)
    end
end)

