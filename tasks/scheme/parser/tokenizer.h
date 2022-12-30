#pragma once

#include <bits/stdc++.h>
#include <optional>
#include <istream>
#include "error.h"

bool IsFirstSymbol(char c);
bool IsSymbol(char c);

struct SymbolToken {
    SymbolToken() = default;
    SymbolToken(const std::string& other) : name(other) {
    }
    std::string name;

    bool operator==(const SymbolToken& other) const {
        return name == other.name;
    }
};

struct QuoteToken {
    QuoteToken() = default;
    bool operator==(const QuoteToken&) const {
        return true;
    }
};

struct DotToken {
    DotToken() = default;
    bool operator==(const DotToken&) const {
        return true;
    }
};

enum class BracketToken { OPEN, CLOSE };

struct ConstantToken {
    ConstantToken() = default;
    ConstantToken(int num) : value(num) {
    }
    int value = 0;

    bool operator==(const ConstantToken& other) const {
        return value == other.value;
    }
};

using Token = std::variant<ConstantToken, BracketToken, SymbolToken, QuoteToken, DotToken>;

class Tokenizer {
public:
    Tokenizer(std::istream* in) {
        str_ = in;
        is_end_ = false;
        Next();
    }

    bool IsEnd() {
        return is_end_;
    }

    void Next() {
        if (str_->peek() == EOF) {
            is_end_ = true;
            return;
        }
        std::string str;
        while (str_->peek() != EOF) {
            if (str_->peek() == ' ' || str_->peek() == '\n') {
                str_->get();
                if (str_->peek() == EOF) {
                    is_end_ = true;
                    return;
                }
            } else if (str_->peek() == '\'') {
                str_->get();
                token_.emplace<3>();
                break;
            } else if (str_->peek() == '(') {
                str_->get();
                token_.emplace<1>(BracketToken::OPEN);
                break;
            } else if (str_->peek() == ')') {
                str_->get();
                token_.emplace<1>(BracketToken::CLOSE);
                break;
            } else if (str_->peek() == '.') {
                str_->get();
                token_.emplace<4>();
                break;
            } else if (std::isdigit(str_->peek()) &&
                       (str.empty() ||
                        (str.size() == 1 && (str.back() == '-' || str.back() == '+')) ||
                        std::isdigit(str.back()))) {
                str += str_->get();
                if (!std::isdigit(str_->peek()) || str_->peek() == EOF) {
                    token_.emplace<0>(std::atoi(&str[0]));
                    break;
                }
            } else if (str.empty() && IsFirstSymbol(str_->peek())) {
                str += str_->get();
                if (!IsSymbol(str_->peek())) {
                    token_.emplace<2>(str);
                    break;
                }
            } else if (!str.empty() && IsSymbol(str_->peek())) {
                str += str_->get();
                if (!IsSymbol(str_->peek())) {
                    token_.emplace<2>(str);
                    break;
                }
            } else if (str_->peek() == '-' || str_->peek() == '+') {
                str += str_->get();
                if (!std::isdigit(str_->peek()) || str_->peek() == EOF) {
                    token_.emplace<2>(str);
                    break;
                }
            } else {
                throw SyntaxError("error in Next(Tokenizer)");
            }
        }
    }

    Token GetToken() {
        return token_;
    }

private:
    bool is_end_;
    std::istream* str_;
    Token token_;
};