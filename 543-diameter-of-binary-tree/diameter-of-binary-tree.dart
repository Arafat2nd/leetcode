/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
       int current=0;
  int diameterOfBinaryTree(TreeNode? root) {
            if (root == null ) {
            return 0;
        }

       rec(root);

        return current;
     
}
int rec (TreeNode? root){
     if (root == null) {
            return -1;
        }

        int leftHeight = rec(root.left);
        int rightHeight =  rec(root.right);

      current = max(current, leftHeight + rightHeight + 2);

        return max(leftHeight, rightHeight) + 1;
}
}