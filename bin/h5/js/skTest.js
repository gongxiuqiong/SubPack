
(function(window,document,Laya){
	var __un=Laya.un,__uns=Laya.uns,__static=Laya.static,__class=Laya.class,__getset=Laya.getset,__newvec=Laya.__newvec;

	var Event=laya.events.Event,Skeleton=laya.ani.bone.Skeleton,Sprite=laya.display.Sprite,Templet=laya.ani.bone.Templet;
	//class view.sk.SkTest extends laya.display.Sprite
	var SkTest=(function(_super){
		function SkTest(){
			this.face=null;
			this.xiaodeng=null;
			this.qingtouzhu=null;
			this.count_load=0;
			this.count_loaded=0;
			SkTest.__super.call(this);
			this.creatSk("res/CasionGirl.sk",this.face);
		}

		__class(SkTest,'view.sk.SkTest',_super);
		var __proto=SkTest.prototype;
		__proto.creatSk=function($skUrl,$sk){
			this.count_load++;
			$skUrl=$skUrl+"?v="+Math.random()*999999;
			var factory=new Templet();
			factory.once("complete",this,this.parseComplete,[factory,$sk]);
			factory.once("error",this,this.onError);
			factory.loadAni($skUrl);
		}

		__proto.parseComplete=function($factory,$sk){
			this.count_loaded++;
			$sk=$factory.buildArmature();
			this.addChild($sk);
			$sk.pos(1000,400);
			$sk.play("pullTheRocker",false);
			if(this.count_loaded==this.count_load){
				this.onLoadAll();
			}
		}

		__proto.onError=function(){
			console.log("error");
		}

		__proto.onLoadAll=function(){}
		return SkTest;
	})(Sprite)



})(window,document,Laya);
