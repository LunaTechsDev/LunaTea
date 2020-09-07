package macros;

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Compiler;
import haxe.macro.JSGenApi;
import haxe.macro.Context;
import haxe.macro.TypeTools;
import sys.io.File;
import sys.FileSystem;

using Lambda;
using StringTools;
using core.StringExtensions;

/**
 * JS Generator Macros
 */
class JsMacros {
 public static macro function setup(): Void {
  Compiler.setCustomJSGenerator((api: JSGenApi) -> {
   trace(api.types);
   if (api.main != null) {
    trace(api.main);
    var code = api.generateStatement(api.main);

    Compiler.setOutput(api.outputFile);

    File.write(api.outputFile, false).writeString(code);
   }
  });
 }
}
