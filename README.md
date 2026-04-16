# sc4-lua-test-scripts

Example scripts and documentation for the SimCity 4 Lua test script system.

## Command Documatation

The command documentation is the docs folder grouped by category.

[App Commands](https://github.com/0xC0000054/sc4-lua-test-scripts/tree/main/docs/AppCommands.md) - these are available in both the region and city views.    
[City Commands](https://github.com/0xC0000054/sc4-lua-test-scripts/tree/main/docs/Cityommands.md) - these are available in the city view.    
[Region Commands](https://github.com/0xC0000054/sc4-lua-test-scripts/tree/main/docs/RegionCommands.md) - these are available in the region view.    

## Running Test Scripts

The game supports two ways of running Lua scripts inside the test script environment.

### The -LuaScript Command Line Argument

This command line argument makes the game execute the specified script during startup.    
The syntax is `-LuaScript:<quoted path>`, where `<quoted path>` is the path to the script surrounded by double quotes.    
The quoted script path can either be the full path (e.g. `-LuaScript:"C:\temp\TestScript.lua"`) or just a file name (`-LuaScript:"TestScript.lua"`) if the script is located in one of the games script directories.
The game checks the following directories for scripts with just a file name:

* `<Installation root>\Scripts`
* `<Installation root>\Scripts\TestScripts`
* `<Installation root>\Apps`

### The ExecuteScript Command

This command can be entered from the cheat window. ExecuteScript supports two different command formats:

* ExecuteScript `<path>`
* ExecuteScript `<type>` `<group>` `<instance>`

The `<path>` value must be the full path to the target Lua script , unlike the command line argument it does not support using a relative path to the game's script directories.
I have no idea why the `<type>` `<group>` `<instance>` syntax exists, maybe to let the game's Lua debugger work with packaged scripts. 

## Example scripts

Located in the [test-scripts folder](https://github.com/0xC0000054/sc4-lua-test-scripts/tree/main/test-scripts).
