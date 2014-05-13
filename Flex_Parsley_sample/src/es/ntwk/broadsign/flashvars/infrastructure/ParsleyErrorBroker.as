package es.ntwk.broadsign.flashvars.infrastructure
{
	import org.spicefactory.parsley.core.messaging.MessageProcessor;
	 
	public class ParsleyErrorBroker
	{
		[MessageError]
		public function handleError (processor:MessageProcessor, error:Error):void {
			throw error;
		}
	}
}
