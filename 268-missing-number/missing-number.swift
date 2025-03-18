class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let expected: Int = (1...nums.count).reduce(0, +)
        let actual: Int = nums.reduce(0, +)
        return expected - actual
    }
}