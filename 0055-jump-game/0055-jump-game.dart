class Solution {
  bool canJump(List<int> nums) {
    int maxReachable = 0;
        
    for (int i = 0; i < nums.length; i++) {
        if (i > maxReachable) {
            return false;
        }
        maxReachable = max(maxReachable, i + nums[i]);
        if (maxReachable >= nums.length - 1) {
            return true;
        }
    }        
        return false;
    }
}
