class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, int> count = {};

    for (int i = 0; i < nums.length; i++) {
      int num = nums[i];
      
      if (count.containsKey(num) && i - count[num]! <= k) {
        return true;
      } else {
        count[num] = i;
      }
    }

    return false;
  }
}
