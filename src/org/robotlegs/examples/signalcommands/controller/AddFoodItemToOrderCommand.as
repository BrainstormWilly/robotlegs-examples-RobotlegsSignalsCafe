package org.robotlegs.examples.signalcommands.controller
{
	import org.robotlegs.examples.signalcommands.model.FoodOrderModel;
	import org.robotlegs.examples.signalcommands.signals.AddFoodItemToOrder;
	import org.robotlegs.mvcs.SignalCommand;

	public class AddFoodItemToOrderCommand extends SignalCommand
	{
		[Inject]
		public var triggerSignal:AddFoodItemToOrder;

		[Inject]
		public var model:FoodOrderModel;

		override public function execute():void
		{
			model.addItemToOrder(triggerSignal.foodType);
		}
	}
}