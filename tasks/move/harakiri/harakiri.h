#pragma once

#include <string>
#include "cstring"
#include "iostream"

// Should not allow reuse and yell under sanitizers.
// Fix the interface and implementation.
// AwesomeCallback should add "awesomeness".

class OneTimeCallback {
public:
    virtual ~OneTimeCallback() {
    }
    virtual std::string operator()() const&& {
        return str_;
    }
    std::string str_;
};

// Implement ctor, operator(), maybe something else...
class AwesomeCallback : public OneTimeCallback {
public:
    AwesomeCallback(const std::string& str) {
        str_ = str + "awesomeness";
    }
    ~AwesomeCallback() override {
    }

    std::string operator()() const&& override {
        std::string tmp = str_;
        delete this;
        return tmp;
    }
};
