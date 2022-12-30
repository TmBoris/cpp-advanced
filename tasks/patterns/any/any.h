#pragma once

#include "bits/stdc++.h"

class Any {
private:
    struct BaseHolder {
        virtual ~BaseHolder() {
        }
        virtual const std::type_info& TypeInfo() const = 0;
        virtual BaseHolder* Clone() const = 0;
    };

    template <typename T>
    struct Holder : BaseHolder {
        Holder(const T& t) : t_(t) {
        }
        const std::type_info& TypeInfo() const {
            return typeid(t_);
        }
        Holder& operator=(Holder& other) {
            t_ = other.t_;
            return *this;
        }
        BaseHolder* Clone() const override {
            return new Holder<T>(t_);
        }
        T t_;
    };

public:
    Any() {
    }

    template <class T>
    Any(const T& value) {
        held_ = new Holder<T>(value);
    }

    template <class T>
    Any& operator=(const T& value) {
        Clear();
        held_ = new Holder<T>(value);
        return *this;
    }
    Any(const Any& rhs) {
        Clear();
        held_ = rhs.Get();
    }
    Any& operator=(const Any& rhs) {
        if (this == &rhs) {
            return *this;
        }
        Clear();
        Any tmp(rhs);
        Swap(tmp);
        return *this;
    }

    ~Any() {
        delete held_;
        held_ = nullptr;
    }

    bool Empty() const {
        return held_ == nullptr;
    }

    BaseHolder* Get() const {
        return held_->Clone();
    }

    void Clear() {
        delete held_;
        held_ = nullptr;
    }

    void Swap(Any& rhs) {
        auto tmp = held_;
        held_ = rhs.held_;
        rhs.held_ = tmp;
    }
    template <class T>
    const T& GetValue() const {
        if (typeid(T) != held_->TypeInfo()) {
            throw std::bad_cast();
        }
        return (static_cast<Holder<T>*>(held_))->t_;
    }

private:
    BaseHolder* held_ = nullptr;
};
