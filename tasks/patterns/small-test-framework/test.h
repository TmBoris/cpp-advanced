#pragma once

#include "bits/stdc++.h"

class AbstractTest {
public:
    virtual void SetUp() = 0;
    virtual void TearDown() = 0;
    virtual void Run() = 0;
    virtual ~AbstractTest() {
    }
};

struct Substr {
    Substr(const std::string& str) : pattern_(str) {
    }

    bool operator()(const std::string& str) {
        auto n = str.find(pattern_);
        if (n == std::string::npos) {
            return false;
        } else {
            return true;
        }
    }

private:
    std::string pattern_;
};

struct FullMatch {
    FullMatch(const std::string& str) : pattern_(str) {
    }

    bool operator()(const std::string& str) {
        return str == pattern_;
    }

private:
    std::string pattern_;
};

class AbstractTestMaker {
public:
    virtual ~AbstractTestMaker() = default;
    virtual std::unique_ptr<AbstractTest> Produce() const = 0;
};

template <typename Test>
class TestMaker : public AbstractTestMaker {
public:
    ~TestMaker() override {
    }
    std::unique_ptr<AbstractTest> Produce() const override {
        return std::make_unique<Test>();
    }
};

class TestRegistry {
public:
    template <class TestClass>
    void RegisterClass(const std::string& class_name) {
        tests_[class_name] = std::make_shared<TestMaker<TestClass>>();
    }

    std::unique_ptr<AbstractTest> CreateTest(const std::string& class_name) {
        if (tests_.contains(class_name)) {
            return tests_[class_name]->Produce();
        } else {
            throw std::out_of_range("lol");
        }
    }

    void RunTest(const std::string& test_name) {
        auto test = CreateTest(test_name);
        test->SetUp();
        try {
            test->Run();
            test->TearDown();
        } catch (const std::exception& ex) {
            test->TearDown();
            throw;
        }
    }

    template <class Predicate>
    std::vector<std::string> ShowTests(Predicate callback) const {
        std::vector<std::string> ans;

        for (const auto& test : tests_) {
            if (callback(test.first)) {
                ans.push_back(test.first);
            }
        }

        return ans;
    }

    std::vector<std::string> ShowAllTests() const {
        std::vector<std::string> ans;
        for (auto& x : tests_) {
            ans.push_back(x.first);
        }
        return ans;
    }

    template <class Predicate>
    void RunTests(Predicate callback) {
        for (auto& x : tests_) {
            if (callback(x.first)) {
                RunTest(x.first);
            }
        }
    }

    void Clear() {
        tests_.clear();
    }

    static TestRegistry& Instance() {
        static TestRegistry* test = new TestRegistry{};
        return *test;
    }

private:
    std::map<std::string, std::shared_ptr<AbstractTestMaker>> tests_;

    TestRegistry() {
    }
    ~TestRegistry() {
    }

    TestRegistry(const TestRegistry&) = delete;
    TestRegistry& operator=(const TestRegistry&) = delete;
};
