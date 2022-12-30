#pragma once

#include <linux/futex.h>
#include <sys/syscall.h>
#include <sys/time.h>
#include <unistd.h>
#include "iostream"

#include <atomic>

// Atomically do the following:
//    if (*value == expected_value) {
//        sleep_on_address(value)
//    }
void FutexWait(int *value, int expected_value) {
    syscall(SYS_futex, value, FUTEX_WAIT_PRIVATE, expected_value, nullptr, nullptr, 0);
}

// Wakeup 'count' threads sleeping on address of value(-1 wakes all)
void FutexWake(int *value, int count) {
    syscall(SYS_futex, value, FUTEX_WAKE_PRIVATE, count, nullptr, nullptr, 0);
}

class Mutex {
public:
    Mutex() : val_(0) {
    }

    void Lock() {
        int c;
        int a = 0;
        int b = 1;

        if ((c = val_.compare_exchange_strong(a, b)) != 0) {
            std::cout << c << " " << 5 << std::endl;
            if (c != 2) {
                c = val_.exchange(2);
            }
            while (c != 0) {
                FutexWait(reinterpret_cast<int *>(&val_), 2);
                c = val_.exchange(2);
            }
        }
    }

    void Unlock() {
        if (val_.fetch_sub(1) != 1) {
            val_ = 0;
            FutexWake(reinterpret_cast<int *>(&val_), 1);
        }
    }

private:
    std::atomic<int> val_;
};
