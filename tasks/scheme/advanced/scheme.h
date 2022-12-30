#pragma once

#include <string>
#include "parser.h"

class Scope {
    std::shared_ptr<Object> GetRefOnSymbol(std::string& str) {
        return map_[str];
    }
    void DefineSymbol(std::string& str, std::shared_ptr<Object> obj) {
        map_[str] = obj;
    }
private:
    std::unordered_map<std::string, std::shared_ptr<Object>> map_;
    std::shared_ptr<Scope> parent_scope_;
};

class Lambda : public Object {

private:
    std::shared_ptr<Scope> scope_;
};

class Interpreter {
public:
    std::string Run(const std::string& string);

private:
    Scope global_scope_;
};
