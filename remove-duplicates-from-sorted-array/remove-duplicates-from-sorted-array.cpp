class Solution {
public:
  int removeDuplicates(vector<int>& nums) {
    unordered_map<int, int> numsMap;
    vector<int> tmp;
    for (int i = 0; i < nums.size(); i++) {
      if (numsMap.find(nums[i]) != numsMap.end()) {
        continue;
      } else {
        numsMap[nums[i]] = 0;
        tmp.push_back(nums[i]);
      }
    }
    nums = tmp;
     return nums.size();
  }
};