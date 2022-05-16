/// [876. Middle of the Linked List](https://leetcode.com/problems/middle-of-the-linked-list/)

import UIKit

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slowPointer = head
        var fastPointer = head
        
        while fastPointer != nil && fastPointer?.next != nil {
            slowPointer = slowPointer?.next
            fastPointer = fastPointer?.next?.next
        }
        
        return slowPointer
    }
}

let solution = Solution()
let linkedList1 = solution.middleNode(.init(1, .init(2, .init(3, .init(4, .init(5))))))
let linkedList2 = solution.middleNode(.init(1, .init(2, .init(3, .init(4, .init(5, .init(6)))))))
let linkedList3 = solution.middleNode(.init(1))
assert(linkedList1?.val == 3)
assert(linkedList2?.val == 4)
assert(linkedList3?.val == 1)
