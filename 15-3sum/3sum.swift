class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted() // Step 1: Sort the array
        var result: [[Int]] = []
        
        for i in 0..<nums.count {
            // Skip duplicates for the first element
            if i > 0 && nums[i] == nums[i - 1] { 
                continue 
            }
            
            var left = i + 1
            var right = nums.count - 1
            
            while left < right {
                let sum = nums[i] + nums[left] + nums[right]
                
                if sum == 0 {
                    result.append([nums[i], nums[left], nums[right]])
                    
                    // Skip duplicate elements for left and right
                    repeat { left += 1 } while left < right && nums[left] == nums[left - 1]
                    repeat { right -= 1 } while left < right && nums[right] == nums[right + 1]
                } 
                else if sum < 0 {
                    left += 1
                } 
                else {
                    right -= 1
                }
            }
        }
        
        return result
    }
}