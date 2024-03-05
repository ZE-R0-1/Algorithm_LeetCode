class Solution {

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2
        var prev = ListNode(0)
        var carry = 0
        let head = prev
        
        while l1 != nil || l2 != nil || carry != 0 {
            let cur = ListNode(0)
            let sum = (l2 == nil ? 0 : l2!.val) + (l1 == nil ? 0 : l1!.val) + carry
            cur.val = sum % 10
            carry = sum / 10
            prev.next = cur
            prev = cur
            l1 = l1 == nil ? l1: l1?.next
            l2 = l2 == nil ? l2: l2?.next
        }
        
        return head.next
    }
}