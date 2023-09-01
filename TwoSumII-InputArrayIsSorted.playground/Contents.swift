import Foundation

class Solution {
    static func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum == target {
                var array = [left + 1, right + 1]
                return array
            }
            else if sum < target {
                 left += 1
            }
            else {
                right -= 1
            }
        }
        var array = [-1,-1]
        return array
    }
}

let array = [2,7,11,15], target = 9
print(Solution.twoSum(array, target))// Output:- [1,2]
