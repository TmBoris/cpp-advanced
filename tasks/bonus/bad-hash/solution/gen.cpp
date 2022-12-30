#include "iostream"
#include <unordered_set>
#include <string>
#include <ctime>
#include <cctype>
#include <random>
#include <cstdlib>
#include <fstream>
#include "unordered_map"

std::string alfa = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_";

int main() {
    std::ofstream fout;
    fout.open("/home/boris/cpp-advanced-hse/tasks/bonus/bad-hash/in.txt");
    std::ios_base::sync_with_stdio(false);
//    std::unordered_map<int, int> map;
//    for (size_t i = 300098; i < 1000001; i += 199) {
//        std::unordered_set<std::string> set(i);
//        map[set.bucket_count()]++;
//    }
//    int max_val = 0;
//    int ans;
//    for (auto [key, value] : map) {
//        std::cout << key << " " << value << std::endl;
//        if (value > max_val) {
//            max_val = value;
//            ans = key;
//        }
//    } // попробовал найти наиболее частовстречающееся колво бакетов
//    std::cout << ans << std::endl;
    std::mt19937 gen{std::random_device{}()};
    std::uniform_int_distribution<int> dist(0, alfa.size() - 1);

    size_t q = 0;
    while (q < 20000) {
        std::string str;
        for (size_t i = 0; i < 15; ++i) {

            size_t val = dist(gen);
            str += alfa[val];
        }
        if ((std::hash<std::string>{}(str) % 976369) == 0) {
            fout << str << std::endl;
            ++q;
        }
    }
    fout.close();
}


