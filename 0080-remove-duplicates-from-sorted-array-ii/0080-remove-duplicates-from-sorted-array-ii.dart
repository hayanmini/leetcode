class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

        int k = 1;
        int count = 1;

        for (int i = 1; i < nums.length; i++) {
            if (nums[i] == nums[i - 1]) {
                count++;
            } else {
                count = 1;
            }

            if (count <= 2) {
                nums[k] = nums[i];
                k++;
            }
        }
    return k;
  }
}