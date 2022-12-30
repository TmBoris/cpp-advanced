#pragma once
#include <mutex>
#include <condition_variable>

class RWLock {
public:
    template <class Func>
    void Read(Func func) {
        std::unique_lock lock(global_);
        while (is_writing_) {
            cv_.wait(lock);
        }
        blocked_readers_--;
        lock.unlock();
        try {
            func();
        } catch (...) {
            EndRead();
            throw;
        }
        EndRead();
    }

    template <class Func>
    void Write(Func func) {
        std::unique_lock lock(global_);
        while (is_writing_) {
            cv_.wait(lock);
        }
        while (blocked_readers_ != 0) {
            cv_.wait(lock);
        }
        is_writing_ = true;
        func();
        is_writing_ = false;
        cv_.notify_all();
    }

private:
    std::condition_variable cv_;
    std::mutex global_;
    bool is_writing_ = false;
    int blocked_readers_ = 0;

    void EndRead() {
        std::scoped_lock lock(global_);
        blocked_readers_++;
        if (blocked_readers_ == 0) {
            cv_.notify_one();
        }
    }
};
