import Foundation
class Solution {
    static func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        if nums.count == 1 { return Double(nums[0]) }
        var sum = 0
        for i in 0..<k {
            sum += nums[i]
        }
        var maxSum = sum
        var startIndex = 0
        var endIndex = k
        while(endIndex < nums.count) {
            sum -= nums[startIndex]
            startIndex += 1
            sum += nums[endIndex]
            endIndex += 1

            maxSum = max(maxSum,sum)
        }
        return Double(maxSum) / Double(k)
    }
}

let nums = [1,12,-5,-6,50,3]
let k = 4
print(Solution.findMaxAverage(nums, k)) //Output:- 12.75
