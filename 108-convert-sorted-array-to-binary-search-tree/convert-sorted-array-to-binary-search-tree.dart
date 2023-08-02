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
 TreeNode? sortedArrayToBST(List<int> nums) {
  return buildBST(nums, 0, nums.length - 1);
}
TreeNode? buildBST(List<int> nums, int left, int right) {
  if (left > right) {
    return null;
  }
  
  int mid = left + (right - left) ~/ 2;
  TreeNode node = TreeNode(nums[mid]);
  
  node.left = buildBST(nums, left, mid - 1);
  node.right = buildBST(nums, mid + 1, right);
  
  return node;
}
}