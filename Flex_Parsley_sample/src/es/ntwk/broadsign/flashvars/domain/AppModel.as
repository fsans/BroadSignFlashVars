package es.ntwk.broadsign.flashvars.domain
{
	import flash.events.EventDispatcher;


	[Bindable]
	public class AppModel extends EventDispatcher
	{

		[MessageDispatcher]
		public var sendMessage:Function;
		
		
		[Bindable] public var BSFV_DISPLAY_UNIT_ADDRESS:String;
		[Bindable] public var BSFV_DISPLAY_UNIT_LOCATION_CODE:String;
		[Bindable] public var BSFV_DISPLAY_UNIT_RESOLUTION:String;
		[Bindable] public var BSFV_PLAYER_ID:String;
		[Bindable] public var BSFV_FRAME_ID:String;
		[Bindable] public var BSFV_FRAME_RESOLUTION:String;
		
		
		
		[Init]
		public function init():void
		{
			trace("AppModel initialized");
	
		}
	
	}
	
}
