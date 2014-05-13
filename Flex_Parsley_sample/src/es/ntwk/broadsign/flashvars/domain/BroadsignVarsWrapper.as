package es.ntwk.broadsign.flashvars.domain
{
	import mx.utils.ObjectProxy;
	
	[Bindable]
	public class BroadsignVarsWrapper extends ObjectProxy
	{
		public var display_unit_address:String;
		public var display_unit_location_code:String;
		public var display_unit_resolution:String;
		public var player_id:String;
		public var frame_id:String;
		public var frame_resolution:String;
		
		private function initialize(obj:Object):void
		{
			this.display_unit_address = obj.display_unit_address;
			this.display_unit_location_code = obj.display_unit_location_code;
			this.display_unit_resolution = obj.display_unit_resolution;
			this.player_id = obj.player_id;
			this.frame_id = obj.frame_id;
			this.frame_resolution = obj.frame_resolution;
			
			printOutVars(obj);
		}
		
		private function printOutVars(obj:Object):void
		{
			for each (var item:String in obj) {
				trace(item + "\t" + obj[item]);
			}		
		}
		
		public function BroadsignVarsWrapper(obj:Object=null, uid:String=null, proxyDepth:int=-1)
		{
			super(obj, uid, proxyDepth);
			
			if(obj!=null)
				initialize(obj);		
		}
	}
}