# App Commands

These commands are available in both the city and region views.

## Miscellaneous Commands

### Assert 

Unimplemented in retail builds.

### CancelWaitForMessage2

Cancels a previous WaitForMessage2 subscription.

Parameters: `<message number>` `<unique string token>`

### CreateException
### CreateGZLog
### ExecuteCheat

Executes the specified cheat.

Parameters: `<cheat string>`

### ExecuteScript

Executes the specified script.

Parameters: `<file name>` or `<type number>` `<group number>` `<instance number>`

### GameDelay
### GamePause

Pauses or unpauses the game.

Parameters: `<true/false>` - pause or unpause `<pause type string>` - one or more of: All, Draw, Animation, SimulationClock, 24HourClock.

### GetAppState
### GetDateAndTime

Gets the current date and/or time.

Parameters:

`[date]` `[time]`
`[date]` - return the date.
`[time]` - return the date.

When the command is run without parameters, it will return both the date and time.

Return Value:

The current date and/or time as strings.

The date string uses the `mm/dd/yyyy` format.   
The time string uses the `hh:mm:ss` format.

### GetDirectory

Gets the path to a game directory.

Parameters: `<directory string>` - one of: App, CDApp, Data, UserData, CDData, Plugin, UserPlugin, CDPlugin, Region, MySim, Album, TestScripts, Temp, Desktop.

### GetFrameCount

Gets the frame count.

### GetFrameRate

Gets the frame rate.

### GetMemInfo
### GetOccupantCount
### GetPathDirectory

Strips the file name from a path.

### GetPathFileName

Strips the path and extension from a file name.

### GetPopupModalDialogsEnabled

Gets a value indicating if popup modal dialog boxes are enabled.

Returns a Boolean indicating if popup modal dialog boxes are enabled.

### GetPopupModalDialogsSafe

Gets a value indicating if it is safe to show a modal dialog.

### GetRandomInteger

Gets a random Sint32 in the specified range.

Parameters:

`<min>` `<max>`
`<min>` - the minimum value.
`<max>` - the maximum value.

### GetRandomNumber

Gets a random Float64 in the specified range.

Parameters:

`<min>` `<max>`
`<min>` - the minimum value.
`<max>` - the maximum value.

### GetTimerTime

Gets a time stamp from a system timer.

Parameters:

`<unit>` - a string specifying the time stamp measurement unit. The possible values are listed in the following table:

| Unit String | Name |
|-------------|------|
| ns | Nanoseconds |
| us | Microseconds |
| ms | Milliseconds |
| sec | Seconds |
| min | Minutes |

Returns the time stamp number converted to the specified unit.

### GZLog

Unimplemented in retail builds.

### ListCommands

Unimplemented in retail builds.

### ReadRegistry

Reads from the game's registry, unimplemented in retail builds. 

### RZCheckHeap

Unimplemented in retail builds.

### SendMessage

Broadcasts a message on the game's internal messaging system.

### SetDebugLevel
### SetGZLogLevel

Unimplemented in retail builds.

### SetPopupModalDialogsEnabled

Sets a value indicating if popup modal dialog boxes are enabled.

Parameters:

`<enable>` - A Boolean indicating if popup modal dialog boxes are enabled.

### SetScriptAutoYield

Allows test scripts to yield execution while waiting in loops.

Parameters: `<-1>` - placeholder for the currently executing script's identifier  `<true/false>` - auto yield value. 

### TakeSnapshot

Takes a snapshot/screenshot.

Parameters: `<output file name>` [x1, y1, x2, y2]

### ViewWebBrowser

Launches a web browser with the specified URL.

Parameters:

`<url>` `<minimize game window>`

`<url>` - the URL.
`<minimize game window>` - true to minimize the game window; otherwise, false.

### WaitForMessage2

Used in a loop to wait for an in-game message, returns 1 while waiting.

Parameters: `<message number>` `<unique string token>`

### WriteRegistry 

Writes to the game's registry, unimplemented in retail builds. 

## Tool Commands

### Demolish
### GetViewTarget

Gets the camera's position in x, y, and z coordinates.

### PlaceLot

Places the specified lot.

Parameters:

`<lot exemplar IID>` `<cell x>` `<cell z>` `<facing>` `<use plop effects>` `<unknown Boolean>`

