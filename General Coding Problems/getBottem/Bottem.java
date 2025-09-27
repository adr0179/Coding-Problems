package mtPractice.getBottem;

import java.util.Stack;

public class Bottem<E> {
    public E getBottem(Stack<E> stack) {
        // save the stack size
        int size = stack.size();
        E val = null;

        if (stack.empty()) {
            return null;
        }
        
        // use temp stack to store removed elements to push back later
        Stack<E> temp = new Stack<E>();

        // leave last element in stack
        for (int i = 0; i < size - 1; i++) {
            temp.push(stack.pop());
        }

        // save bottem value
        val = stack.peek();

        // push back removed elements
        for (int i = 0; i < temp.size(); i++) {
            stack.push(temp.pop());
        }
        return val;
    }

    public static void main(String[] args) {
        Stack<Integer> s = new Stack<Integer>();

        s.push(3);
        s.push(67);
        s.push(90);
        s.push(4);
        s.push(9);



        Bottem<Integer> b = new Bottem<Integer>();
        System.out.println(b.getBottem(s));

        System.out.println(s);
    }
}