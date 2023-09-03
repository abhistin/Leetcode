import Foundation


class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var pointer1 = 0
        var pointer2 = 0
        var merged = ""
        let char1 = Array(word1)
        let char2 = Array(word2)

        while(pointer1 < char1.count || pointer2 < char2.count) {
            if pointer1 < char1.count {
                merged.append(char1[pointer1])
                pointer1 += 1
            }
            if pointer2 < char2.count {
                merged.append(char2[pointer2])
                pointer2 += 1
            }
        }
        return merged
    }
}
