#pragma once
#include "bits/stdc++.h"

template <class RandomAccessIterator, class T, class Func>
void ButchReduce(RandomAccessIterator first, RandomAccessIterator last, std::deque<T>& result,
                 size_t num, Func func) {
    T curr = *(first++);
    while (first != last) {
        curr = func(curr, *first++);
    }
    result[num] = curr;
}

template <class RandomAccessIterator, class T, class Func>
T Reduce(RandomAccessIterator first, RandomAccessIterator last, const T& initial_value, Func func) {
    unsigned number_of_threads = std::thread::hardware_concurrency();
    unsigned elems = std::distance(first, last);
    unsigned butch_size = std::max(elems / number_of_threads, 1u);
    auto cur_value(initial_value);
    if (elems < 100) {
        while (first != last) {
            cur_value = func(cur_value, *first++);
        }
        return cur_value;
    }

    std::vector<std::thread> threads;
    std::deque<T> results;
    results.resize(number_of_threads);

    for (size_t i = 0; i < number_of_threads; i++) {
        threads.emplace_back(ButchReduce<RandomAccessIterator, T, Func>, first + i * butch_size,
                             first + (i + 1) * butch_size, std::ref(results), i, func);
    }

    for (auto& x : threads) {
        x.join();
    }
    for (const auto& x : results) {
        cur_value = func(cur_value, x);
    }
    return cur_value;
}
