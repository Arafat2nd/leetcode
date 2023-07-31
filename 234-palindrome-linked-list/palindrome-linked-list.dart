class Solution {
  


bool isPalindrome(ListNode? head) {
  ListNode? reverseList(ListNode? node) {
    ListNode? prev;
    while (node != null) {
      ListNode? nextNode = node.next;
      node.next = prev;
      prev = node;
      node = nextNode;
    }
    return prev;
  }

  ListNode? slow = head;
  ListNode? fast = head;
  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  if (fast != null) {
    slow = slow!.next;
  }

  ListNode? reversedHalf = reverseList(slow);

  while (reversedHalf != null) {
    if (head!.val != reversedHalf.val) {
      return false;
    }
    head = head.next;
    reversedHalf = reversedHalf.next;
  }

  return true;
}
}
