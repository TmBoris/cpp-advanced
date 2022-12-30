#pragma once

#include "cstring"
#include "vector"
#include "utility"
struct Sum {
    int operator()(int a, int b) {
        return a + b;
    }
};

struct Prod {
    int operator()(int a, int b) {
        return a * b;
    }
};

struct Concat {
    std::vector<int> operator()(std::vector<int> first, std::vector<int> second) {
        size_t n = first.size();
        first.resize(first.size() + second.size());
        for (size_t i = 0; i < second.size(); ++i) {
            first[i + n] = second[i];
        }
        return first;
    }
};

template <class Iterator, class T, class BinaryOp>
T Fold(Iterator first, Iterator last, T init, BinaryOp func) {
    T start = func(init, *first);
    Iterator now = ++first;
    while (true) {
        start = func(start, *now);
        ++now;
        if (now == last) {
            break;
        }
    }
    return start;
}

class Length {
public:
    Length(int* x) {
        x_ = x;
    }
    template <typename T>
    T operator()(T a, T b) {
        (*x_)++;
        return {};
    }

private:
    int* x_;
};
