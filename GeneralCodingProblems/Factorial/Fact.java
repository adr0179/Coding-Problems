package Factorial;

public class Fact {
    public int factorial(int val) {
        int res = val;

        if (val == 0) {
            return 1;
        }

        for (int i = val - 1; i > 0; i--) {
            res *= i;
        }

        return res;
    }

    public static int facto(int num) {
        if (num == 0) {
            return 1;
        } else {
            return num * facto(num - 1);
        }
    }

    public static void main(String[] args) {
        Fact f = new Fact();

        System.out.println(f.factorial(5));
        System.out.println(f.factorial(0));
        System.out.println(facto(5));
    }
}