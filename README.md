# Core Library

## cloneTable(originalTable: table) -> clonedtable: table
- Returns a deep copy of the originalTable.

## collection(tag: string, callback: function) -> connection: RBXScriptSignal
- Loops through all the instances will the tag and runs the callback function in a separate thread. When an instance is added with the tag, it will also run the callback function. Returns the `CollectionService:GetInstanceAddedSignal()` event.

## createElement(className: string, properties: dictionary, children: dictionary) -> newElement: instance
- Creates a GUI element.

## disconnectConnections(connections: dictionary)
- Disconnects all the connections in the dictionary if it is connected to an event.

## getChildrenOfClass(parent: instance, className: string) -> instances: array
- Returns all the children of the parent with the specified className.

## loadModules(unloadedModules: array) -> loadedModules: array
- Requires all the modules in the array and returns them.

## getMagnitude(startPosition: vector3, endPosition: vector3) -> magnitude: number
- Returns the magnitude of the two positions or the positions of the instances. The arguments can be vector3 or instances.

#### newEvent() -> event: class
- Creates a new event.

#### event:Connect(callback: function) -> connection: RBXScriptSignal
- Runs the callback function when the event is fired.

#### event:Fire(...)
- Fires the event.

#### event:Disconnect()
- Disconnects the connection connected to the event.

## newThread(callback: function)
- Runs the callback function in a new thread.

## newTween(instance: instance, tweenInfo: tweenInfo, propertiesTable: dictionary) -> tween: tween
- Creates, plays, and returns a tween.

## playSound(originalSound: instance, parent: instance, despawnDelay: number) -> newSound: instance
- Clones the originalSound into the parent & adds it to a debris quene. Will despawn after the despawnDelay. If it is not provided, then it will despawn when the sound is finished playing.

## randomNumber(min: number, max: number, multiplier: number) -> generatedNumber: number
- Generates a random number between the min and max numbers. Multiplier is multiplied among the numbers.

## roundNumber(number: number, places: number) -> roundedNumber: number
- Rounds the number to the amount of places.

## tableRemove(table: array, value, removeCount) -> count: number
- Removes the value from the table if found. If a removeCount is provided, it will remove that many. Returns the amount of values removed.

## waitForPath(target: instance, path: string, maxWait: number) -> instance: instance
- Yields for the instance.

```lua
local player = game.Playeres.LocalPlayer
local textbutton = waitForPath(player, "PlayerGui.ScreenGui.TextButton")
```