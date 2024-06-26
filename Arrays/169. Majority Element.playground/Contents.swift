class Solution {

    //This question uses Moore's Voting Algorithm.
    
    static func majorityElement(_ nums: [Int]) -> Int {
        var majorityElement = nums.first!
        var counter = 0
        for num in nums {
            if counter == 0 {
                majorityElement = num
            }
            if majorityElement == num {
                counter += 1
            } else {
                counter -= 1
            }
        }
        return majorityElement
    }
}

var inputArray = [2,2,1,1,1,2,2]
let result = Solution.majorityElement(inputArray) // Output:- 2
