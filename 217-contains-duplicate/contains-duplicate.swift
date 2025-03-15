class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        // if every item is unique, this means that we can utilize a set
        return Set(nums).count != nums.count
    }
}