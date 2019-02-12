### BroadSignFlashVars

Simple object wrapper that holds all the automatic FlashVars injected by BroadSign Player on every SWF at runtime.

#### Flex implementation:

Create a handler for the ``mx.events.FlexEvent.PREINITIALIZE`` event on the top Application container. 

Must do it on ``preinit` phase if you want to use some vars to set up the movie interface before start adding objects to the display list.


```as3
// add the preinitialize handler in the top Application container: 
// ...
// preinitialize="preinitializeHandler(event)" 


	import mx.core.FlexGlobals;
	import BroadsignVarsWrapper;
			
	// create the wrapper on pre-init 
	protected function preinitializeHandler(event:FlexEvent):void
	{
		broadsignVarsWrapper = new BroadsignVarsWrapper(FlexGlobals.topLevelApplication.parameters);
	}
```


And then use the wrapped flashvars...

```as3
broadsignVarsWrapper.display_unit_address 
broadsignVarsWrapper.display_unit_location_code 
broadsignVarsWrapper.display_unit_resolution 
broadsignVarsWrapper.player_id 
broadsignVarsWrapper.frame_id 
broadsignVarsWrapper.frame_resolution 
```

(all automatic vars are String, so cast it to fit your needs)

