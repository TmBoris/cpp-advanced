#pragma once

#include <string>
#include "cstring"

class StringView {
    const char* begin_;
    size_t length_;

public:
    StringView(const std::string& str, size_t start = 0, size_t size = std::string::npos) {
        begin_ = &str[0] + start;
        if (size == std::string::npos) {
            length_ = str.size() - start;
        } else {
            length_ = size;
        }
    }

    StringView(const char* cstr, size_t size) {
        begin_ = cstr;
        length_ = size;
    }

    StringView(const char* cstr) {
        begin_ = cstr;
        length_ = std::strlen(cstr);
    }

    size_t Size() const {
        return length_;
    }

    char operator[](size_t pos) const {
        return *(begin_ + pos);
    }
};
