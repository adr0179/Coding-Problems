package isEmpty;

import java.util.Stack;

public class empty {
    public static boolean isEmpty(Stack<Integer> stack) {
        if (stack.isEmpty()) {
            return true;
        }

        return false;
    }

    public static void main(String[] args) {
        Stack<Integer> s = new Stack<>();

        s.push(34);
        
        System.out.println(isEmpty(s));
    }
}