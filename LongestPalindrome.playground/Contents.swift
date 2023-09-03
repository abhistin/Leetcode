import Foundation

class Solution {
    func longestPalindrome(_ s: String) -> Int {
         var charCount = [Character: Int]()
    var maxLength = 0
    var hasOddFrequency = false

    for char in s {
        charCount[char, default: 0] += 1
    }

    for (_, count) in charCount {
        if count % 2 == 0 {
            maxLength += count
        } else {
            maxLength += count - 1
            hasOddFrequency = true
        }
    }

    return hasOddFrequency ? maxLength + 1 : maxLength
    }
}
