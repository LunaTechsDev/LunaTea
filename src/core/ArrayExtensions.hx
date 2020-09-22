package core;

class ArrayExtensions {

 // array1.isProperSubsetOf(array2)
 public static inline function isProperSubsetOf(array1: Array, array2: Array): Bool {
  return ArrayExtensions.isSubsetOf(array1, array2) && !ArrayExtensions.isSubsetOf(array2, array1);
 }

 // array1.isSupersetOf(array2)
 public static inline function isSupersetOf(array1: Array, array2: Array): Bool {
  return ArrayExtensions.isSubsetOf(array2, array1);
 }

 // array1.isSubsetOf(array2)
 public static inline function isSubsetOf(array1: Array, array2: Array): Bool {
  return ArrayExtensions.isEmpty(ArrayExtensions.difference(array1, array2));
 }

 // array.isEmpty()
 public static inline function isEmpty(array: Array): Bool {
  return array.length <= 0;
 }

 // array1.symmetricDifference(array2)
 public static inline function symmetricDifference(array1: Array, array2: Array): Array {
  return ArrayExtensions.union(ArrayExtensions.difference(array1, array2), ArrayExtensions.difference(array2, array1));
 }

 // array1.symmetricDifferenceInPlace(array2)
 public static inline function symmetricDifferenceInPlace(array1: Array, array2: Array): Array {
  return ArrayExtensions.unionInPlace(ArrayExtensions.differenceInPlace(array1, array2), ArrayExtensions.difference(array2, array1));
 }

 // array1.union(array2)
 public static inline function union(array1: Array, array2: Array): Array {
  return array1.concat(ArrayExtensions.difference(array2, array1));
 }

 // array1.unionInPlace(array2)
 public static inline function unionInPlace(array1: Array, array2: Array): Array {
  array1.push(...ArrayExtensions.difference(array2, array1));
  return array1;
 }

 // array1.difference(array2)
 public static inline function difference(array1: Array, array2: Array): Array {
  return array1.filter(element: Any => array2.excludes(element));
 }

 // array1.differenceInPlace(array2)
 public static inline function differenceInPlace(array1: Array, array2: Array): Array {
  for (let i = 0; ; i++) {
   while (array1[i] && array2.includes(array1[i])) array1.remove(array1[i]);
   if (!array1[i]) return array1;
  }
 }

 // array1.intersection(array2)
 public static inline function intersection(array1: Array, array2: Array): Array {
  // The 2nd argument of includes doesn't match with that of filter
  return array1.filter(element: Any => array2.includes(element));
  //
 }

 // array1.intersectionInPlace(array2)
 public static inline function intersectionInPlace(array1: Array, array2: Array): Array {
  for (let i = 0; ; i++) {
   while (array1[i] && array2.excludes(array1[i])) array1.remove(array1[i]);
   if (!array1[i]) return array1;
  }
 }

}
