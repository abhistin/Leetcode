import Foundation

class Solution {
    func fib(_ n: Int) -> Int {

        // if n == 1 || n == 0 { return n }
        // return fib(n - 1) + fib(n - 2)

        if n == 1 || n == 0 { return n }

        var a = 0
        var b = 1

        for _ in 2...n {
            var temp = a + b
            a = b
            b = temp
        }
        
        return b
    }
}
