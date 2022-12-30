#pragma once

#include <mutex>
#include <condition_variable>
#include <chrono>
#include <map>

std::mutex m1;
std::condition_variable cv;

template <class T>
class TimerQueue {
public:
    using Clock = std::chrono::system_clock;
    using TimePoint = Clock::time_point;

public:
    void Add(const T& item, TimePoint at) {
        std::unique_lock lock(m1);
        map_.insert({at, item});
        cv.notify_one();
    }

    T Pop() {
        std::unique_lock lock(m1);
        if (map_.empty()) {
            cv.wait(lock);
            return map_.begin()->second;
        } else {
            cv.wait_until(lock, map_.begin()->first);
            T x = map_.begin()->second;
            map_.erase(map_.begin());
            cv.notify_all();
            return x;
        }
    }

private:
    std::multimap<TimePoint, T> map_;
};
