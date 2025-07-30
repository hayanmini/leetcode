class Solution {
  void rotate(List<int> nums, int k) {
    k %= nums.length;
    if(nums.length > 1 && k > 0){
      List<int> result = nums.getRange(nums.length - k, nums.length).toList();
      for (var i = 0; i < nums.length - k; i++) {
        result.add(nums[i]);
	    }
    nums.removeRange(0, nums.length);
    nums.insertAll(0, result);
    }
  }
}