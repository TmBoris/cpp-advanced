#pragma once

#include <constexpr_map.h>

#include <type_traits>

template <class K, class V, int S>
constexpr auto Sort(ConstexprMap<K, V, S> map) {
    ConstexprMap<K, V, S> result;
    bool is_not_integral = !std::is_integral<K>::value;
    for (size_t idx = 0; idx < map.Size(); ++idx) {
        auto elem = map.GetByIndex(idx);
        result[elem.first] = elem.second;
    }
    for (size_t i = 0; i < result.Size(); ++i) {
        for (size_t j = i + 1; j < result.Size(); ++j) {
            if (is_not_integral ^ (result.GetByIndex(i).first < result.GetByIndex(j).first)) {
                auto elem = result.GetByIndex(i);
                result.GetByIndex(i).first = result.GetByIndex(j).first;
                result.GetByIndex(i).second = result.GetByIndex(j).second;
                result.GetByIndex(j).first = elem.first;
                result.GetByIndex(j).second = elem.second;
            }
        }
    }
    return result;
}
