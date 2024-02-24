class Solution {
   static func findDuplicate(_ nums: [Int]) -> Int {
       var dict: [Int: Bool] = [Int: Bool]()
       for num in nums {
           if dict[num] == true {
               return num
           } else {
               dict[num] = true
           }
       }
       return 0
    }
}

let array = [3,1,3,4,2]
print(Solution.findDuplicate(array))
