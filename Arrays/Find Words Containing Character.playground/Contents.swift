import Foundation

class Solution {
    static func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {

        //MARK: - Brute Force Approach

        // var arrayToReturn: Set<Int> = []
        // for (index,word) in words.enumerated() {
        //     let wordCharArr = word
        //     let charArr: [Character] = Array(wordCharArr)
        //     for char in charArr {
        //         if char == x {
        //             arrayToReturn.insert(index)
        //         }
        //     }
        // }
        // return Array(arrayToReturn)

        //MARK: -  Efficient approach using only one for loop

        var arrayToReturn: [Int] = []
        for (index,word) in words.enumerated() {
            if word.contains(x) {
                arrayToReturn.append(index)
            }
        }
        return arrayToReturn
    }
}

let words = ["leet","code"]
let x: Character = "e"

print(Solution.findWordsContaining(words, x)) // [0,1]


