#pragma once

#include <atomic>

#define SPIN_LOCK_UNLOCK 0
#define SPIN_LOCK_WRITE_LOCK -1

struct RWSpinLock {
    void LockRead() {
        int expected;
        int desired;

        while (true) {
            expected = atomic_load_explicit(&l, std::memory_order_relaxed);

            if (expected >= 0) {
                desired = 1 + expected;
                if (atomic_compare_exchange_weak_explicit(&l, &expected, desired,
                                                          std::memory_order_relaxed,
                                                          std::memory_order_relaxed)) {
                    break;
                }
            }
        }

        atomic_thread_fence(std::memory_order_acquire);
    }

    void UnlockRead() {
        int expected;
        int desired;

        while (true) {
            expected = atomic_load_explicit(&l, std::memory_order_relaxed);

            if (expected > 0) {
                desired = expected - 1;

                atomic_thread_fence(std::memory_order_release);
                if (atomic_compare_exchange_weak_explicit(&l, &expected, desired,
                                                          std::memory_order_relaxed,
                                                          std::memory_order_relaxed)) {
                    break;
                }
            }
        }
    }

    void LockWrite() {
        int expected;
        int desired;

        while (true) {
            expected = atomic_load_explicit(&l, std::memory_order_relaxed);

            if (expected == SPIN_LOCK_UNLOCK) {
                desired = SPIN_LOCK_WRITE_LOCK;
                if (atomic_compare_exchange_weak_explicit(&l, &expected, desired,
                                                          std::memory_order_relaxed,
                                                          std::memory_order_relaxed)) {
                    break;
                }
            }
        }

        atomic_thread_fence(std::memory_order_release);
    }

    void UnlockWrite() {
        int expected;
        int desired;

        while (true) {
            expected = atomic_load_explicit(&l, std::memory_order_relaxed);

            if (expected == SPIN_LOCK_WRITE_LOCK) {
                desired = SPIN_LOCK_UNLOCK;

                atomic_thread_fence(std::memory_order_release);
                if (atomic_compare_exchange_weak_explicit(&l, &expected, desired,
                                                          std::memory_order_relaxed,
                                                          std::memory_order_relaxed)) {
                    break;
                }
            }
        }
    }

    std::atomic<int> l;
};
