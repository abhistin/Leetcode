import Foundation
class Solution {
    func pivotInteger(_ n: Int) -> Int {
    var sumBeforeX = 0
    var sumAfterX = (1...n).reduce(0, +) // Sum of all elements from 1 to n
    for x in 1...n {
        sumAfterX -= x
        if sumBeforeX == sumAfterX {
            return x
        }
        sumBeforeX += x
    }
    return -1
    }
}
