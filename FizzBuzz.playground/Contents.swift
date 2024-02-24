import Foundation

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var array = [String]()
        for num in 1...n {
            if num % 3 == 0 && num % 5 == 0 {
                array.append("FizzBuzz")
            }
            else if num % 3 == 0 {
                array.append("Fizz")
            }
            else if num % 5 == 0 {
                array.append("Buzz")
            }
            else {
                array.append(String(num))
            }
        }
        return array
    }
}
