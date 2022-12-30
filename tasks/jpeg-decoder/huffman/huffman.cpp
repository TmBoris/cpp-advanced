#include <huffman.h>
#include <iostream>

struct Node {
    std::shared_ptr<Node> parent;
    std::shared_ptr<Node> left = nullptr;
    std::shared_ptr<Node> right = nullptr;
    uint8_t val;
    bool done = false;  // уже занята значением
    int vis = 0;        // уже посетил при обходе
};

class HuffmanTree::Impl {
public:
    Impl() {
        root = std::make_shared<Node>();
        now = root;
    }

    // добавляю вершину в дерево
    void Build(const std::vector<uint8_t> &code_lengths, const std::vector<uint8_t> &values) {
        if (root) {
            Inorder();
        }
        root->right = nullptr;
        root->left = nullptr;
        now = root;
        if (code_lengths.size() > 16) {
            throw std::invalid_argument("code_lengths size is too big");
        }
        uint8_t deep = 0;
        uint8_t i = 0;
        size_t v = 0;
        int mark = 1;
        std::vector<uint8_t> cl_copy = code_lengths;
        while (i < code_lengths.size()) {
            if (cl_copy[i] != 0) {
                if (deep == i + 1) {
                    if (v >= values.size()) {
                        throw std::invalid_argument("not enough values in huffman");
                    }
                    now->val = values[v];
                    now->done = true;
                    deep = 0;
                    ++v;
                    --cl_copy[i];
                    ++mark;
                    now = root;
                } else {
                    if (!now->left) {
                        std::shared_ptr<Node> new_node = std::make_shared<Node>();
                        now->left = new_node;
                        new_node->parent = now;
                        now = new_node;
                        ++deep;
                    } else if (now->left->vis != mark && !now->left->done) {
                        now = now->left;
                        ++deep;
                    } else if (!now->right) {
                        std::shared_ptr<Node> new_node = std::make_shared<Node>();
                        now->right = new_node;
                        new_node->parent = now;
                        now = new_node;
                        ++deep;
                    } else if (now->right->vis != mark && !now->right->done) {
                        now = now->right;
                        ++deep;
                    } else {
                        if (!now->parent) {
                            throw std::invalid_argument("can't Build huffman tree");
                        } else {
                            now->vis = mark;
                            now = now->parent;
                            --deep;
                        }
                    }
                }
            } else {
                ++i;
            }
        }
    }

    // ище вершину, если лист, то меняю значение и возвращаю true и начинаю из корня
    bool Move(bool bit, int &value) {
        if (bit) {
            if (!now->right) {
                throw std::invalid_argument("no such node. In Move can't move");
            } else {
                if (!now->right->left && !now->right->right) {
                    value = now->right->val;
                    now = root;
                    return true;
                } else {
                    now = now->right;
                }
            }
        } else {
            if (!now->left) {
                throw std::invalid_argument("no such node. In Move can't move");
            } else {
                if (!now->left->left && !now->left->right) {
                    value = now->left->val;
                    now = root;
                    return true;
                } else {
                    now = now->left;
                }
            }
        }
        return false;
    }

    void LoopBreak(std::shared_ptr<Node> tmp) {
        if (tmp->left) {
            LoopBreak(tmp->left);
        }
        tmp->parent = nullptr;
        if (tmp->right) {
            LoopBreak(tmp->right);
        }
    }

    void Inorder() {
        LoopBreak(root);
    }

    ~Impl() {
        if (root) {
            Inorder();
        }
    }

    std::shared_ptr<Node> root = nullptr;
    std::shared_ptr<Node> now = nullptr;
};

HuffmanTree::HuffmanTree() {
    impl_ = std::make_unique<Impl>();
}

void HuffmanTree::Build(const std::vector<uint8_t> &code_lengths,
                        const std::vector<uint8_t> &values) {
    impl_->Build(code_lengths, values);
}

bool HuffmanTree::Move(bool bit, int &value) {
    return impl_->Move(bit, value);
}

HuffmanTree::HuffmanTree(HuffmanTree &&) = default;

HuffmanTree &HuffmanTree::operator=(HuffmanTree &&) = default;

HuffmanTree::~HuffmanTree() = default;
