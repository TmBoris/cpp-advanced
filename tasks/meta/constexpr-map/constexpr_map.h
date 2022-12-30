#pragma once
#include "bits/stdc++.h"

template <class K, class V, int MaxSize = 8>
class ConstexprMap {
public:
    constexpr ConstexprMap() = default;

    constexpr V& operator[](const K& key) {
        if (size_ == MaxSize) {
            throw std::runtime_error("buffer is full");
        }
        for (size_t i = 0; i < size_; ++i) {
            if ((vec_[i]).first == key) {
                return (vec_[i]).second;
            }
        }
        (vec_[size_]).first = key;
        return (vec_[size_++]).second;
    }

    constexpr const V& operator[](const K& key) const {
        for (size_t i = 0; i < size_; ++i) {
            if ((vec_[i]).first == key) {
                return (vec_[i]).second;
            }
        }
        throw std::runtime_error("no such key in map");
    }

    constexpr bool Erase(const K& key) {
        if (!Find(key)) {
            return false;
        }
        for (size_t i = 0; i < size_; ++i) {
            if ((vec_[i]).first == key) {
                for (size_t j = i + 1; j < size_; ++j) {
                    vec_[j - 1] = vec_[j];
                }
                size_--;
                return true;
            }
        }
    }

    constexpr bool Find(const K& key) const {
        for (size_t i = 0; i < size_; ++i) {
            if ((vec_[i]).first == key) {
                return true;
            }
        }
        return false;
    }

    constexpr size_t Size() const {
        return size_;
    }

    constexpr std::pair<K, V>& GetByIndex(size_t pos) {
        if (pos <= size_) {
            return vec_[pos];
        }
        throw std::runtime_error("index is too big");
    }

    constexpr const std::pair<K, V>& GetByIndex(size_t pos) const {
        if (pos <= size_) {
            return vec_[pos];
        }
        throw std::runtime_error("index is too big");
    }

    constexpr auto Begin() {
        return vec_.begin();
    }

    constexpr auto End() {
        return vec_.end();
    }
    std::array<std::pair<K, V>, MaxSize> vec_;
    size_t size_ = 0;
};
