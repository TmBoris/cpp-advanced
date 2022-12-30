#pragma once

#include "compressed_pair.h"
#include "deleters.h"

#include <cstddef>  // std::nullptr_t
#include <memory>

template <class T>
struct Slug {
    Slug() = default;

    //    template <typename U>
    //    Slug(const Slug<U>&) = delete;
    //    template <typename U>
    //    Slug(Slug<U>&) = delete;

    template <typename U>
    Slug(Slug<U>&&) noexcept {
    }

    ~Slug() = default;

    void operator()(T* p) const {
        static_assert(sizeof(T) > 0);
        static_assert(!std::is_void<T>::value);
        delete p;
    }
};

template <class T>
struct Slug<T[]> {
    Slug() = default;

    //    template <typename U>
    //    Slug(const Slug<U>&) = delete;
    //    template <typename U>
    //    Slug(Slug<U>&) = delete;

    template <typename U>
    Slug(Slug<U>&&) noexcept {
    }

    ~Slug() = default;

    void operator()(T* p) const {
        static_assert(sizeof(T) > 0);
        static_assert(!std::is_void<T>::value);
        delete[] p;
    }
};

// Primary template
template <typename T, typename Deleter = Slug<T>>
class UniquePtr {
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Constructors

    UniquePtr(UniquePtr& other) = delete;

    explicit UniquePtr(T* ptr = nullptr) noexcept {
        pair_.GetFirst() = ptr;
    }
    UniquePtr(T* ptr, Deleter deleter) noexcept {
        pair_.GetFirst() = ptr;
        pair_.GetSecond() = std::forward<Deleter>(deleter);
    }

    template <typename U, typename E>
    UniquePtr(UniquePtr<U, E>&& other) noexcept {
        pair_.GetFirst() = other.Release();
        pair_.GetSecond() = std::forward<E>(other.GetDeleter());
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // `operator=`-s

    UniquePtr& operator=(UniquePtr& other) = delete;

    template <typename U, typename E>
    UniquePtr& operator=(UniquePtr<U, E>&& other) noexcept {
        if (pair_.GetFirst() == other.Get()) {
            return *this;
        }
        GetDeleter()(pair_.GetFirst());
        pair_.GetFirst() = other.Release();
        pair_.GetSecond() = std::forward<E>(other.GetDeleter());
        return *this;
    }
    UniquePtr& operator=(std::nullptr_t) noexcept {
        GetDeleter()(pair_.GetFirst());
        pair_.GetFirst() = nullptr;
        return *this;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Destructor

    ~UniquePtr() {
        GetDeleter()(pair_.GetFirst());
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Modifiers

    T* Release() noexcept {
        T* tmp = pair_.GetFirst();
        pair_.GetFirst() = nullptr;
        return tmp;
    }
    void Reset(T* ptr = nullptr) noexcept {
        T* old = pair_.GetFirst();
        pair_.GetFirst() = ptr;
        if (old) {
            GetDeleter()(old);
        }
    }
    void Swap(UniquePtr& other) {
        T* tmp = other.Release();
        Deleter d = std::move(other.GetDeleter());
        other.Reset(Release());
        other.GetDeleter() = std::forward<Deleter>(pair_.GetSecond());
        Reset(tmp);
        pair_.GetSecond() = std::forward<Deleter>(d);
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Observers

    T* Get() const noexcept {
        return pair_.GetFirst();
    }
    Deleter& GetDeleter() {
        return pair_.GetSecond();
    }
    const Deleter& GetDeleter() const {
        return pair_.GetSecond();
    }
    explicit operator bool() const {
        if (pair_.GetFirst() == nullptr) {
            return false;
        } else {
            return true;
        }
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Single-object dereference operators

    typename std::add_lvalue_reference<T>::type operator*() const {
        return *pair_.GetFirst();
    }
    T* operator->() const {
        return pair_.GetFirst();
    }

private:
    CompressedPair<T*, Deleter> pair_;
    //    T* ptr_ = nullptr;
    //    Deleter deleter_;
};

// Specialization for arrays
template <typename T, typename Deleter>
class UniquePtr<T[], Deleter> {
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Constructors

    explicit UniquePtr(T* ptr = nullptr) noexcept {
        pair_.GetFirst() = ptr;
    }
    UniquePtr(T* ptr, Deleter deleter) noexcept {
        pair_.GetFirst() = ptr;
        pair_.GetSecond() = std::forward<Deleter>(deleter);
    }

    template <typename U, typename E>
    UniquePtr(UniquePtr<U, E>&& other) noexcept {
        pair_.GetFirst() = other.Release();
        pair_.GetSecond() = std::forward<E>(other.GetDeleter());
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // `operator=`-s

    template <typename U, typename E>
    UniquePtr& operator=(UniquePtr<U, E>&& other) noexcept {
        if (pair_.GetFirst() == other.Get()) {
            return *this;
        }
        GetDeleter()(pair_.GetFirst());
        pair_.GetFirst() = other.Release();
        pair_.GetSecond() = std::forward<E>(other.GetDeleter());
        return *this;
    }
    UniquePtr& operator=(std::nullptr_t) noexcept {
        GetDeleter()(pair_.GetFirst());
        pair_.GetFirst() = nullptr;
        return *this;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Destructor

    ~UniquePtr() {
        GetDeleter()(pair_.GetFirst());
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Modifiers

    T* Release() noexcept {
        T* tmp = pair_.GetFirst();
        pair_.GetFirst() = nullptr;
        return tmp;
    }
    void Reset(T* ptr = nullptr) noexcept {
        T* old = pair_.GetFirst();
        pair_.GetFirst() = ptr;
        if (old) {
            GetDeleter()(old);
        }
    }
    void Swap(UniquePtr& other) {
        T* tmp = other.Release();
        Deleter d = std::move(other.GetDeleter());
        other.Reset(Release());
        other.GetDeleter() = std::forward<Deleter>(pair_.GetSecond());
        Reset(tmp);
        pair_.GetSecond() = std::forward<Deleter>(d);
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Observers

    T* Get() const noexcept {
        return pair_.GetFirst();
    }
    Deleter& GetDeleter() {
        return pair_.GetSecond();
    }
    const Deleter& GetDeleter() const {
        return pair_.GetSecond();
    }
    explicit operator bool() const {
        if (pair_.GetFirst() == nullptr) {
            return false;
        } else {
            return true;
        }
    }

    T& operator[](int q) {
        return *(pair_.GetFirst() + q);
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Single-object dereference operators

    typename std::add_lvalue_reference<T>::type operator*() const {
        return *pair_.GetFirst();
    }
    T* operator->() const {
        return pair_.GetFirst();
    }

private:
    CompressedPair<T*, Deleter> pair_;
};
