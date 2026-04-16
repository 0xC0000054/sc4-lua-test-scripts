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
### GetDirectory

Gets the path to a game directory.

Parameters: `<directory string>` - one of: App, CDApp, Data, UserData, CDData, Plugin, UserPlugin, CDPlugin, Region, MySim, Album, TestScripts, Temp, Desktop.

### GetFrameCount
### GetFrameRate
### GetMemInfo
### GetOccupantCount
### GetPathDirectory

Strips the file name from a path.

### GetPathFileName

Strips the path and extension from a file name.

### GetPopupModalDialogsEnabled
### GetPopupModalDialogsSafe
### GetRandomInteger
### GetRandomNumber
### GetTimerTime
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
### SetScriptAutoYield

Allows test scripts to yield execution while waiting in loops.

Parameters: `<-1>` - placeholder for the currently executing script's identifier  `<true/false>` - auto yield value. 

### TakeSnapshot

Takes a snapshot/screenshot.

Parameters: `<output file name>` [x1, y1, x2, y2]

### ViewWebBrowser
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
### PlaceNetwork
### PlaceNetworkIntersection
### PlaceZone
### SetViewTarget

Sets the game camera to the specified position.

Parameters: 'cell' `<cell x number>` `<cell z number>` or 'position' `<x number>` `<y number>` `<z number>`

## Window Commands

### GZWinClickButton
### GZWinCreateWindow
### GZWinDestroyWindow
### GZWinEnableUserInput
### GZWinGenerateInputEvent
### GZWinIsWindowPresent
### GZWinMessageBox
### GZWinMoveCursorToPosition
### GZWinMoveCursorToWindow
### GZWinMoveWindow
### GZWinSelectListboxItem
### GZWinSetWindowText
### GZWinShowWindow
### GZWinWaitForWindow