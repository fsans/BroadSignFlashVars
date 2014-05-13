package es.ntwk.broadsign.flashvars.infrastructure
{
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;



	public class AlertHandler
	{

		[GlobalRemoteObjectFaultHandler]
		public function showServiceAlert(event:FaultEvent):void
		{
			Alert.show("A data service error occurred.","Global error handle");
		}
	}
}