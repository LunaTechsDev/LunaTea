package core;

import js.Syntax;

class LambdaTea {
 public static inline function mapt<T, K>(arr: Array<T>, fn: (T) -> K) {
  return Syntax.code("{0}.map({1})", arr, fn);
 }

 /**
  * using the default js map implementation for mapping over
  * an array in JS.
  * @param arr
  * @param fn
  * @return -> K
  */
 public static inline function mapti<T, K>(arr: Array<T>,
   fn: (T, index: Int) -> K) {
  return Syntax.code("{0}.map({1})", arr, fn);
 }
}
