#pragma once

#include <vector>
#include <cstddef>
#include <cstdint>
#include "string"

struct Subsets {
    std::vector<size_t> first_indices;
    std::vector<size_t> second_indices;
    bool exists;
};

Subsets Find(const std::vector<int64_t>& data);
