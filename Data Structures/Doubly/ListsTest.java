package Doubly;
// does not work
public class ListsTest {
    public static void main(String[] args) {
        DoublyLinkedList intList = new DoublyLinkedList();
        intList.addToFront(31);
        System.out.println(intList);
        intList.removeFromFront();
        intList.addToFront(12);
       System.out.println(intList);
       System.out.println(intList.getVal(3));
       intList.clear();
       System.out.println(intList);
       System.out.println(intList.removeFromEnd(3));
    }
}