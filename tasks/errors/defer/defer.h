#pragma once

#include "bits/stdc++.h"

template <typename Callback>
class CallbackStorage {
public:
    explicit CallbackStorage(Callback&& callback) {
        ::new (GetCallbackBuffer()) Callback(std::move(callback));
    }

    void* GetCallbackBuffer() {
        return static_cast<void*>(callback_buffer_);
    }

    Callback& GetCallback() {
        return *reinterpret_cast<Callback*>(GetCallbackBuffer());
    }

private:
    alignas(Callback) char callback_buffer_[sizeof(Callback)];
};

template <typename Callback>
class Defer final {
public:
    Defer(Callback&& callback) {
        storage_ = new CallbackStorage<Callback>(std::move(callback));
    }

    ~Defer() {
        if (!done_) {
            std::move(storage_->GetCallback())();
            delete &storage_->GetCallback();
        }
    }

    void Invoke() {
        std::move(storage_->GetCallback())();
        delete &storage_->GetCallback();
        done_ = true;
    }

    void Cancel() {
        delete &storage_->GetCallback();
        done_ = true;
    }

private:
    bool done_ = false;
    CallbackStorage<Callback>* storage_ = nullptr;
};
