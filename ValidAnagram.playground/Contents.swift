import UIKit

class Solution {
    static func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict: [Character:Int] = [:]
        for char in s {
            if let count = dict[char] {
                dict[char] = count + 1
            }
            else { dict[char] = 1 }
        }
        for char in t {
            if let count = dict[char], count > 0 {
                dict[char] = count - 1
            }
            else { return false }
        }
        for count in dict.values {
            if count != 0 { return false }
        }
        return true
    }
}
let s = "anagram"
let t = "nagaram"
print(Solution.isAnagram(s, t)) //return true.
