package core;

enum abstract ScriptableEvents(String) from String to String {
 public var INIT = 'init';
 public var UPDATE = 'update';
 public var DESTROY = 'destroy';
}
