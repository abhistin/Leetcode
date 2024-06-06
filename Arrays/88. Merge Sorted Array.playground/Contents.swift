import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        //MARK: - Using function
        //  nums1 = (nums1.dropLast(n) + nums2).sorted()

        //MARK: - Brute Force Approach
         var i = m - 1
         var j = n - 1
         var k = (m + n) - 1
        
         while j >= 0 && i >= 0 {
            if nums1[i] < nums2[j] {
                nums1[k] = nums2[j]
                j -= 1
                k -= 1
            } else {
                nums1[k] = nums1[i]
                k -= 1
                i -= 1
            }
         }

         if i < 0 && j >= 0 {
            while j >= 0 {
                nums1[k] = nums2[j]
                k -= 1
                j -= 1
            }
        }
    }
}
