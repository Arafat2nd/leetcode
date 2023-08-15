class Solution {
public:
bool circularArrayLoop(vector<int>& nums) {
    auto get_next_index = [&nums](int index) {
        return (index + nums[index] + nums.size()) % nums.size();
    };
    
    for (int start = 0; start < nums.size(); ++start) {
        int slow = start;
        int fast = start;
        
        while (nums[slow] * nums[fast] > 0 && nums[slow] * nums[get_next_index(fast)] > 0) {
            slow = get_next_index(slow);
            fast = get_next_index(get_next_index(fast));
            
            if (slow == fast) {
                if (slow == get_next_index(slow)) {
                    break;
                }
                return true;
            }
        }
    }
    
    return false;
}
};