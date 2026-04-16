-- A SC4 test script that automatically loads the specified established city in the
-- game's current region.
--
-- This version of the script loads 'Big City Tutorial' in the starting Timbuktu region.
-- If no city with that name was found in the loaded region, the script will do nothing.
--
-- Usage:
-- Add the -LuaScript:<quoted path> command line argument to the shortcut you use to launch
-- the game, where <quoted path> is the full path to the script surround by double quotes.
-- E.g. SimCity4.exe -LuaScript:"C:\temp\TestScript.lua"
--
-- Notes:
--
-- This script depends on my Lua Extensions DLL for the print and hex2dec functions.

print('SC4 Auto Load City')

local CITY_NAME = 'Big City Tutorial'
local MESSAGE_ID = hex2dec('CBB5BB45') -- kSC4MessagePostRegionInit
local TOKEN = 'null45 wait for post region init' -- a unique identifier

print('Before WaitForMesssage2')

local state = sc4app.WaitForMessage2(MESSAGE_ID, TOKEN)
local autoYieldSet = false

while state == 1 do
  if not autoYieldSet then
    autoYieldSet = true
    -- The game uses -1 as a placeholder for the current script id.
    -- Yielding lets the game do other things while we wait for our
    -- desired game message.
    sc4app.SetScriptAutoYield(-1, true)
  end
  -- print('waiting...')
  state = sc4app.WaitForMessage2(MESSAGE_ID, TOKEN)
end

if autoYieldSet then
  sc4app.SetScriptAutoYield(-1, false)
end

-- We only care about the first message the game fires.
sc4app.CancelWaitForMessage2(MESSAGE_ID, TOKEN)

print('After WaitForMesssage2 polling loop - result:', state)

if state ~= 1 then
  print('Calling sc4app.LoadCity on', CITY_NAME)
  local result = sc4app.LoadCity(CITY_NAME, 'any', 'full')
  
  print('sc4app.LoadCity returned', result)
end