`<lot exemplar IID>` - the instance id of the lot configuration exemplar.    
`<cell x>` - the cell x position.    
`<cell z>` - the cell z position.    
`<facing>` - an integer from the following table:    

| Lot Facing Number | Name |
|-------------------|------|
| 0 | North |
| 1 | East |
| 2 | South |
| 3 | West |

`<use plop effects>` - true to use the lot plop effects; otherwise, false.    
`<unknown Boolean>` - this parameter is required, but likely unused.    

### PlaceNetwork

Places the specified network.

Parameters:

`<network type number>` `<x1>` `<y1>` `<x2>` `<y2>`

The network type number is a value from the following table:

| Network Type Number | Network Name |
| ----------- | ---------- |
| 0           | Road       |
| 1           | Rail       |
| 2           | Highway    |
| 3           | Street     |
| 4           | Water Pipe |
| 5           | Power Pole |
| 6           | Avenue     |
| 7           | Subway     |
| 8           | Light Rail |
| 9           | Monorail   |
| 10          | One Way Road   |
| 11          | Dirt Road    |
| 12          | Ground Highway    |

### PlaceNetworkIntersection

Unimplemented.

### PlaceZone

Places the specified zone.

Parameters:

`<zone type number>` `<x1>` `<y1>` `<x2>` `<y2>`

The zone type number is a value from the following table:

| Zone Number | Zone Name |
|-------------|-----------|
| 0 | None |
| 1 | Low Density Residential |
| 2 | Medium Density Residential |
| 3 | High Density Residential |
| 4 | Low Density Commercial  |
| 5 | Medium Density Commercial |
| 6 | High Density Commercial  |
| 7 | Agriculture (Industrial Resource) |
| 8 | Light Industrial |
| 9 | Heavy Industrial |
| 10 | Military |
| 11 | Airport |
| 12 | Seaport |
| 13 | Spaceport |
| 14 | Landfill |
| 15 | Plopped Building |


### SetViewTarget

Sets the game camera to the specified position.

Parameters: 'cell' `<cell x number>` `<cell z number>` or 'position' `<x number>` `<y number>` `<z number>`

## Window Commands

### GZWinClickButton
### GZWinCreateWindow
### GZWinDestroyWindow
### GZWinEnableUserInput

Allows user input to be disabled or enabled.

Parameters:

`<enable>` - A Boolean indicating if input should be enabled.

### GZWinGenerateInputEvent
### GZWinIsWindowPresent
### GZWinMessageBox

Shows a basic message box.

This message box has a limited text length for the message, around 256 characters.

Parameters:

`<message>` `<title>` `<button type>`

`<message>` - the message.    
`<title>` - the title.    
`<button type>` - the message box button type, see the following table.

| Button Type Number | Description |
|--------------------|-------------|
| 0 | OK |
| 1 | OK/Cancel |
| 2 | Retry/Cancel |
| 3 | Yes/No |
| 4 | Yes/No/Cancel |
| 5 | Abort/Retry/Ignore |


Return Value:

The identifier of the button that was clicked.

| Button Identifier | Button Name |
|-------------------|-------------|
| 0x5301814a | OK |
| 0x53018147 | Cancel |
| 0x53018146 | Abort |
| 0x5301814b | Retry |
| 0x53018148 | Ignore |
| 0x5301814c | Yes |
| 0x53018149 | No |

### GZWinMoveCursorToPosition
### GZWinMoveCursorToWindow
### GZWinMoveWindow
### GZWinSelectListboxItem
### GZWinSetWindowText

Sets the window text.

Parameters:

`<window id>` `<parent window id>` `<text>`

`<window id>` - the id of the target window.    
`<parent window id>` - the id of the parent window or 0 for the main game window.    
`<text>` - the window text.    


### GZWinShowWindow
### GZWinWaitForWindow

Waits for the specified window to be created.

Parameters:

`<window id>` `<parent window id>` `<blocking wait>`

`<window id>` - the id of the target window.    
`<parent window id>` - the id of the parent window or 0 for the main game window.    
`<blocking wait>` - true to block until the window is created; otherwise, false.    

Return:

If `<blocking wait>` is false, the function will return 1 if the window has not been created.
This allows the caller to use their own wait loop.
