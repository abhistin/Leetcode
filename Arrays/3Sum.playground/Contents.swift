
class Solution {
     static func threeSum(_ nums: [Int]) -> [[Int]] {

    //Brute Force approach

        // var result: Set<[Int]> = []
        // for i in 0..<nums.count {
        //     for j in i + 1..<nums.count {
        //         for k in j + 1..<nums.count {
        //             if nums[i] + nums[j] + nums[k] == 0 {
        //                 let triplets = [nums[i],nums[j],num[k]].sorted()
        //                 result.insert(triplets)
        //             }
        //         }
        //     }
        // }
        // return Array(result)
    

    //Efficient approach
    var sortedNums = nums.sorted()
    var result: Set<[Int]> = []
    for i in 0..<sortedNums.count {
        var left = i + 1
        var right = sortedNums.count - 1

        while left < right {
            var sum = sortedNums[i] + sortedNums[left] + sortedNums[right]
            if sum == 0 {
                result.insert([sortedNums[i], sortedNums[left], sortedNums[right]])
                left += 1
                right -= 1
            } else if sum > 0 {
                right -= 1
            } else {
                left += 1
            }
        }
    }
    return Array(result)
    }
}

let nums1 = [-1,0,1,2,-1,-4]
let nums2 = [0,1,1]
let nums3 = [0,0,0]
print(Solution.threeSum(nums1)) // [[-1, -1, 2], [-1, 0, 1]]
print(Solution.threeSum(nums2)) // []
print(Solution.threeSum(nums3)) // [[0,0,0]]

