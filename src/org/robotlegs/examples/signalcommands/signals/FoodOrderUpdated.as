package org.robotlegs.examples.signalcommands.signals
{
	import org.osflash.signals.FreeSignalBase;
	import org.robotlegs.examples.signalcommands.model.vo.FoodOrder;

	public class FoodOrderUpdated extends FreeSignalBase
	{
		private var _foodOrder:FoodOrder;
		public function get foodOrder():FoodOrder
		{
			return _foodOrder;
		}

		public function dispatch(foodOrder:FoodOrder):void
		{
			_foodOrder = foodOrder;
			doDispatch();
		}
	}
}