import Foundation
class Solution {
    //Calculate pivot
    //rotate the whole array
    //rotate array before pivot
    //rotate array after pivot
    static func rotate(_ nums: inout [Int], _ k: Int) {
        if nums.isEmpty { return }
        let pivot = k % nums.count
        swap(&nums, 0, nums.count - 1)
        swap(&nums, 0, pivot - 1)
        swap(&nums, pivot, nums.count - 1)
    }

    static private func swap(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var start = start
        var end = end
        while start < end {
            nums.swapAt(start,end)
            start += 1
            end -= 1
        }
    }
}

var nums = [1,2,3,4,5,6,7]
let k = 3
Solution.rotate(&nums, k)
print(nums) // prints:- [5,6,7,1,2,3,4]
