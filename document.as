package  
{
	
	import flash.display.MovieClip;
	import flash.net.SharedObject;
	import flash.net.LocalConnection;
	import flash.system.System;
	
	
	public class document extends MovieClip 
	{
		//MAIN VARS
		public static var init:Boolean = true;
		public static var mute:Boolean = false;
		public var saveData:SharedObject;
		
		//OTHER VARS
		
		
		public function document() 
		{
			//SAVE DATA--
			saveData = SharedObject.getLocal("SomethingSaveData");
			
			saveData.clear();
			
			if (saveData.data.currentWave == null)
			{
				//INIT SAVE VARS
				//saveData.data.Something = 0;
				
				saveData.flush();
				
				//newG = true;
			}
			//--
			
			//SET VARS
			setVarstoData();
			
		}
		
		public function newGame():void //CREATES A NEW GAME
		{
			//SET INITIAL SAVE DATA
			//saveData.data.this = 0;
				
			saveData.flush();
				
			//newG = true;
				
			setVarstoData();
		}
		
		public function saveGame():void //SAVES THE GAME
		{
			//SET SAVE DATA TO VARS
			
			saveData.flush();
		}
		
		public function setVarstoData():void //SETS VARS EQUAL TO SAVE DATA
		{
			//SET VARS TO SAVE DATA
		}
		
		public function forceGC():void //COLLECT GARBAGE
		{
			 System.gc();
		}
		
	}
}