#pragma once

#include <mutex>
#include <condition_variable>

class DefaultCallback {
public:
    void operator()(int& value) {
        --value;
    }
};

class Semaphore {
public:
    Semaphore(int count) : count_(count) {
    }

    void Leave() {
        std::unique_lock<std::mutex> lock(mutex_);
        ++count_;
        cv_.notify_all();
    }

    template <class Func>
    void Enter(Func callback) {
        std::unique_lock<std::mutex> lock(mutex_);
        int num = num_++;
        while (!count_ && num != min_) {
            cv_.wait(lock);
        }
        min_ = num + 1;
        callback(count_);
    }

    void Enter() {
        DefaultCallback callback;
        Enter(callback);
    }

private:
    std::mutex mutex_;
    std::condition_variable cv_;
    int count_ = 0;
    int min_ = 0;
    int num_ = 0;
};
