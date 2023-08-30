import Foundation

class Solution {
    static func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while left < right {
            let mid = left + (right - left) / 2
            if nums[mid] > nums[right] {
                left = mid + 1
            }
            else if nums[mid] < nums[right] {
                right = mid
            }
            else {
                right -= 1
            }
        }
        return nums[left]
    }
}

let array = [3,4,5,1,2]
print(Solution.findMin(array)) //prints 1
