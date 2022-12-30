#include "is_prime.h"
#include <cmath>
#include <algorithm>
#include "bits/stdc++.h"

std::atomic<bool> b = true;

void ButchCheck(uint64_t x, uint64_t start, uint64_t finish) {
    for (auto i = start; i < finish; ++i) {
        if (x % i == 0) {
            b = false;
        }
        if (i % 100 == 0) {
            if (!b) {
                break;
            }
        }
    }
}

bool IsPrime(uint64_t x) {
    b = true;
    if (x <= 1) {
        return false;
    }
    unsigned number_of_threads = std::thread::hardware_concurrency();
    uint64_t root = sqrt(x);
    auto bound = std::min(root + 6, x);
    unsigned butch_size = bound / number_of_threads;

    std::vector<std::thread> threads;

    for (size_t i = 2; i < bound; i += butch_size) {
        threads.emplace_back(ButchCheck, x, i, i + butch_size);
    }

    for (auto& t : threads) {
        t.join();
    }
    return b;
}
