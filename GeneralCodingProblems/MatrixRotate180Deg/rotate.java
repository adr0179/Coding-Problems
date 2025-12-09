package MatrixRotate180Deg;

public class rotate {
    public void rotateMatrix(int[][] matrix) {
        // Transpose
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix.length/2; j++) {
                int temp = matrix[(matrix.length - 1) - j][i];
                matrix[(matrix.length - 1) - j][i] = matrix[j][i];
                matrix[j][i] = temp;
            }
        } 

        // inverse
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < Math.floor(matrix.length / 2); j++) {
                int temp = matrix[i][j];
                matrix[i][j] = matrix[i][(matrix.length - 1) - j];
                matrix[i][(matrix.length - 1) - j] = temp;
            }
        }
    }

    public void print( int[][] m){
        
        for (int i = 0; i  < m.length; i++){
            for(int j = 0; j< m.length; j++){
                System.out.print(m[i][j]); 
                System.out.print('\t');
            }
            System.out.println();
        }
        System.out.println();
    }

    public static void main(String[] args) {
        rotate r = new rotate();
        int[][] m = {{1,2,3,4},{5,6, 7,8},{9,10,11,12}, {13, 14, 15, 16}};
        r.print(m);
        r.rotateMatrix(m);
        r.print(m);
    }
}
