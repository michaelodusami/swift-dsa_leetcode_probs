class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        // two pointers
        // array is already sorted so we can merge from the back
        // need two pointers at both arrays at the end
        // one pointer for positioning
        // we check which element in the array is greater, the greater element gets in the position with it's designated array pointer being decrease
        // when do we stop?: when ptr is at m

        var ptrOne: Int = m - 1
        var ptrTwo: Int = n - 1
        var ptr: Int = m + n - 1

        // Merge from the end of both arrays
        while ptrOne >= 0 && ptrTwo >= 0 {
            print("Enter: \(nums1) with pointer at \(ptr) and ptr1 at \(ptrOne)")
            if nums1[ptrOne] > nums2[ptrTwo] {
                nums1[ptr] = nums1[ptrOne]
                ptrOne -= 1
            } else {
                nums1[ptr] = nums2[ptrTwo]
                ptrTwo -= 1
            }
            ptr -= 1
            print("Exit: \(nums1) with pointer at \(ptr) and ptr1 at \(ptrOne)")
        }

        print(nums1)

        // If there are remaining elements in nums2, copy them over
        while ptrTwo >= 0 {
            nums1[ptr] = nums2[ptrTwo]
            ptrTwo -= 1
            ptr -= 1
        }
  


    }
}