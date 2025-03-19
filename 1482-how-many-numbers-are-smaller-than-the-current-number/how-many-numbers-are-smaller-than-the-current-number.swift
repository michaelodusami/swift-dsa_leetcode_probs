class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        // READ Q2
        // ExAMPLES AND NOTES
        // REVERSE ENGINEER
        var s: [Int] = []
        for i in 0..<nums.count {
            var count: Int = 0
            for j in 0..<nums.count {
                if i != j && nums[j] < nums[i] {
                    count += 1
                }
            }
            s.append(count)
        }
        return s
    }
}