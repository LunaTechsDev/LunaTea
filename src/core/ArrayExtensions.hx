package core;

// array1.isProperSubsetOf(array2)
inline function isProperSubsetOf<T>(array1: Array<T>, array2: Array<T>): Bool {
 return ArrayExtensions.isSubsetOf(array1, array2)
  && !ArrayExtensions.isSubsetOf(array2, array1);
}

// array1.isSupersetOf(array2)
inline function isSupersetOf<T>(array1: Array<T>, array2: Array<T>): Bool {
 return ArrayExtensions.isSubsetOf(array2, array1);
}

// array1.isSubsetOf(array2)
inline function isSubsetOf<T>(array1: Array<T>, array2: Array<T>): Bool {
 return ArrayExtensions.isEmpty(ArrayExtensions.difference(array1, array2));
}

// array.isEmpty()
inline function isEmpty<T>(array: Array<T>): Bool {
 return array.length <= 0;
}

// array1.symmetricDifference(array2)
inline function symmetricDifference<T>(array1: Array<T>,
  array2: Array<T>): Array<T> {
 return ArrayExtensions.union(ArrayExtensions.difference(array1, array2),
  ArrayExtensions.difference(array2, array1));
}

// array1.symmetricDifferenceInPlace(array2)
inline function symmetricDifferenceInPlace<T>(array1: Array<T>,
  array2: Array<T>): Array<T> {
 return ArrayExtensions.unionInPlace(ArrayExtensions.differenceInPlace(array1,
  array2),
  ArrayExtensions.difference(array2, array1));
}

// array1.union(array2)
inline function union<T>(array1: Array<T>, array2: Array<T>): Array<T> {
 return array1.concat(ArrayExtensions.difference(array2, array1));
}

// array1.unionInPlace(array2)
inline function unionInPlace<T>(array1: Array<T>, array2: Array<T>): Array<T> {
 array1.concat(ArrayExtensions.difference(array2,
  array1)); // ... <-- may need to fix to support expand used here
 return array1;
}

// array1.difference(array2)
inline function difference<T>(array1: Array<T>, array2: Array<T>): Array<T> {
 return array1.filter((element: T) -> !array2.contains(element));
}

// array1.differenceInPlace(array2)
inline function differenceInPlace<T>(array1: Array<T>,
  array2: Array<T>): Array<T> {
 // let i=0;; i++
 var i = 0;
 while (array1[i] != null) {
  while (array1[i] != null && array2.contains(array1[i])) {
   array1.remove(array1[i]);
  }
  // !array1[i]
  //  if (array1[i] == null) {
  //   return array1;
  //  }
  i++;
 }

 return array1;
}

// array1.intersection(array2)
inline function intersection<T>(array1: Array<T>, array2: Array<T>): Array<T> {
 // The 2nd argument of includes doesn't match with that of filter
 return array1.filter((element: T) -> array2.contains(element));
 //
}

// array1.intersectionInPlace(array2)
inline function intersectionInPlace<T>(array1: Array<T>,
  array2: Array<T>): Array<T> {
 var i = 0;
 while (array1[i] != null) {
  while (array1[i] != null && !array2.contains(array1[i])) {
   array1.remove(array1[i]);
  }

  if (array1[i] == null) {
   return array1;
  }
  i++;
 }

 return array1;
}
