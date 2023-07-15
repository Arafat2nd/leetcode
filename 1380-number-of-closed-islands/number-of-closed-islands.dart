class Solution {
  int closedIsland(List<List<int>> grid) {
    int count = 0;
    int rows = grid.length;
    int cols = grid[0].length;
    
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (grid[i][j] == 0) {
          if (isClosedIsland(grid, i, j, rows, cols)) {
            count++;
          }
        }
      }
    }
    
    return count;
  }
  
  bool isClosedIsland(List<List<int>> grid, int row, int col, int rows, int cols) {
    if (row < 0 || row >= rows || col < 0 || col >= cols) {
      return false;
    }
    
    if (grid[row][col] == 1) {
      return true;
    }
    
    grid[row][col] = 1;
    
    bool top = isClosedIsland(grid, row - 1, col, rows, cols);
    bool bottom = isClosedIsland(grid, row + 1, col, rows, cols);
    bool left = isClosedIsland(grid, row, col - 1, rows, cols);
    bool right = isClosedIsland(grid, row, col + 1, rows, cols);
    
    return top && bottom && left && right;
  }
}