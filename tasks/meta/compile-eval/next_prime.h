#pragma once

constexpr bool IsPrime(int x) {
    int n = 2;
    while (n * n <= x) {
        if (x % n == 0) {
            return false;
        }
        ++n;
    }
    return true;
}

constexpr int next_prime(int x) {
    if (x == 1) {
        return 2;
    }
    while (!IsPrime(x)) {
        ++x;
    }
    return x;
}
