import Foundation
class Solution {
    static func checkIfPangram(_ sentence: String) -> Bool {
//MARK: - Using Dictionary
        var dict: [Character: Bool] = [:]
        for char in sentence {
            if char.isLetter {
            dict[char] = true
            }
        }
        return dict.count == 26

//MARK: - Using Set
        // var charSet = Set<Character>()
        // for char in sentence {
        //     charSet.insert(char)
        // }
        // if charSet.count == 26 { return true }
        // else { return false }
    }
}

let sentence1 = "the quick brown fox jumps over the lazy dog"
let sentence2 = "hello world"
print(Solution.checkIfPangram(sentence1)) // prints true
print(Solution.checkIfPangram(sentence2)) // prints false
