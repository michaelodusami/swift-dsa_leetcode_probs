class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        return nums.map {
            [sorted = nums.sorted()] num in sorted.firstIndex(of: num)!
        }
    }
}