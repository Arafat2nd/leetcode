class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> result = [];
    nums.sort();

    for (int i = 0; i < nums.length - 2; i++) {
      if (i > 0 && nums[i] == nums[i - 1]) {
        continue; // Skip duplicates
      }

      int left = i + 1;
      int right = nums.length - 1;

      while (left < right) {
        int sum = nums[i] + nums[left] + nums[right];

        if (sum == 0) {
          result.add([nums[i], nums[left], nums[right]]);
          left++;
          right--;

          while (left < right && nums[left] == nums[left - 1]) {
            left++; // Skip duplicates
          }
          while (left < right && nums[right] == nums[right + 1]) {
            right--; // Skip duplicates
          }
        } else if (sum < 0) {
          left++;
        } else {
          right--;
        }
      }
    }

    return result;
  }
}
