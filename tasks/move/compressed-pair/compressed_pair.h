#pragma once

#include <type_traits>
#include <utility>
#include <cstddef>
#include <type_traits>
#include <iostream>

template <typename T, size_t Index,
          bool b = std::is_empty_v<T> && !std::is_final_v<T>>  // when b == true next template works
class CompressedPairElement {
public:
    CompressedPairElement() = default;

    template <typename U>
    CompressedPairElement(U&& el) : el_(std::forward<U>(el)) {
    }

public:
    const T& GetEl() const {
        return el_;
    }
    T& GetEl() {
        return el_;
    }

protected:
    T el_{};
};

template <typename T, size_t Index>
class CompressedPairElement<T, Index, true>
    : public T {  // inheritance from class T is quite important,
public:           // because in that case sizeof(compresspair<Empty2, Empty3>) == 2
    CompressedPairElement() = default;  // code can understand that objects have the same parent, or
                                        // one of them is parent of the other one
    template <typename U>
    CompressedPairElement(U&& el) : T(std::forward<U>(el)) {
    }

public:
    const T& GetEl() const {
        return *this;
    }
    T& GetEl() {
        return *this;
    }
};

// Me think, why waste time write lot code, when few code do trick.

// a real 300iq move task
template <typename F, typename S>
class CompressedPair : CompressedPairElement<F, 1>, CompressedPairElement<S, 2> {
public:
    CompressedPair() = default;

    template <class U, class V>
    CompressedPair(U&& first, V&& second)  // std::forward<>() solves all problems with constructors
        : CompressedPairElement<F, 1>(std::forward<U>(first)),
          CompressedPairElement<S, 2>(std::forward<V>(second)) {
    }

    F& GetFirst() {
        return CompressedPairElement<F, 1>::GetEl();
    }

    const F& GetFirst() const {
        return CompressedPairElement<F, 1>::GetEl();
    }

    S& GetSecond() {
        return CompressedPairElement<S, 2>::GetEl();
    }

    const S& GetSecond() const {
        return CompressedPairElement<S, 2>::GetEl();
    }
};