package core;

import js.Syntax;

inline function mapt<T, K>(arr: Array<T>, fn: (T) -> K) {
 return Syntax.code("{0}.map({1})", arr, fn);
}

/**
 * using the default js map implementation for mapping over
 * an array in JS.
 * @param arr
 * @param fn
 * @return -> K
 */
inline function mapti<T, K>(arr: Array<T>, fn: (T, index: Int) -> K) {
 return Syntax.code("{0}.map({1})", arr, fn);
}
