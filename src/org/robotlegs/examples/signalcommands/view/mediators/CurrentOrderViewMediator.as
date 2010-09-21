package org.robotlegs.examples.signalcommands.view.mediators
{
	import org.robotlegs.examples.signalcommands.signals.FoodItemAddedToOrder;
	import org.robotlegs.examples.signalcommands.signals.FoodItemSelected;
	import org.robotlegs.examples.signalcommands.signals.FoodItemSignal;
	import org.robotlegs.examples.signalcommands.signals.FoodOrderUpdated;
	import org.robotlegs.examples.signalcommands.signals.NoFoodItemSelected;
	import org.robotlegs.examples.signalcommands.view.components.CurrentOrderView;
	import org.robotlegs.mvcs.Mediator;

	public class CurrentOrderViewMediator extends Mediator
	{
		[Inject]
		public var view:CurrentOrderView;

		[Inject]
		public var orderUpdated:FoodOrderUpdated;

		[Inject]
		public var foodItemSelected:FoodItemSelected;

		[Inject]
		public var noFoodItemSelected:NoFoodItemSelected;

		[Inject]
		public var foodItemAddedToOrder:FoodItemAddedToOrder;

		override public function onRegister():void
		{
			orderUpdated.add(updateOnOrderUpdated);
			foodItemAddedToOrder.add(updateOnItemAdded);
			view.foodItemSelected.add(updateOnItemSelected);

		}

		protected function updateOnItemAdded(signal:FoodItemAddedToOrder):void
		{
			view.items.selectedItem = signal.foodItem;
			foodItemSelected.dispatch(signal.foodItem);
		}

		protected function updateOnItemSelected(signal:FoodItemSignal):void
		{
			if(signal.foodItem)
				foodItemSelected.dispatch(signal.foodItem);
			else
				noFoodItemSelected.dispatch();
		}

		protected function updateOnOrderUpdated(signal:FoodOrderUpdated):void
		{
			if(!view.dataProvider)
				view.dataProvider = signal.foodOrder.foodItems;
		}
	}
}