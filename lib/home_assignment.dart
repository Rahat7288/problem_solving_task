import 'dart:io';

void main() {
  ///diclearing two empty list of integer
  ///List act like array in dart

  List<int> nums1 = [];
  List<int> nums2 = [];

  ///getting two lenth to populate the list
  int firstLen, secondLen;
  print("first length");
  firstLen = stdin.readByteSync();

  var nums1Output = getFirstList(firstLen, nums1);
  print(nums1);

  print("second length");
  secondLen = stdin.readByteSync();

  var nums2Output = getSecondList(secondLen, nums2);

  var finalOutput = Result(nums1Output, nums2Output);

  print("$finalOutput");
}

///populating the first list
List<int> getFirstList(int len, List<int> arr1) {
  print('add elements to first list');
  for (int i = 0; i <= len; i++) {
    i = stdin.readByteSync();
    arr1.add(i);
    print(arr1);
  }
  return arr1;
}

///populating the second list
List<int> getSecondList(int len, List<int> arr2) {
  print("add second list elements");
  for (int i = 0; i <= len; i++) {
    i = stdin.readByteSync();
    arr2.add(i);
  }
  return arr2;
}

///help to find the intersectin

List<int> Result(List<int> first, List<int> second) {
  final List<int> result = [];
  for (int num in first) {
    if (second.contains(num) && !result.contains(num)) {
      result.add(num);
    }
  }
  return result;
}






// Given two integer arrays nums1 and nums2, return an array of their intersection. The result must be unique and can be returned in any order.

// Sample input (with corner cases):
// Input: nums1 = [1, 2, 2, 1], nums2 = [2, 2]
// Output: [2]
// Input: nums1 = [4, 9, 5], nums2 = [9, 4, 9, 8, 4]
// Output: [9, 4]
// ========

// Please state the time and space complexity at the end