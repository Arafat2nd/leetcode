/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
  bool isValidBST(TreeNode* root, int* minVal = nullptr, int* maxVal = nullptr) {
    if (root == nullptr) {
        return true;
    }

    if ((minVal != nullptr && root->val <= *minVal) || (maxVal != nullptr && root->val >= *maxVal)) {
        return false;
    }

    return isValidBST(root->left, minVal, &root->val) && isValidBST(root->right, &root->val, maxVal);
}
};