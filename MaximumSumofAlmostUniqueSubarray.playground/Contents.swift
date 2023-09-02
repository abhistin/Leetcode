import Foundation
class Solution {
    func maxSum(_ nums: [Int], _ m: Int, _ k: Int) -> Int {
    var maxSum = 0
    var currentSum = 0
    var elementCount = [Int: Int]()
    var deque = [Int]()
    
    // Helper function to count distinct elements in the dictionary
    func countDistinctElements(_ dict: [Int: Int]) -> Int {
        return dict.values.filter { $0 > 0 }.count
    }
    
    for i in 0..<nums.count {
        // Add the new element to the subarray
        currentSum += nums[i]
        elementCount[nums[i], default: 0] += 1
        deque.append(i)
        
        // Remove the leftmost element from the subarray if needed
        while deque.count > k {
            let leftIndex = deque.removeFirst()
            elementCount[nums[leftIndex]]! -= 1
            if elementCount[nums[leftIndex]] == 0 {
                elementCount[nums[leftIndex]] = nil
            }
            currentSum -= nums[leftIndex]
        }
        
        // Check if the subarray satisfies the uniqueness condition
        if countDistinctElements(elementCount) >= m {
            maxSum = max(maxSum, currentSum)
        }
    }
    
    return maxSum
    }
}
