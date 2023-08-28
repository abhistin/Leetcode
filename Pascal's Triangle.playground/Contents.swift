import Foundation
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 0 { return [] }
        var result = [[1]]

        for i in 1..<numRows {
            let previousRow = result[i - 1]
            var currentRow = [1]
            for j in 1..<i {
                let firstNum = previousRow[j - 1]
                let secondNum = previousRow[j]
                currentRow.append(firstNum + secondNum)

            }
            currentRow.append(1)
            result.append(currentRow)
        }
        return result
    }
}
