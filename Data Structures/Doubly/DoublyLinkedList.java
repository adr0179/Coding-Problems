package Doubly;

public class DoublyLinkedList {
    Node head;
    int size;

    public DoublyLinkedList() {
        this.head = null;
        this.size = 0;
    }

    public void addToFront(int val) {
        Node n = new Node(val);
        n.setNext(this.head);
        this.head = n;
        this.head.setPrevious(null);
        size++;
    }

    public void addToEnd(int val) {
        if (this.size == 0 ) {
            this.head = new Node(val);
            this.size++;
            return;
        }

        Node cur = this.head;
        while (cur.getNext() != null) {
            cur = cur.getNext();
        }

        cur.setNext(new Node(val));
        cur.getNext().setPrevious(cur);
        this.size++;
    }

    public void removeFromFront() {
        if (this.size == 1) {
            this.head = null;
            size--;
        } else {
            this.head = this.head.getNext();
            this.head.setPrevious(null);
            this.size--;
        }
    }

    public int removeFromEnd(int val) {
        Node cur = this.head;

        if (this.head == null) {
            return -1;
        }

        if (this.size == 1) {
            this.head = null;
            size--;
            return val;
        } else if (this.head.getValue() == val) {
            this.head = this.head.getNext();
            this.head.setPrevious(null);
            size--;
            return val;
        }

        while (cur.getNext().getValue() != -1) {
            if (cur.getNext().getValue() == val) {
                cur.setNext(cur.getNext().getNext());
                cur.setPrevious(cur); 
                size--;
                return val;
            }
            cur = cur.getNext();
        }

        return -1;
    }

    public void clear() {
        this.head = null;
    }

    public int getVal(int ind) {
        Node cur = this.head;
        int count = 0; 
        while (cur != null) {
            if (count == ind) {
                return cur.getValue();
            }
            cur = cur.getNext();
            count++;
        }

        return -1;
    }

    public String toString() {
        Node cur = this.head;
        if (cur == null) {
            return "[]";
        }

        String list = "[";
        while (cur != null) {
            if (cur.getNext() == null) {
                list += cur.getValue() + "]";
                return list;
            }
            list += cur.getValue() + ", ";
            cur = cur.getNext();
            
        }

        return null;
    }

    public int previous(int val) {
        Node cur = this.head;

        if (this.head.getValue() == val) {
            return -1;
        }
        
        while (cur.getValue() != val) {
            cur = cur.getNext();
        }

        return cur.getPrevious().getValue();
    }

    public int getLength() {
        return this.size;
    }
}