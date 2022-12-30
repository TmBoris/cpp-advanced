#pragma once

#include "sw_fwd.h"  // Forward declaration

#include <cstddef>  // std::nullptr_t
#include "bits/stdc++.h"

struct ControlBlock {
    virtual size_t GetStrong() {
        return strong_cnt;
    }
    virtual size_t GetWeak() {
        return weak_cnt;
    }
    virtual ~ControlBlock() {
    }
    virtual void Incr() {
        strong_cnt++;
    }
    virtual void IncrW() {
        weak_cnt++;
    }
    virtual void Decr() = 0;
    virtual void DecrW() = 0;
    size_t strong_cnt = 1;
    size_t weak_cnt = 0;
};

template <typename T>
struct ControlBlockMakeShared : ControlBlock {
    template <typename... Arg>
    ControlBlockMakeShared(Arg&&... args) {
        new (&store) T(std::forward<Arg>(args)...);
    }
    ~ControlBlockMakeShared() override {
    }
    T* GetPtr() {
        return reinterpret_cast<T*>(&store);
    }
    void Decr() override {
        strong_cnt--;
        if (strong_cnt == 0) {
            std::destroy_at(std::launder(reinterpret_cast<T*>(&store)));
        }
        if (strong_cnt == 0 && weak_cnt == 0) {
            delete this;
        }
    }
    void DecrW() override {
        weak_cnt--;
        if (strong_cnt == 0 && weak_cnt == 0) {
            delete this;
        }
    }
    std::aligned_storage_t<sizeof(T), alignof(T)> store;
};

template <typename T>
struct ControlBlockNew : ControlBlock {
    ControlBlockNew(T* p) {
        ptr = p;
        strong_cnt = 1;
    }
    ~ControlBlockNew() override {
    }
    void Decr() override {
        strong_cnt--;
        if (strong_cnt == 0) {
            delete ptr;
        }
        if (strong_cnt == 0 && weak_cnt == 0) {
            delete this;
        }
    }
    void DecrW() override {
        weak_cnt--;
        if (strong_cnt == 0 && weak_cnt == 0) {
            delete this;
        }
    }
    T* ptr;
};

// https://en.cppreference.com/w/cpp/memory/shared_ptr
template <typename T>
class SharedPtr {
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Constructors

    SharedPtr() = default;
    SharedPtr(std::nullptr_t) {
        control_block_ = nullptr;
        ptr_ = nullptr;
    }
    template <typename P>
    explicit SharedPtr(P* ptr) {
        control_block_ = new ControlBlockNew(ptr);
        ptr_ = ptr;
    }

    SharedPtr(const SharedPtr& other) {
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->Incr();
        }
    }
    template <typename P>
    SharedPtr(SharedPtr<P>& other) {
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->Incr();
        }
    }

    template <typename P>
    SharedPtr(SharedPtr<P>&& other) {
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->Incr();
        }
        other.Reset();
    }

    // make_shared constructor
    SharedPtr(ControlBlockMakeShared<T>* block) {
        control_block_ = block;
        ptr_ = block->GetPtr();
    }

    // Aliasing constructor
    // #8 from https://en.cppreference.com/w/cpp/memory/shared_ptr/shared_ptr
    template <typename Y>
    SharedPtr(const SharedPtr<Y>& other, T* ptr) {
        control_block_ = other.GetBlock();
        control_block_->Incr();
        ptr_ = ptr;
    }

    // Promote `WeakPtr`
    // #11 from https://en.cppreference.com/w/cpp/memory/shared_ptr/shared_ptr
    explicit SharedPtr(const WeakPtr<T>& other) {
        if (other.Expired()) {
            throw BadWeakPtr();
        }
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        control_block_->Incr();
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // `operator=`-s

    SharedPtr& operator=(const SharedPtr& other) {
        if (control_block_ != nullptr) {
            control_block_->Decr();
        }
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->Incr();
        }
        return *this;
    }
    template <typename P>
    SharedPtr& operator=(SharedPtr<P>&& other) {
        if (control_block_ != nullptr) {
            control_block_->Decr();
        }
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->Incr();
        }
        other.Reset();
        return *this;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Destructor

    ~SharedPtr() {
        if (control_block_ != nullptr) {
            control_block_->Decr();
        }
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Modifiers

    void Reset() {
        if (control_block_ != nullptr) {
            control_block_->Decr();
        }
        control_block_ = nullptr;
        ptr_ = nullptr;
    }
    template <typename P>
    void Reset(P* ptr) {
        if (control_block_ != nullptr) {
            control_block_->Decr();
        }
        control_block_ = new ControlBlockNew<P>(ptr);
        ptr_ = ptr;
    }
    void Swap(SharedPtr& other) {
        SharedPtr<T> tmp(other);
        other = *this;
        *this = tmp;
    }
    ///////////////////////////////////////////////////////////
    // Observers

    T* Get() const {
        return ptr_;
    }
    ControlBlock* GetBlock() const {
        return control_block_;
    }
    T& operator*() const {
        return *ptr_;
    }
    T* operator->() const {
        return ptr_;
    }
    size_t UseCount() const {
        if (control_block_ != nullptr) {
            return control_block_->GetStrong();
        }
        return 0;
    }
    explicit operator bool() const {
        return control_block_ != nullptr;
    }

private:
    ControlBlock* control_block_ = nullptr;
    T* ptr_ = nullptr;
};

template <typename T, typename U>
inline bool operator==(const SharedPtr<T>& left, const SharedPtr<U>& right) {
    return left.Get() == right.Get();
}

// Allocate memory only once
template <typename T, typename... Args>
SharedPtr<T> MakeShared(Args&&... args) {
    ControlBlockMakeShared<T>* block = new ControlBlockMakeShared<T>(std::forward<Args>(args)...);
    return SharedPtr<T>(block);
}

// Look for usage examples in tests
template <typename T>
class EnableSharedFromThis {
public:
    SharedPtr<T> SharedFromThis();
    SharedPtr<const T> SharedFromThis() const;

    WeakPtr<T> WeakFromThis() noexcept;
    WeakPtr<const T> WeakFromThis() const noexcept;
};
