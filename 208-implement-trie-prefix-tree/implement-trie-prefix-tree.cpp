#include <iostream>
#include <unordered_map>

class TrieNode {
public:
    bool isEnd;
    unordered_map<char, TrieNode*> children;

    TrieNode() : isEnd(false) {}
};

class Trie {
private:
    TrieNode* root;

public:
    Trie() {
        root = new TrieNode();
    }

    void insert(string word) {
        TrieNode* node = root;
        for (char ch : word) {
            if (!node->children[ch]) {
                node->children[ch] = new TrieNode();
            }
            node = node->children[ch];
        }
        node->isEnd = true;
    }

    bool search(string word) {
        TrieNode* node = root;
        for (char ch : word) {
            if (!node->children[ch]) {
                return false;
            }
            node = node->children[ch];
        }
        return node->isEnd;
    }

    bool startsWith(string prefix) {
        TrieNode* node = root;
        for (char ch : prefix) {
            if (!node->children[ch]) {
                return false;
            }
            node = node->children[ch];
        }
        return true;
    }
    
    ~Trie() {
        deleteTrie(root);
    }
    
    void deleteTrie(TrieNode* node) {
        if (!node) {
            return;
        }
        for (auto& entry : node->children) {
            deleteTrie(entry.second);
        }
        delete node;
    }
};
