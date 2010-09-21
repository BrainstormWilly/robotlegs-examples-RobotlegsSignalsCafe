package org.robotlegs.examples.signalcommands.signals
{
	import org.osflash.signals.FreeSignalBase;
	import org.robotlegs.examples.signalcommands.model.enums.FoodType;

	public class FoodTypeSignal extends FreeSignalBase
	{
		protected var _foodType:FoodType;
		public function get foodType():FoodType
		{
			return _foodType;
		}

		public function dispatch(foodType:FoodType):void
		{
			_foodType = foodType;
			doDispatch();
		}
	}
}