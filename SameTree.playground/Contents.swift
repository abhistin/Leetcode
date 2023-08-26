import Foundation
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        return checkSame(p,q)
    }
    private func checkSame(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard let pCopy = p, let qCopy = q else { return p===q }
        if pCopy.val != qCopy.val { return false }
        return checkSame(pCopy.left, qCopy.left ) && checkSame(pCopy.right, qCopy.right)
    }
    
}
