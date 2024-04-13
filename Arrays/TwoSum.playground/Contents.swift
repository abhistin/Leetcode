import Foundation

class Solution {
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        //MARK: - Brute Force solution using nested for-in loop.
//        for i in 0..<nums.count {
//            for j in i + 1..<nums.count {
//                if nums[i] + nums[j] == target {
//                    return [i,j]
//                }
//            }
//        }
//        return []

        //MARK: - Efficient solution using Dictionary
        
         var dict: [Int: Int] = [:]
         for (index,num) in nums.enumerated() {
             var remainingItem = target - num
             if dict[remainingItem] != nil {
                 return [index,dict[remainingItem]!]
             } else {
                 dict[num] = index
             }
         }
         return []
    }
}

let nums = [2,7,11,15]
let target = 9
print(Solution.twoSum(nums, target)) // output: - [1,0]
