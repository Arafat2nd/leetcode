class Solution {
  List<List<int>> transpose(List<List<int>> matrix) {
      List<List<int>> trans = List.generate(matrix[0].length, (_) => List<int>.filled(matrix.length, 0));
        for(int i=0;i<matrix.length;i++){
             for(int j=0;j<matrix[i].length;j++){
                 trans[j][i]=matrix[i][j];
             }
        }
  return trans;

  }
}