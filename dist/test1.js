var $_, $hxClasses = $hxClasses || {}, $estr = function() { return js.Boot.__string_rec(this,''); };
function $bind(o,m) { var f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; return f; };;
Lambda = $hxClasses['Lambda'] = function() { };
Lambda.__name__ = "Lambda";
Lambda.fold = function(it,f,first) {
	let x = $getIterator(it);
	while(x.hasNext()) first = f(x.next(),first);
	return first;
};
Lambda.prototype.__class__ = Lambda;
Main = $hxClasses['Main'] = function() { };
Main.__name__ = "Main";
Main.main = function() {
	// @"Build Date: 2020-09-07 08:09:59"@ ;
	
//=============================================================================
// @"Kiniitta"@
//=============================================================================
      ;
	/*:
     @"@author Kino\n    @plugindesc This plugin allows you to use Haxe in your RPGMakerMV code.\n    @param haxeVersion"@
   */;
	// @"This is a test of the watcher"@ ;
	let sceneTitleStart = Scene_Base.prototype["start"] ;
	Scene_Base.prototype["start"] = function() {
		let self = this;
		sceneTitleStart.call(self);
		_LTGlobals_.$gameVariables.setValue(1,3);
		Window.Haxe = "Version 4.2.0";
		console.log("src/Main.hx:28:","Running Console Log From Haxe Added haxe Version");
	};
	let abc = [1,2,3,4,5,10];
	Lambda.fold(abc,function(x,result) {
		result = x * 2;
		return result;
	},0);
	let result = new Array(abc.length);
	let _g = 0;
	let _g1 = abc.length;
	while(_g < _g1) {
		let i = _g++;
		result[i] = abc[i] * 2;
	}
	Window_Base.prototype.update = function() {
		let self = this;
		self.update();
		self.hide();
	};
	(function(self) {
		self.update = function() {
			self.hide();
		};
		self.standardBackOpacity = function() {
			return 3;
		};
	})(Window_Base.prototype);
};
Main.prototype.__class__ = Main;
Std = $hxClasses['Std'] = function() { };
Std.__name__ = "Std";
Std.prototype.__class__ = Std;
if(typeof haxe=='undefined') haxe = {};
if(!haxe.iterators) haxe.iterators = {};
haxe.iterators.ArrayIterator = $hxClasses['haxe.iterators.ArrayIterator'] = function(array) {
	this.current = 0;
	this.array = array;
};
haxe.iterators.ArrayIterator.__name__ = "haxe.iterators.ArrayIterator";
haxe.iterators.ArrayIterator.prototype.array = null;
haxe.iterators.ArrayIterator.prototype.current = null;
haxe.iterators.ArrayIterator.prototype.hasNext = function() {
	return this.current < this.array.length;
};
haxe.iterators.ArrayIterator.prototype.next = function() {
	return this.array[this.current++];
};
haxe.iterators.ArrayIterator.prototype.__class__ = haxe.iterators.ArrayIterator;
_LTGlobals_ = $hxClasses['_LTGlobals_'] = function() { };
_LTGlobals_.__name__ = "_LTGlobals_";
_LTGlobals_.$gameVariables = null;
_LTGlobals_.prototype.__class__ = _LTGlobals_;
if(typeof utils=='undefined') utils = {};
utils.Fn = $hxClasses['utils.Fn'] = function() { };
utils.Fn.__name__ = "utils.Fn";
utils.Fn.proto = function(obj) {
	return obj.prototype;
};
utils.Fn.updateProto = function(obj,fn) {
	return (fn)(obj.prototype);
};
utils.Fn.updateEntity = function(obj,fn) {
	return (fn)(obj);
};
utils.Fn.prototype.__class__ = utils.Fn;
;
;
{
};
Main.main();
