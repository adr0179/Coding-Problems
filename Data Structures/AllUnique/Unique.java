package AllUnique;

import java.util.LinkedList;
import java.util.Queue;

public class Unique {
    public boolean allUnique(Queue<Integer> q) {
        Queue<Integer> emp = new LinkedList<Integer>();
        int size = q.size();
        
        for (int i = 0; i < size; i++) {
            emp.add(q.poll());
            if (emp.peek() == q.peek()) {
                return false;
            } else {
                q.add(emp.poll());
                continue;
            }
        }

        return true;
    }

    public static void main(String[] args) {
            Queue<Integer> q1 = new LinkedList<>();

            q1.add(34);
            q1.add(55);
            q1.add(67);
            q1.add(69);
            q1.add(65);
            q1.add(70);
            q1.add(80);
            q1.add(40);

            Unique au = new Unique();
            System.out.println(au.allUnique(q1));
            System.out.println(q1);
    }
}