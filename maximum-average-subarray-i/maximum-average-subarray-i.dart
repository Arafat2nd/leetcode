class Solution {
    double findMaxAverage(List<int> nums, int k) {
        double maxAvg = -999.0;
        int sum = 0;

         for (int i = 0; i < k; i++) {
            sum += nums[i];
        }
        maxAvg = sum /   k;
         for (int i = k; i < nums.length; i++) {
            sum += nums[i] - nums[i - k];   
            maxAvg =  max(maxAvg, sum /   k);
        }

        return maxAvg;
    }
}
