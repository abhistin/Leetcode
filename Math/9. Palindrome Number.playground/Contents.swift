import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        //MARK: - Basic Approach
        var number = x
        var reversedNumber = 0
        while number > 0 {
            let digit = number % 10
            reversedNumber = (reversedNumber * 10) + digit
            number /= 10
        }
        return reversedNumber == x

        //MARK: - Using reversed() function
        // var reversedNumber = String(String(x).reversed())
        // return String(x) == reversedNumber
    }
}
