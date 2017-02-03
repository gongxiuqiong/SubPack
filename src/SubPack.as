package
{
	import laya.events.Event;
	import laya.ui.Button;
	import laya.utils.Handler;
	import laya.webgl.WebGL;

	public class SubPack
	{
		private var btnSkin:String = "res/button.png";
		public function SubPack()
		{
			Laya.init(1280,900,WebGL);
			
			Laya.loader.load(btnSkin, Handler.create(this, onLoadResCompleteHandle));
			
		}
		
		private function onLoadResCompleteHandle():void
		{
			var btn1:Button = new Button(btnSkin);
			btn1.label = "按钮1";
			Laya.stage.addChild(btn1);
			btn1.pos(50,20);
			btn1.on(Event.CLICK, this, clickBtn1);
			
			var btn2:Button = new Button(btnSkin);
			btn2.label = "按钮2";
			Laya.stage.addChild(btn2);
			btn2.pos(200,20);
			btn2.on(Event.CLICK, this, clickBtn2);
		}
		
		private function clickBtn1():void
		{
			trace("clickBtn1");
			importJS("js/skTest.js?v=12323",onLoadedSk);
		}
		
		private function clickBtn2():void
		{
			trace("clickBtn2");
			importJS("js/viewa.js?v=12323",onLoadedViewA);
		}
		
		private var sk:*;
		private function onLoadedSk(data:*):void
		{
			__JS__('window.eval(data)');
			sk = __JS__("new view.sk.SkTest()");
			Laya.stage.addChild(sk);
			if(viewA.parent)
				Laya.stage.removeChild(viewA);
		}
		
		private var viewA:*;
		private function onLoadedViewA(data:*):void
		{
			__JS__('window.eval(data)');
			viewA = __JS__("new view.viewA.ViewA()");
			Laya.stage.addChild(viewA);
			if(sk.parent)
				Laya.stage.removeChild(sk);
		}
	}
}