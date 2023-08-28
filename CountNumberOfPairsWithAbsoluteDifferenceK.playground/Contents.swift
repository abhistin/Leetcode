class Solution {
    static func countKDifference(_ nums: [Int], _ k: Int) -> Int {
         //MARK: - brute force method
        // var counter = 0
        // if nums.isEmpty { return 0 }
        // for num1 in 0..<nums.count {
        //     for num2 in (num1 + 1)..<nums.count {
        //         if abs(nums[num1] - nums[num2]) == k {
        //             counter += 1
        //         }
        //     }
        // }
        // return counter
        //MARK: - using dictionary
        var dict = [Int:Int]()
        var count = 0
        for num in nums {
            dict[num,default:0] += 1
        }
        for num in nums {
            if let targetCount = dict[num + k] {
                count += targetCount
            }
        }
        return count
    }
}

let array = [1,2,2,1], k = 1
print(Solution.countKDifference(array, k)) //prints:- 4
