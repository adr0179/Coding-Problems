package GeneralCodingProblems.countOccurrences;

import java.util.LinkedList;

public class Count<E> {
    public int countOccurrences(LinkedList<E> list, E target) {
        // keep track of the count
        int count = 0;

        // make cases of list size being 1 and size being 0
        if (list.size() == 1) {
            if (list.get(0) == target) {
                return 1;
            } else {
                return 0;
            }
        } else if (list.size() == 0) {
            return 0;
        }

        // check every element of the list and check if value matches target
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i) == target) {
                count++;
            } else {
                continue;
            }
        }

        // return final count
        return count;
    }

    public static void main(String[] args) {
        LinkedList<Integer> l = new LinkedList<Integer>();

        l.add(34);
        l.add(55);
        l.add(67);
        l.add(69);
        l.add(67);
        l.add(67);
        l.add(67);
        l.add(90);

        // create instance of this whole class to work with int
        Count<Integer> qInt = new Count<Integer>(); 
        System.out.println(qInt.countOccurrences(l, 67));
    }
}