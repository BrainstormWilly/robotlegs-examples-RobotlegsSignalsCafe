package org.robotlegs.examples.signalcommands.signals
{
	import org.osflash.signals.FreeSignalBase;
	import org.osflash.signals.Signal;
	import org.robotlegs.examples.signalcommands.model.vo.FoodItem;

	public class FoodItemSignal extends FreeSignalBase
	{
		public function FoodItemSignal()
		{
			super();
		}

		protected var _foodItem:FoodItem;
		public function get foodItem():FoodItem
		{
			return _foodItem;
		}

		public function dispatch(foodItem:FoodItem):void
		{
			_foodItem = foodItem;
			doDispatch();
		}
	}
}