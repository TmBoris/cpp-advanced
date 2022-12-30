#pragma once
#include "bits/stdc++.h"
#include "another_pow.h"

constexpr int64_t pow(int64_t a, int64_t b, int64_t mod) {
    return b <= 0 ? 1 : (a % mod * pow(a, b - 1, mod)) % mod;
}

constexpr size_t Strlen(const char* s) {
    return *s ? 1 + Strlen(s + 1) : 0;
}

constexpr int helper(const char* s, int p, int mod, int i, int len) {
    return i < len ? (s[i] * pow(p, i, mod) + helper(s, p, mod, i + 1, len)) % mod : 0;
}

constexpr int hash(const char* s, int p, int mod) {
    return helper(s, p, mod, 0, Strlen(s));
}