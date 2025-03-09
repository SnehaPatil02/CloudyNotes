# Linked List problems :

[**Merge Two Sorted Lists**](https://leetcode.com/problems/merge-two-sorted-lists/)

```java
class Solution {
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
        ListNode head = new ListNode();
        ListNode curr = head;

        while(list1 != null && list2 != null){
            if(list1.val > list2.val){
                curr.next = list2;
                list2 = list2.next;
            }else {
                curr.next = list1;
                list1 = list1.next;
            }

            curr = curr.next;
        }
        if(list1 != null){
            curr.next = list1;
        }else{
            curr.next = list2;
        }

        return head.next;
        
    }
}
```

**Remove Linked List Elements:**

class Solution {

```java
class Solution {
    public ListNode removeElements(ListNode head, int val) {
		    // Create a temp node that points to the head
        ListNode temp = new ListNode();
        temp.next = head;
        
        // Use a current node to traverse the list, starting from the temp node
        ListNode curr = temp;
        
				// Traverse the list
        while(curr.next != null){
            if(curr.next.val == val){
                // Skip the node with the value to be removed
                curr.next = curr.next.next;
            }else{
		            // Move to the next node
                curr = curr.next;
            }
           
        }
        // Return the new head, which is the next node of the temp
        return temp.next;        
    }
}
```

[**Linked List Cycle**](https://leetcode.com/problems/linked-list-cycle/)

```java
public class Solution {
    public boolean hasCycle(ListNode head) {

        ListNode slow = head;
        ListNode fast = head;

        while(fast != null && fast.next != null){
            slow = slow.next;
            fast = fast.next.next;

            if(fast == slow){
                return true;
            }
        }

        return false;
         
      }
}
```

[**Reverse Linked List**](https://leetcode.com/problems/reverse-linked-list/)

```java
class Solution {
    public ListNode reverseList(ListNode head) {
       
        ListNode curr = head;
        ListNode prev = null;
        ListNode next = null;

        while(curr != null){
            next = curr.next;
           curr.next = prev;
            prev = curr;
            curr = next;

        }

        return prev;
        
    }
}
```

[**Palindrome Linked List**](https://leetcode.com/problems/palindrome-linked-list/)

```java

```

[**Middle of the Linked List**](https://leetcode.com/problems/middle-of-the-linked-list/)

```java
class Solution {
    public ListNode middleNode(ListNode head) {
        ListNode slow = head, fast = head;

        while(fast != null && fast.next != null){
            slow = slow.next;
            fast = fast.next.next;
        }

        return slow;
    }
}
```

[**Remove Duplicates from Sorted List**](https://leetcode.com/problems/remove-duplicates-from-sorted-list/)

```java
class Solution {
    public ListNode deleteDuplicates(ListNode head) {
       
        ListNode curr = head;
       
        while(curr != null && curr.next != null){
            if(curr.val != curr.next.val){
                curr = curr.next;
            }else{
                curr.next = curr.next.next;
            }
        }
        return head;
    }
}
```

[**Intersection of Two Linked Lists**](https://leetcode.com/problems/intersection-of-two-linked-lists/)

```java
public class Solution {
    public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
        if(headA == null || headB == null) return null;

        ListNode a = headA;
        ListNode b = headB;

        while(a != b){
            if(a == null){
                a = headB;
            }else{
                a = a.next;
            }
            b = (b==null) ? headA : b.next;
        }

        return a;
    }
}
```