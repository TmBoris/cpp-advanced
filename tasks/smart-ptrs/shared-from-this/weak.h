#pragma once

#include "sw_fwd.h"  // Forward declaration
#include "shared.h"

// https://en.cppreference.com/w/cpp/memory/weak_ptr
template <typename T>
class WeakPtr {
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Constructors

    WeakPtr() = default;

    WeakPtr(const WeakPtr& other) {
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->IncrW();
        }
    }
    WeakPtr(WeakPtr&& other) {
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->IncrW();
        }
        other.Reset();
    }
    template <typename Y>
    WeakPtr(const WeakPtr<Y>& other) {
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->IncrW();
        }
    }

    // Demote `SharedPtr`
    // #2 from https://en.cppreference.com/w/cpp/memory/weak_ptr/weak_ptr
    WeakPtr(const SharedPtr<T>& other) {
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->IncrW();
        }
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // `operator=`-s

    WeakPtr& operator=(const WeakPtr& other) {
        if (control_block_ != nullptr) {
            control_block_->DecrW();
        }
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->IncrW();
        }
        return *this;
    }
    WeakPtr& operator=(WeakPtr&& other) {
        if (control_block_ != nullptr) {
            control_block_->DecrW();
        }
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->IncrW();
        }
        other.Reset();
        return *this;
    }
    template <typename Y>
    WeakPtr& operator=(SharedPtr<Y>& other) {
        if (control_block_ != nullptr) {
            control_block_->DecrW();
        }
        control_block_ = other.GetBlock();
        ptr_ = other.Get();
        if (control_block_ != nullptr) {
            control_block_->IncrW();
        }
        return *this;
    }
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Destructor

    ~WeakPtr() {
        if (control_block_ != nullptr) {
            control_block_->DecrW();
        }
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Modifiers

    void Reset() {
        if (control_block_ != nullptr) {
            control_block_->DecrW();
        }
        control_block_ = nullptr;
        ptr_ = nullptr;
    }
    void Swap(WeakPtr& other) {
        WeakPtr tmp = *this;
        *this = other;
        other = tmp;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Observers

    size_t UseCount() const {
        if (control_block_ != nullptr) {
            return control_block_->GetStrong();
        }
        return 0;
    }
    bool Expired() const {
        if (control_block_ == nullptr) {
            return true;
        }
        return control_block_->GetStrong() == 0;
    }
    T* Get() const {
        return ptr_;
    }
    ControlBlock* GetBlock() const {
        return control_block_;
    }
    SharedPtr<T> Lock() const {
        if (Expired()) {
            return SharedPtr<T>();
        }
        return SharedPtr<T>(*this);
    }

    ControlBlock* control_block_ = nullptr;
    T* ptr_ = nullptr;
};
