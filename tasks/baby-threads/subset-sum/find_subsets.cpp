#include "find_subsets.h"
#include "bits/stdc++.h"

std::atomic<bool> b;
std::mutex mtx;

std::set<char> symbols = {'0', '1', '2'};
std::unordered_map<int64_t, std::string> ls;

void BuildLeft(const std::vector<int64_t>& data, std::string mask, int64_t border);
void BuildRight(const std::vector<int64_t>& data, std::string msk, int64_t border, int64_t begin);
int64_t SumLeft(const std::vector<int64_t>& vector, std::string mask);
int64_t SumRight(const std::vector<int64_t>& vec, std::string mask, int64_t begin);

Subsets ss;

Subsets Find(const std::vector<int64_t>& data) {
    b.store(false);
    ss = Subsets{};
    ls = {};
    if (data.size() <= 1) {
        return ss;
    }
    int64_t ls = data.size() / 2;
    if (data.size() < 22 && data.size() >= 2) {
        ls = data.size() / 2 - 1;
    } else if (data.size() >= 22) {
        ls = 13;
    }
    int64_t rs = data.size() - ls;
    BuildLeft(data, "", ls);
    if (data.size() < 12) {
        BuildRight(data, "", rs, ls);
    } else {
        std::thread t1(BuildRight, data, "00", rs, ls);
        std::thread t2(BuildRight, data, "01", rs, ls);
        std::thread t3(BuildRight, data, "02", rs, ls);
        std::thread t4(BuildRight, data, "10", rs, ls);
        std::thread t5(BuildRight, data, "11", rs, ls);
        std::thread t6(BuildRight, data, "12", rs, ls);
        std::thread t7(BuildRight, data, "20", rs, ls);
        std::thread t8(BuildRight, data, "21", rs, ls);
        std::thread t9(BuildRight, data, "22", rs, ls);

        t1.join();
        t2.join();
        t3.join();
        t4.join();
        t5.join();
        t6.join();
        t7.join();
        t8.join();
        t9.join();
    }

    return ss;
}

void BuildLeft(const std::vector<int64_t>& data, std::string mask, int64_t border) {
    if (mask.size() == border) {
        ls.insert({SumLeft(data, mask), mask});
        return;
    }
    for (char elem : symbols) {
        mask.push_back(elem);
        BuildLeft(data, mask, border);
        mask.pop_back();
    }
}

int64_t SumLeft(const std::vector<int64_t>& vector, std::string mask) {
    int64_t ans = 0;
    for (size_t i = 0; i < mask.size(); ++i) {
        if (mask[i] == '1') {
            ans += vector[i];
        } else if (mask[i] == '2') {
            ans -= vector[i];
        }
    }
    return ans;
}

void BuildRight(const std::vector<int64_t>& data, std::string msk, int64_t border, int64_t begin) {

    if (b) {
        return;
    }
    if (!b) {
        if (msk.size() == border) {
            int64_t sum = SumRight(data, msk, begin);
            if (ls.contains((-1) * sum)) {
                if ((ls[(-1) * sum].find('1') != std::string::npos ||
                     msk.find('1') != std::string::npos) &&
                    (ls[(-1) * sum].find('2') != std::string::npos ||
                     msk.find('2') != std::string::npos)) {
                    mtx.lock();
                    ss.exists = true;
                    b.store(true);
                    for (size_t i = 0; i < ls[(-1) * sum].size(); ++i) {
                        if (ls[(-1) * sum][i] == '1') {
                            ss.first_indices.emplace_back(i);
                        } else if (ls[(-1) * sum][i] == '2') {
                            ss.second_indices.emplace_back(i);
                        }
                    }
                    for (size_t i = 0; i < msk.size(); ++i) {
                        if (msk[i] == '1') {
                            ss.first_indices.emplace_back(i + begin);
                        } else if (msk[i] == '2') {
                            ss.second_indices.emplace_back(i + begin);
                        }
                    }
                    mtx.unlock();
                    return;
                }
            }
            return;
        }
    }
    if (b) {
        return;
    }
    for (char elem : symbols) {
        if (b) {
            return;
        }
        msk.push_back(elem);
        BuildRight(data, msk, border, begin);
        if (b) {
            return;
        }
        msk.pop_back();
    }
}

int64_t SumRight(const std::vector<int64_t>& vec, std::string mask, int64_t begin) {
    int64_t ans = 0;
    for (size_t i = begin; i < vec.size(); ++i) {
        if (mask[i - begin] == '1') {
            ans += vec[i];
        } else if (mask[i - begin] == '2') {
            ans -= vec[i];
        }
    }
    return ans;
}
