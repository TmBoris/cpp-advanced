#pragma once
#include "bits/stdc++.h"

template <typename B, typename E, typename Check, typename F>
void TransformIf(B begin, E end, Check check, F foo) {
    std::unordered_map<size_t, std::iter_value_t<B>> log;
    size_t j = 0;
    try {
        for (auto i = begin; i != end; ++i) {
            bool flag = true;
            if (check(*i)) {
                try {
                    log[j] = *i;
                    ++j;
                    flag = false;
                } catch (...) {
                }
                foo(*i);
            }
            if (flag) {
                ++j;
            }
        }
    } catch (...) {
        using Category = typename std::iterator_traits<B>::iterator_category;
        if constexpr (std::is_same_v<Category, std::random_access_iterator_tag>) {
            for (auto& x : log) {
                *(begin + x.first) = x.second;
            }
        } else {
            auto i = begin;
            for (size_t t = 0; t < j; ++t) {
                if (log.contains(t)) {
                    *i = log[t];
                }
                ++i;
            }
        }
        throw;
    }
}
