#pragma once

#include <exception>
#include <stdexcept>
#include "bits/stdc++.h"

template <class T>
class Try {
public:
    Try() = default;
    Try(T&& other) : t_(other), empty_(false) {
    }

    template <typename P>
    Try(const P& err) : ptr_(std::make_exception_ptr(P(err))), contain_ex_(true) {
    }

    const T& Value() {
        if (contain_ex_) {
            std::rethrow_exception(ptr_);
        }
        if (empty_) {
            throw std::runtime_error("Object is empty");
        }
        return t_;
    }

    bool IsFailed() {
        return contain_ex_;
    }

    void Throw() {
        if (contain_ex_) {
            std::rethrow_exception(ptr_);
        }
        throw std::runtime_error("No exception");
    }

private:
    std::exception_ptr ptr_ = nullptr;
    bool contain_ex_ = false;
    bool empty_ = true;
    T t_;
};

template <>
class Try<void> {
public:
    Try() = default;

    Try(const std::exception& ex) : ptr_(std::current_exception()), contain_ex_(true) {
    }

    template <typename P>
    Try(const P& err) : ptr_(std::make_exception_ptr(P(err))), contain_ex_(true) {
    }

    bool IsFailed() {
        return contain_ex_;
    }

    void Throw() {
        if (contain_ex_) {
            std::rethrow_exception(ptr_);
        }
        throw std::runtime_error("No exception");
    }

private:
    std::exception_ptr ptr_ = nullptr;
    bool contain_ex_ = false;
};

template <class Function, class... Args>
auto TryRun(Function func, Args... args) {
    using ReturnType = decltype(func(args...));
    try {
        if constexpr (std::is_void_v<ReturnType>) {
            func(args...);
        } else {
            return Try<ReturnType>(func(args...));
        }
    } catch (const std::exception& ex) {
        return Try<ReturnType>(ex);
    } catch (const char* str) {
        return Try<ReturnType>(std::runtime_error(str));
    } catch (int& q) {
        return Try<ReturnType>(std::runtime_error(std::strerror(q)));
    } catch (...) {
        return Try<ReturnType>(std::runtime_error("Unknown exception"));
    }
}
