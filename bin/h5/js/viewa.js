
(function(window,document,Laya){
	var __un=Laya.un,__uns=Laya.uns,__static=Laya.static,__class=Laya.class,__getset=Laya.getset,__newvec=Laya.__newvec;

	var Sprite=laya.display.Sprite,Text=laya.display.Text;
	//class view.viewA.ViewA extends laya.display.Sprite
	var ViewA=(function(_super){
		function ViewA(){
			ViewA.__super.call(this);
			var text=new Text();
			text.text="hjkfhknjfkjgklsdjgk";
			text.font="黑体";
			text.fontSize=24;
			text.color="#ffffff";
			text.pos(100,100);
			this.addChild(text);
		}

		__class(ViewA,'view.viewA.ViewA',_super);
		return ViewA;
	})(Sprite)



})(window,document,Laya);
