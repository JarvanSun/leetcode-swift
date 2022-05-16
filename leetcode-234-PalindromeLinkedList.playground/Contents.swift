import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard let head = head else { return false }
        var res = true
        var p: ListNode? = head
        
        var values: [Int] = []
        while p != nil {
            values.append(p!.val)
            p = p?.next
        }
        
        let len = values.count
        let midIndex = Int(len/2)

        for i in 0..<midIndex {
            let value = values[i]
            let comparedVal = values[len - i - 1]
            
            if value != comparedVal {
                res = false
                break
            } else {
                res = true
            }
        }
        
        return res
    }
}

// Testing
let head = ListNode(0, .init(1, .init(2, .init(2, .init(1, .init(1, nil))))))
//let head = ListNode(0, nil)
//let head = ListNode(0, .init(1, .init(0, nil)))
let solution = Solution()
print(solution.isPalindrome(head))

