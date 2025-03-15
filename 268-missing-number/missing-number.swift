class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var n: Int = nums.count

        // n is innclusive

        for i in 0...n {
            if nums.contains(i) == false {
                return i
            }
        }

        return -1
    }
}