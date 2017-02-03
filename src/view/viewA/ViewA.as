package view.viewA
{
	import laya.display.Sprite;
	import laya.display.Text;

	/*[COMPILER OPTIONS:ForcedCompile]*/
	public class ViewA extends Sprite
	{
		public function ViewA()
		{
			super();
			
			var text:Text = new Text();
			text.text = "hjkfhknjfkjgklsdjgk";
			text.font = "黑体";
			text.fontSize = 24;
			text.color = "#ffffff";
			text.pos(100, 100);
			this.addChild(text);
		}
	}
}