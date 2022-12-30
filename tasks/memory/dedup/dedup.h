#pragma once

#include <memory>
#include <vector>
#include <string>
#include <unordered_map>

using std::string;

std::vector<std::unique_ptr<string>> Duplicate(const std::vector<std::shared_ptr<string>>& items) {
    std::vector<std::unique_ptr<string>> ans(items.size());
    for (size_t i = 0; i < ans.size(); ++i) {
        ans[i] = std::make_unique<string>(*items[i]);
    }

    return ans;
}

std::vector<std::shared_ptr<string>> DeDuplicate(
    const std::vector<std::unique_ptr<string>>& items) {
    std::vector<std::shared_ptr<string>> ans(items.size());
    std::unordered_map<string, std::shared_ptr<string>> map;
    for (size_t i = 0; i < ans.size(); ++i) {
        if (map.contains(*items[i])) {
            ans[i] = map[*items[i]];
        } else {
            ans[i] = std::make_shared<string>(*items[i]);
            map[*items[i]] = ans[i];
        }
    }

    return ans;
}
