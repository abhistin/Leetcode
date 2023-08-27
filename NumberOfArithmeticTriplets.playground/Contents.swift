import Foundation
class Solution {
   static func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
        //MARK: - This question can be solved using 3-Loops and Dictionary, using loops is the brute force method.
        //MARK: - Using 3-Loops
        // var counter = 0
        // for num1 in 0..<nums.count {
        //     for num2 in num1+1..<nums.count {
        //        if nums[num2] - nums[num1] == diff {
        //         for num3 in num2+1..<nums.count {
        //             if nums[num3] - nums[num2] == diff {
        //                 counter += 1
        //             }
        //         }
        //     }
        //     }
        // }
        // return counter

        //MARK: - Using Dictionary
        var counter = 0
        var dict = [Int:Int]()
        for num in nums {
            dict[num, default:0] += 1
        }

        for num in nums {
            if let freq1 = dict[num - diff], let freq2 = dict[num + diff] {
                counter += 1
            }
        }
        return counter
    }
}

let array = [0,1,4,6,7,10]
let diff = 3
print(Solution.arithmeticTriplets(array, diff)) //Output: - 2
