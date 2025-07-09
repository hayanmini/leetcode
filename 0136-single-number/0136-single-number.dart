class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;

    for (var num in nums) {
        result = result ^ num;
    }

    print("남은 숫자 : $result");
    return result;
  }
}

class Solution2 {
  int majorityElement2(List<int> nums) {
    nums.sort();
    return nums[nums.length ~/ 2];
  }
}
