package org.robotlegs.examples.signalcommands.controller
{
	import org.robotlegs.examples.signalcommands.model.FoodOrderModel;
	import org.robotlegs.examples.signalcommands.signals.FoodItemSelected;
	import org.robotlegs.mvcs.Command;

	public class FoodItemSelectedCommand extends Command
	{
		[Inject]
		public var triggerSignal:FoodItemSelected;

		[Inject]
		public var model:FoodOrderModel;

		override public function execute():void
		{
			model.currentItemSelection = triggerSignal.foodItem;
		}
	}
}