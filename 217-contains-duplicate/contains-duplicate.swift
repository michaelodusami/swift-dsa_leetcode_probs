class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        // if every item is unique, this means that we can utilize a set
        // 1st solution: return Set(nums).count != nums.count

        var map: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let presentValue = map[nums[i]] {
                return true
            }
            map[nums[i], default: 0] += 1
        }
        
        return false
    }
}