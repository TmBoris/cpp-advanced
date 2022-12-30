#pragma once

#include <utility>
#include <optional>
#include <deque>
#include <mutex>
#include "condition_variable"
#include <iostream>

template <class T>
class BufferedChannel {
public:
    explicit BufferedChannel(int size) {
        size_ = size;
    }

    void Send(const T& value) {
        std::unique_lock lock(m1_);
        if (close_.load()) {
            throw std::runtime_error("error!");
        }
        while (deque_.size() == size_ && !close_.load()) {
            cv1_.wait(lock);
        }
        if (close_.load()) {
            throw std::runtime_error("error!");
        }
        //        std::cout << 1 << " " << deque_.size() << std::endl;
        deque_.push_back(value);
        cv2_.notify_all();
    }

    std::optional<T> Recv() {
        std::unique_lock lock(m1_);
        if (deque_.empty() && close_.load()) {
            return std::nullopt;
        }
        while (deque_.empty() && !close_.load()) {
            cv2_.wait(lock);
        }
        if (deque_.empty() && close_.load()) {
            return std::nullopt;
        }
        //        std::cout << 2 << " " << deque_.size() << std::endl;
        T t = deque_.front();
        deque_.pop_front();
        cv1_.notify_all();
        return t;
    }

    void Close() {
        std::scoped_lock lock(m1_);
        close_ = true;
        cv1_.notify_all();
        cv2_.notify_all();
    }

private:
    std::atomic<bool> close_;
    std::deque<T> deque_;
    std::atomic<int> size_;
    std::condition_variable cv1_;
    std::condition_variable cv2_;
    std::mutex m1_;
};
