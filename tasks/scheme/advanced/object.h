#pragma once

#include <memory>

class Object : public std::enable_shared_from_this<Object> {
public:
    virtual ~Object() = default;
};

class Number : public Object {
public:
    Number(Number* number) : num_(number->num_) {
    }
    Number(int64_t other) : num_(other) {
    }
    int GetValue() const {
        return num_;
    }

    int64_t num_;
};

class Symbol : public Object {
public:
    Symbol(Symbol* symbol) : str_(symbol->str_) {
    }
    Symbol(const std::string& other) : str_(other) {
    }
    const std::string& GetName() const {
        return str_;
    }

    std::string str_;
};

class Cell : public Object {
public:
    Cell() = default;
    Cell(Cell* cell) : first_(cell->first_), second_(cell->second_) {
    }
    Cell(std::shared_ptr<Object>& f, std::shared_ptr<Object>& s) : first_(f), second_(s) {
    }

    Cell& operator=(const Cell& other) {
        first_ = other.first_;
        second_ = other.second_;
        return *this;
    }

    std::shared_ptr<Object> GetFirst() const {
        return first_;
    }
    std::shared_ptr<Object> GetSecond() const {
        return second_;
    }

    std::shared_ptr<Object> first_ = nullptr;
    std::shared_ptr<Object> second_ = nullptr;
};

///////////////////////////////////////////////////////////////////////////////

// Runtime type checking and convertion.
// This can be helpful: https://en.cppreference.com/w/cpp/memory/shared_ptr/pointer_cast

template <class T>
std::shared_ptr<T> As(const std::shared_ptr<Object>& obj) {
    return std::dynamic_pointer_cast<T>(obj);
}

template <class T>
bool Is(const std::shared_ptr<Object>& obj) {
    auto x = dynamic_cast<T*>(obj.get());
    if (x == nullptr) {
        return false;
    }
    return true;
}
