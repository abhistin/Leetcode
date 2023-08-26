import Foundation

class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
            var result = ""
    var num = columnNumber
    
    while num > 0 {
        num -= 1
        
        let charValue = UnicodeScalar(Int(Character("A").asciiValue!) + (num % 26))
        result = String(charValue!) + result
        
        num /= 26
    }
    
    return result
    }
}
