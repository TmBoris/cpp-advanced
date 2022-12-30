#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <climits>
#include <cstdlib>

const std::string kAlphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
const int64_t k1 = 16807;
const int64_t k2 = 100000000;

void Foo(int need, std::vector<std::vector<int64_t>>& vec) {
    for (int i = 0, f = 3, s = 0; i < 310 + (need + 10); ++i) {
        for (int j = 0; j < 31; ++j) {
            vec[f][j] += vec[s][j];
        }
        f++;
        f %= 31;
        s++;
        s %= 31;

    }
}

int64_t Search(int need, std::vector<std::vector<int64_t>>& vec, std::string pass) {
    for (int64_t seed = 1; seed < INT_MAX; ++seed) {
        for (int num = need; num < k2; ++num) {
            int64_t s = 0;
            for (int ii = 0; ii < 31; ++ii) {
                s += vec[(3 + num) % 31][ii] * static_cast<int64_t>((seed * ((1l << ii) % INT_MAX)) % INT_MAX);
            }
            s >>= 1;
            if (kAlphabet[s % kAlphabet.size()] != pass[num - need]) {
                return seed;
            }
        }
    }
    return 0;
}

int main() {
    const std::string pass = "NLXGI4NoAp";


    int need = k2 - pass.size();
    std::vector<int64_t> tmp(31);
    std::vector<std::vector<int64_t>> dp(31, tmp);
    size_t i = 0;
    while (i < 31) {
        dp[i][i] = 1;
        ++i;
    }
    Foo(need, dp);
    std::cout << Search(need, dp, pass) << std::endl;

    return 0;
}