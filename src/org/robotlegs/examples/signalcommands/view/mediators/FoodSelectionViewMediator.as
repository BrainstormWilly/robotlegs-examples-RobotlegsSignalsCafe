package org.robotlegs.examples.signalcommands.view.mediators
{
	import org.robotlegs.examples.signalcommands.signals.AddFoodItemToOrder;
	import org.robotlegs.examples.signalcommands.signals.FoodTypeSignal;
	import org.robotlegs.examples.signalcommands.view.components.FoodSelectionView;
	import org.robotlegs.mvcs.Mediator;

	public class FoodSelectionViewMediator extends Mediator
	{
		[Inject]
		public var view:FoodSelectionView;

		[Inject]
		public var addItem:AddFoodItemToOrder;

		override public function onRegister():void
		{
			view.itemTypeAdded.add(handleItemTypeAdded);
		}

		protected function handleItemTypeAdded(signal:FoodTypeSignal):void
		{
			addItem.dispatch(signal.foodType);
		}
	}
}