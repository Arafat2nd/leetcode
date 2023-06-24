class Solution {
  int threeSumClosest(List<int> nums, int target) {
    nums.sort();
    int closest = nums[0] + nums[1] + nums[2];
    int n = nums.length;

    for (int i = 0; i < n - 2; i++) {
      int left = i + 1;
      int right = n - 1;

      while (left < right) {
        int sum = nums[i] + nums[left] + nums[right];

        if (sum == target) {
          return target; // Exact sum found, return early
        }

        if (sum < target) {
          left++;
        } else {
          right--;
        }

        if ((sum - target).abs() < (closest - target).abs()) {
          closest = sum;
        }
      }
    }

    return closest;
  }
}