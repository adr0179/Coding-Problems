package Doubly;

public class Node {
    Node next;
    Node previous;
    int value;

    public Node(int value) {
        this.next = null;
        this.previous = null;
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }
    
    public Node getNext() {
        return this.next;
    }

    public Node getPrevious() {
        return this.previous;
    }

    public void setNext(Node node) {
        this.next = node;
    }

    public void setPrevious(Node node) {
        this.previous = node;
    }
}
