# Design LinkedList

```java
class MyLinkedList {
    Node head;
    int length;

    public class Node{
        int val;
        Node next;

        Node(int val){
            this.val = val;
        }
    }

    public MyLinkedList() {
         this.head = null;
         this.length = 0;
    }
    
    public int get(int index) {
        if(index >= length) return -1;

        int count =0;
        Node curr = head;
        while(count<index){
            count++;
            curr = curr.next;
        }
        return curr.val;
    }
    
    public void addAtHead(int val) {
        Node newNode = new Node(val);
        newNode.next = head;
        head = newNode;
        length++;
        
    }
    
    public void addAtTail(int val) {
        if(head == null){
            addAtHead(val);
        }else {
            Node curr = head;
            while(curr != null){
                curr.next = curr;
                Node newNode = new Node(val);
                curr.next.next = newNode;
                length++;
            }
        }
    }
    
    public void addAtIndex(int index, int val) {
        if(index >length){
            return;
        }
        if(index ==0) addAtHead(val);

        else {
            int count = 1;
            Node curr = head;
            while(count < index){
                curr = curr.next;
                count++;
            }

            Node newNode = new Node(val);
            Node next = curr.next;
            curr.next = newNode;
            length++;
        }
        
    }
    
    public void deleteAtIndex(int index) {
        if(index >= length) return;
        if(index == 0){
            head = head.next;
            length--;
        }
        else {
            int count = 1;
            Node curr = head;
            while(count < index){
                count++;
                curr = curr.next;
            }

            curr.next = curr.next.next;
            length--;
        }
    }
}
```