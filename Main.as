package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Sebastian Leijen
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var enemyHp:int = 100;
			var heroHp:int = 100;
			var enemyDamage:int =  10;
			var heroDamage:int = 20; 
			var heroName:String = "a blue martiaN";
			var enemyName:String = "Hallonsoda";
			var heroDmg:int;
			var enemyDmg:int;
			var round:int;
			var runda:int = 1;
			
			
			var t:TextField = new TextField; 
			t.border = true;
			t.width = 500;
			t.height = 500;
			t.wordWrap = true;
			addChild(t);
			
			for (var i:int = 0; i < 9; i++) 
			{
				heroDmg = heroDamage + Math.random() * 20;
				enemyDmg = enemyDamage + Math.random() * 10;
				
				heroHp -= enemyDmg;
				enemyHp -= heroDmg;
				
				if (enemyHp <= 0)
					enemyHp = 0;
				if (heroHp <= 0)
					heroHp = 0;
				
				t.appendText ("Round: " + String(i + 1) + "\n")
				t.appendText (heroName + " " + "deals " + heroDmg + " " + "damage to " + enemyName + "." + " " + enemyName + " " + "have " + enemyHp + " " + "health points left." + "\n");
				t.appendText (enemyName + " " + "deals " + enemyDmg + " " + "damage to " + heroName + "." + " " + heroName + " " + "have " + heroHp + " " + "health points left." + "\n" + "\n"); 
				
				if (enemyHp == 0|| heroHp == 0)
					break;
				
			}
		}
	}
}