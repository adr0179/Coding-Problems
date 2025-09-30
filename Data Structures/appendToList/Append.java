package GeneralCodingProblems.appendToList;

import java.util.ArrayList;

public class Append {
    public static void appendToList(ArrayList<Integer> list, int value) {
        list.add(value);
    }

    public static void main(String[] args) {
        ArrayList<Integer> intArr = new ArrayList<>();

        appendToList(intArr, 0);
        appendToList(intArr, 4);
        appendToList(intArr, 67);

        for (int n : intArr) {
            System.err.println(n);
        }
    }
}
