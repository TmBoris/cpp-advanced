#include <tokenizer.h>

bool IsFirstSymbol(char c) {
    if (std::isalpha(c) || c == '<' || c == '=' || c == '>' || c == '*' || c == '/' || c == '#') {
        return true;
    }
    return false;
}

bool IsSymbol(char c) {
    if (IsFirstSymbol(c) || std::isdigit(c) || c == '?' || c == '!' || c == '-') {
        return true;
    }
    return false;
}