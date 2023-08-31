import Foundation

class Solution {
    static func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
        var mid = left + (right - left) / 2
        if nums[mid] == target { return mid }
        if nums[left] <= nums[mid] {
            if nums[left] <= target && target < nums[mid] {
                right = mid - 1
            }
            else {
                left = mid + 1
            }
        }
        else {
             if nums[mid] < target && target <= nums[right] {
                 left = mid + 1
            }
            else {
                right = mid - 1
            }
        }
        }
        return -1
    }
}

let array = [4,5,6,7,0,1,2], target = 0
print(Solution.search(array, target)) //output:- 4(index of 0 in Array)
