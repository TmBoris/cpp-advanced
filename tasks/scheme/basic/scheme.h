#pragma once

#include <string>
#include "parser.h"

class Interpreter {
public:
    std::string Run(const std::string& string);
};
