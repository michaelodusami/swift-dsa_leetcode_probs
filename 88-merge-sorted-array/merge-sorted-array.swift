class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        var ptr: Int = m + n - 1
        var i: Int = m - 1
        var j: Int = n - 1

        while j >= 0 {

            if i >= 0 && nums1[i] >= nums2[j] {
                nums1[ptr] = nums1[i]
                i -= 1
            }
            else {
                nums1[ptr] = nums2[j]
                j -= 1
            }
            ptr -= 1
        }

        // go until nums1 or nums2 is at 0 (AND)

        // we have to compare two numbers in an array together
        // compare the last valid element in both arrays
        // --- two pointer approach:
        // 1. get the last two numbers, compare which is greater and slot the greater element into the last pos in the nums1 arr 

        // a merged nums1 where there are no more elements to merge from nums2 in sorted order

    }
}

// READ Q Twice
// READ Examples And Make Notes
// Reverse Engineer