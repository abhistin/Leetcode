import Foundation

//MARK: - Question
//input - "falcon is coming"
//output - "Falcon Is Coming"

//MARK: - Brute Force Approach
class Solution {
    static func changeFirstLetter(_ string: String) -> String {
        var result = ""
        var capatilizeNext = true
        var charArray: [Character] = Array(string)
        for char in charArray {
            if capatilizeNext {
                result.append((char.uppercased()))
                capatilizeNext = !capatilizeNext
            } else {
                result.append(char)
            }
            if char == " " {
                capatilizeNext = true
            }
        }
        return result
    }
}

let inputString = "falcon is coming"
let result = Solution.changeFirstLetter(inputString)
print(result) // "Falcon Is Coming"


//MARK: - Another Approach
func capitalizeFirstLetterOfEachWord(_ input: String) -> String {
    let words = input.components(separatedBy: " ")
    var capitalizedWords = [String]()
    
    for word in words {
        let capitalizedWord = word.prefix(1).capitalized + word.dropFirst()
        capitalizedWords.append(String(capitalizedWord))
    }
    
    return capitalizedWords.joined(separator: " ")
}

let input = "falcon is coming"
let output = capitalizeFirstLetterOfEachWord(input)
print(output) // Output: Falcon Is Coming

