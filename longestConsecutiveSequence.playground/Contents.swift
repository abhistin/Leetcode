import Foundation

class Solution {
    static func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var dict: [Int:Int] = [:]
        var longestStreak = 1
        for num in nums {
            if dict[num ] == nil {
                let left = dict[num - 1] ?? 0
                let right = dict[num + 1] ?? 0
                let currentStreak = left + right + 1

                dict[num] = currentStreak
                dict[num - left] = currentStreak
                dict[num + right] = currentStreak
                longestStreak = max(longestStreak, currentStreak)
            }
        }
        return longestStreak
              
    }
}

let nums = [100,4,200,3,2,1]
let result = Solution.longestConsecutive(nums) //result = 4, as we have longest consecutive sequence = [1,2,3,4]
