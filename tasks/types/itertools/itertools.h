#pragma once
#include "bits/stdc++.h"

template <class Iterator>
class IteratorRange;

struct RangeIter {
    RangeIter() = default;
    RangeIter(size_t t) {
        now_ = t;
    }
    RangeIter(size_t t, size_t st) {
        now_ = t;
        step_ = st;
    }

    RangeIter& operator=(const RangeIter& other) {
        now_ = other.now_;
        step_ = other.step_;
        return *this;
    }

    void operator++() {
        now_ += step_;
    }
    bool operator!=(RangeIter& other) const {
        return (now_ < other.now_);
    }
    size_t operator*() const {
        return now_;
    }

    size_t now_ = 0;
    size_t step_ = 1;
};

template <typename Fiter, typename Siter>
struct ZipIter {
    ZipIter() = default;
    ZipIter(const Fiter& f, const Siter& s) {
        pair.first = f;
        pair.second = s;
    }
    ZipIter& operator=(const ZipIter& other) {
        pair = other.pair;
        return *this;
    }

    void operator++() {
        ++pair.first;
        ++pair.second;
    }
    bool operator!=(ZipIter& other) const {
        return (pair.first != other.pair.first && pair.second != other.pair.second);
    }
    auto operator*() const {
        return std::pair(*pair.first, *pair.second);
    }

    std::pair<Fiter, Siter> pair;
};

template <typename Titer>
struct SubGroupIter {
    SubGroupIter() = default;
    SubGroupIter(Titer t) {
        now = t;
    }

    SubGroupIter& operator=(const SubGroupIter& other) {
        now = other.now;
        return *this;
    }

    void operator++() {
        ++now;
    }
    bool operator!=(SubGroupIter& other) const {
        return (now != other.now);
    }
    auto operator*() const {
        return *now;
    }

    Titer now;
};

template <typename Titer>
struct GroupIter {
    GroupIter() = default;
    GroupIter(Titer t, Titer e) {
        now = t;
        end = e;
    }

    GroupIter& operator=(const GroupIter& other) {
        now = other.now;
        end = other.end;
        return *this;
    }

    void operator++() {
        Titer tmp = now;
        while (now != end && *now == *tmp) {
            ++now;
        }
    }
    bool operator!=(GroupIter& other) const {
        return (now != other.end);
    }
    auto operator*() const {
        SubGroupIter begin(now);
        Titer tmp = now;
        while (tmp != end && *tmp == *now) {
            ++tmp;
        }
        SubGroupIter ended(tmp);
        return IteratorRange(begin, ended);
    }

    Titer now;
    Titer end;
};

template <class Iterator>
class IteratorRange {
public:
    IteratorRange(Iterator& begin, Iterator& end) {
        begin_ = begin;
        end_ = end;
    }

    Iterator begin() const {  // NOLINT
        return begin_;
    }

    Iterator end() const {  // NOLINT
        return end_;
    }

private:
    Iterator begin_, end_;
};

auto Range(size_t l) {
    RangeIter begin(0);
    RangeIter end(l);
    return IteratorRange(begin, end);
}
auto Range(size_t f, size_t l, size_t st) {
    RangeIter begin(f, st);
    RangeIter end(l);
    return IteratorRange(begin, end);
}

auto Range(size_t f, size_t l) {
    RangeIter begin(f);
    RangeIter end(l);
    return IteratorRange(begin, end);
}

template <typename F, typename S>
auto Zip(const F& f, const S& s) {
    ZipIter begin(std::begin(f), std::begin(s));
    ZipIter end(std::end(f), std::end(s));
    return IteratorRange(begin, end);
}

template <typename T>
auto Group(const T& data) {
    GroupIter begin(std::begin(data), std::end(data));
    GroupIter end(std::begin(data), std::end(data));
    return IteratorRange(begin, end);
}
