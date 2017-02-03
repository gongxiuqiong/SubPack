package 
{
	/**
	 * 导入js文件
	 * @param jsFile 单个js路径或者js路径数组
	 * @param callback 回调函数
	 * @param evalJs 请不要改写
	 * */
	public function importJS(jsFile:*,callback:Function,evalJs:Boolean=true):void
	{
		 /*[IF-FLASH]*/ callback(); return;
		 /*[IF-SCRIPT-BEGIN]
		 Laya.importsJS = Laya.importsJS || [];
		 if (jsFile is Array) {
			 var s:int = jsFile.length;
			 for (var i:int = 0; i < jsFile.length; i++) {
				 jsFile[i] = jsFile[i];
				 importJS(jsFile[i], function() { 
					 s--;
					 if (s == 0)callback();
				 },false);
			 }
			 return;
		 }
		 trace("import JavaScript:"+jsFile);
		 if (Laya.importsJS[jsFile]) {
			callback();
			return;
		 }
		var xhr= __JS__("new XMLHttpRequest()");
		xhr.onload=function(e){
		  __JS__("window.eval(xhr.responseText+'\n//@ sourceURL='+xhr.url)");
		  Laya.importsJS[jsFile]=true;
		  callback();
		}
		xhr.onerror=function(e)
		{
		   throw "下载js"+jsFile+"失败";
		}
		xhr.open("GET",jsFile,true);
		xhr.send();
		[IF-SCRIPT-END]*/
	}
}