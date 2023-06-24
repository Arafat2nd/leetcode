class Solution {
 
  static int countTriplets(int sum,List<int>nums) {
    nums.sort();
    int count = 0;

    for (int i = 0; i < nums.length - 2; i++) {
      int left = i + 1;
      int right = nums.length - 1;

      while (left < right) {
        int tripletSum = nums[i] + nums[left] + nums[right];
        
        if (tripletSum < sum) {
          count += right - left;
          left++;
        } else {
          right--;
        }
      }
    }

    return count;
  }


}
    void main() {
    int targetSum = 12;
    List<int> arr = [5, 1, 3, 4, 7];
    print(Solution.countTriplets( targetSum,arr));
  }
