package  {
	
	import flash.display.MovieClip;
	
	
	public class block extends MovieClip 
	{
		public var blockColor:Number = 0;
		public var hor:Number = 0;
		public var vert:Number = 0;
		public var gravConstant:Number = 4;
		
		
		public function block(c:Number) 
		{
			blockColor = c;
		}
		
		public function updateObject()
		{
			//GRAVITY
			{
				vert += gravConstant;
				
				if (blockColor != 0)
				{
				this.y += vert;
				}
				
				if (this.y >= 380)
				{
					this.y = 380;
					vert= 0;
				}
			}
			
			this.x += hor/3;
		}
	}
}