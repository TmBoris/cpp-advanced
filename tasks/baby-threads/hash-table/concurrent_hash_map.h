#pragma once

#include "bits/stdc++.h"

static size_t k_mbs = 50;

template <class K, class V, class Hash = std::hash<K>>
class ConcurrentHashMap {
public:
    ConcurrentHashMap(const Hash& hasher = Hash()) : ConcurrentHashMap(kUndefinedSize, hasher) {
    }

    explicit ConcurrentHashMap(int expected_size, const Hash& hasher = Hash())
        : ConcurrentHashMap(expected_size, kDefaultConcurrencyLevel, hasher) {
    }

    ConcurrentHashMap(int expected_size, int expected_threads_count, const Hash& hasher = Hash())
        : hash_(hasher) {
        mutex_.resize(std::min(expected_threads_count, 40));
        table_.resize(15000);
        size_ = 15000;
    }

    bool Insert(const K& key, const V& value) {
        bool flag = false;
        size_t hash = hash_(key);
        size_t bucket_id = hash % size_;
        size_t mutex_id = bucket_id % mutex_.size();
        {
            std::scoped_lock<std::mutex> lock(mutex_[mutex_id]);
            bucket_id = hash % size_;
            for (size_t i = 0; i < table_[bucket_id].size(); ++i) {
                if (table_[bucket_id][i].first == key) {
                    return false;
                }
            }
            table_[bucket_id].emplace_back(key, value);
            if (table_[bucket_id].size() > k_mbs) {
                flag = true;
            }
        }
        if (flag) {
            for (size_t i = 0; i < mutex_.size(); ++i) {
                mutex_[i].lock();
            }
            if (table_[hash_(key) % table_.size()].size() > k_mbs) {
                k_mbs *= 3;
                size_ = size_ * 3;
                std::vector<std::vector<std::pair<K, V>>> tmp(table_.size() * 3);
                for (size_t i = 0; i < table_.size(); ++i) {
                    for (size_t j = 0; j < table_[i].size(); ++j) {
                        auto el = table_[i][j];
                        size_t new_bucket_id = hash_(el.first) % tmp.size();
                        tmp[new_bucket_id].push_back(el);
                    }
                }
                table_ = std::move(tmp);
            }
            for (int i = mutex_.size() - 1; i >= 0; --i) {
                mutex_[i].unlock();
            }
        }
        return true;
    }

    bool Erase(const K& key) {
        size_t hash = hash_(key);
        size_t bucket_id = hash % size_;
        size_t mutex_id = bucket_id % mutex_.size();
        {
            std::scoped_lock<std::mutex> lock(mutex_[mutex_id]);
            bucket_id = hash % size_;
            for (size_t i = 0; i < table_[bucket_id].size(); ++i) {
                if (table_[bucket_id][i].first == key) {
                    for (size_t j = i; j + 1 < table_[bucket_id].size(); ++j) {
                        table_[bucket_id][j] = table_[bucket_id][j + 1];
                    }
                    table_[bucket_id].pop_back();
                    return true;
                }
            }
        }
        return false;
    }

    void Clear() {
        for (size_t i = 0; i < mutex_.size(); ++i) {
            mutex_[i].lock();
        }
        table_.clear();
        table_.resize(15000);
        size_ = 15000;
        for (int i = mutex_.size() - 1; i >= 0; --i) {
            mutex_[i].unlock();
        }
    }

    std::pair<bool, V> Find(const K& key) const {
        size_t hash = hash_(key);
        size_t bucket_id = hash % size_;
        size_t mutex_id = bucket_id % mutex_.size();
        {
            std::scoped_lock<std::mutex> lock(mutex_[mutex_id]);
            bucket_id = hash % size_;
            for (size_t i = 0; i < table_[bucket_id].size(); ++i) {
                if (table_[bucket_id][i].first == key) {
                    return {true, table_[bucket_id][i].second};
                }
            }
            return {false, V()};
        }
    }

    const V At(const K& key) const {
        size_t hash = hash_(key);
        size_t bucket_id = hash % size_;
        size_t mutex_id = bucket_id % mutex_.size();
        {
            std::scoped_lock<std::mutex> lock(mutex_[mutex_id]);
            bucket_id = hash % size_;
            for (size_t i = 0; i < table_[bucket_id].size(); ++i) {
                if (table_[bucket_id][i].first == key) {
                    return table_[bucket_id][i].second;
                }
            }
        }
        throw std::out_of_range("no such element");
    }

    size_t Size() const {
        for (size_t i = 0; i < mutex_.size(); ++i) {
            mutex_[i].lock();
        }
        size_t ans = 0;
        for (size_t i = 0; i < table_.size(); ++i) {
            ans += table_[i].size();
        }
        for (int i = mutex_.size() - 1; i >= 0; --i) {
            mutex_[i].unlock();
        }
        return ans;
    }

    static const int kDefaultConcurrencyLevel;
    static const int kUndefinedSize;

private:
    std::vector<std::vector<std::pair<K, V>>> table_;
    mutable std::deque<std::mutex> mutex_;
    Hash hash_;
    std::atomic<size_t> size_;
};

template <class K, class V, class Hash>
const int ConcurrentHashMap<K, V, Hash>::kDefaultConcurrencyLevel = 8;

template <class K, class V, class Hash>
const int ConcurrentHashMap<K, V, Hash>::kUndefinedSize = -1;