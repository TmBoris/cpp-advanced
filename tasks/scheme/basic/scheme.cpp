#include "scheme.h"

std::variant<bool, int64_t, std::shared_ptr<Object>> SymbolEval(std::shared_ptr<Object> obj,
                                                                std::shared_ptr<Object> second);

// void QuoteRead(std::shared_ptr<Object> obj, std::string& ans) {
//     if (Is<Symbol>(obj)) {
//         ans += As<Symbol>(obj)->str_;
//     } else if (Is<Number>(obj)) {
//         ans += std::to_string(As<Number>(obj)->num_);
//     } else if (Is<Cell>(obj)){
//         if (!As<Cell>(obj)->first_) {
//             ans += "()";
//         } else {
//             QuoteRead(As<Cell>(obj)->first_, ans);
//             ans += " ";
//             QuoteRead(As<Cell>(obj)->second_, ans);
//         }
//     } else {
//         ans.pop_back();
//     }
// }

void ToVector(std::shared_ptr<Object> obj, std::vector<int64_t>& vec, int& num) {
    static int q;
    if (num == 0) {
        q = 0;
    }
    ++num;
    if (q == 1) {
        throw RuntimeError("more than 1 nullptr in ToVector");
    }
    if (Is<Number>(obj)) {
        vec.push_back(As<Number>(obj)->num_);
    } else if (Is<Cell>(obj)) {
        if (Is<Cell>(As<Cell>(obj)->first_)) {
            if (!Is<Symbol>(As<Cell>(As<Cell>(obj)->first_)->first_)) {
                throw RuntimeError("cell starting with nosymbol in ToVector");
            }
            int tmp = q;
            std::variant<bool, int64_t, std::shared_ptr<Object>> var = SymbolEval(
                As<Cell>(As<Cell>(obj)->first_)->first_, As<Cell>(As<Cell>(obj)->first_)->second_);
            if (int64_t* i = std::get_if<int64_t>(&var)) {
                vec.push_back(*i);
            } else {
                throw RuntimeError("result of cell in ToVector is bool");
            }
            q = tmp;
        } else {
            ToVector(As<Cell>(obj)->first_, vec, num);
        }
        ToVector(As<Cell>(obj)->second_, vec, num);
    } else if (!obj) {
        q++;
    } else {
        throw RuntimeError("not an integer vector");
    }
}

bool BoolCommandCheck(std::function<bool(int64_t, int64_t)> f, std::shared_ptr<Object> second) {
    if (!second) {
        return true;
    } else if (Is<Number>(second)) {
        return true;
    } else if (Is<Cell>(second)) {
        bool flag = true;
        std::vector<int64_t> vec;
        int tmp = 0;
        ToVector(second, vec, tmp);
        for (size_t i = 0; i + 1 < vec.size(); ++i) {
            if (!f(vec[i], vec[i + 1])) {
                flag = false;
                break;
            }
        }
        if (flag) {
            return true;
        } else {
            return false;
        }
    } else {
        throw RuntimeError("only numbers can be in BoolCommandCheck");
    }
}

bool CheckList(std::shared_ptr<Object> obj) {
    if (Is<Cell>(obj)) {
        return CheckList(As<Cell>(obj)->second_);
    } else {
        if (!obj) {
            return true;
        } else {
            return false;
        }
    }
}

std::variant<bool, int64_t, std::shared_ptr<Object>> ArithmeticCommand(
    std::function<int64_t(int64_t, int64_t)> f, std::shared_ptr<Object> second) {
    if (Is<Number>(second)) {
        return true;
    } else if (Is<Cell>(second)) {
        std::vector<int64_t> vec;
        int tmp = 0;
        ToVector(second, vec, tmp);
        int64_t num = vec[0];
        for (size_t i = 1; i < vec.size(); ++i) {
            num = f(num, vec[i]);
        }
        return num;
    } else {
        throw RuntimeError("only numbers can be in ArithmeticCommand");
    }
}

std::variant<bool, int64_t, std::shared_ptr<Object>> BoolCommand(std::shared_ptr<Object> second,
                                                                 bool required_value) {
    if (!second) {
        return !required_value;
    } else if (Is<Cell>(second)) {
        if (Is<Cell>(As<Cell>(second)->first_)) {
            auto cell_first = As<Cell>(As<Cell>(second)->first_);
            if (Is<Symbol>(cell_first->first_) && As<Symbol>(cell_first->first_)->str_ == "quote") {
                if (required_value || !As<Cell>(second)->second_) {
                    return cell_first->second_;
                }
            } else if (Is<Symbol>(cell_first->first_)) {
                std::variant<bool, int64_t, std::shared_ptr<Object>> var =
                    SymbolEval(As<Symbol>(cell_first->first_), cell_first->second_);
                if (bool* first = std::get_if<bool>(&var)) {
                    if (required_value == *first || !As<Cell>(second)->second_) {
                        return *first;
                    }
                }
            } else {
                throw RuntimeError("can't convert symbol to bool");
            }
        } else if (Is<Number>(As<Cell>(second)->first_)) {
            if (required_value || !As<Cell>(second)->second_) {
                return As<Number>(As<Cell>(second)->first_)->num_;
            }
        } else if (Is<Symbol>(As<Cell>(second)->first_)) {
            if (As<Symbol>(As<Cell>(second)->first_)->str_ == "#t" &&
                (required_value || !As<Cell>(second)->second_)) {
                return true;
            } else if (As<Symbol>(As<Cell>(second)->first_)->str_ == "#f" &&
                       (!required_value || !As<Cell>(second)->second_)) {
                return false;
            } else if (As<Symbol>(As<Cell>(second)->first_)->str_ != "#t" &&
                       As<Symbol>(As<Cell>(second)->first_)->str_ != "#f") {
                throw RuntimeError("BoolCommand failed");
            }
        }
        return BoolCommand(As<Cell>(second)->second_, required_value);
    } else {
        throw RuntimeError("bad(not a cell) argument for bool function");
    }
}

std::variant<bool, int64_t, std::shared_ptr<Object>> SymbolEval(std::shared_ptr<Object> obj,
                                                                std::shared_ptr<Object> second) {
    std::string command = As<Symbol>(obj)->str_;
    if (command == "number?") {
        if (Is<Cell>(second) && Is<Number>(As<Cell>(second)->first_)) {
            return true;
        } else {
            return false;
        }
    } else if (command == "boolean?") {
        if (Is<Cell>(second) && Is<Symbol>(As<Cell>(second)->first_) &&
            (As<Symbol>(As<Cell>(second)->first_)->str_ == "#f" ||
             As<Symbol>(As<Cell>(second)->first_)->str_ == "#t")) {
            return true;
        } else {
            return false;
        }
    } else if (command == "=") {
        auto lambda = [](int64_t a, int64_t b) { return a == b; };
        return BoolCommandCheck(lambda, second);
    } else if (command == "<") {
        auto lambda = [](int64_t a, int64_t b) { return a < b; };
        return BoolCommandCheck(lambda, second);
    } else if (command == ">") {
        auto lambda = [](int64_t a, int64_t b) { return a > b; };
        return BoolCommandCheck(lambda, second);
    } else if (command == "<=") {
        auto lambda = [](int64_t a, int64_t b) { return a <= b; };
        return BoolCommandCheck(lambda, second);
    } else if (command == ">=") {
        auto lambda = [](int64_t a, int64_t b) { return a >= b; };
        return BoolCommandCheck(lambda, second);
    } else if (command == "+") {
        if (!second) {
            return 0;
        } else {
            auto lambda = [](int64_t a, int64_t b) { return a + b; };
            return ArithmeticCommand(lambda, second);
        }
    } else if (command == "-") {
        if (!second) {
            throw RuntimeError("minus needs arguments");
        } else {
            auto lambda = [](int64_t a, int64_t b) { return a - b; };
            return ArithmeticCommand(lambda, second);
        }
    } else if (command == "*") {
        if (!second) {
            return 1;
        } else {
            auto lambda = [](int64_t a, int64_t b) { return a * b; };
            return ArithmeticCommand(lambda, second);
        }
    } else if (command == "/") {
        if (!second) {
            throw RuntimeError("division needs arguments");
        } else {
            auto lambda = [](int64_t a, int64_t b) { return a / b; };
            return ArithmeticCommand(lambda, second);
        }
    } else if (command == "max") {
        if (!second) {
            throw RuntimeError("max need arguments");
        } else {
            auto lambda = [](int64_t a, int64_t b) { return std::max(a, b); };
            return ArithmeticCommand(lambda, second);
        }
    } else if (command == "min") {
        if (!second) {
            throw RuntimeError("min need arguments");
        } else {
            auto lambda = [](int64_t a, int64_t b) { return std::min(a, b); };
            return ArithmeticCommand(lambda, second);
        }
    } else if (command == "abs") {
        if (!second) {
            throw RuntimeError("abs need arguments");
        } else if (Is<Number>(As<Cell>(second)->first_) && !As<Cell>(second)->second_) {
            return std::abs(As<Number>(As<Cell>(second)->first_)->num_);
        } else {
            throw RuntimeError("too much arguments in abs");
        }
    } else if (command == "#t") {
        return true;
    } else if (command == "#f") {
        return false;
    } else if (command == "not") {
        if (!second) {
            throw RuntimeError("not need arguments");
        } else if (Is<Cell>(second)) {
            if (Is<Symbol>(As<Cell>(second)->first_) &&
                As<Symbol>(As<Cell>(second)->first_)->str_ == "#f" && !As<Cell>(second)->second_) {
                return true;
            } else if (!As<Cell>(second)->second_) {
                return false;
            } else {
                throw RuntimeError("Problem in not");
            }
        } else {
            throw RuntimeError("too much arguments in not");
        }
    } else if (command == "and") {
        return BoolCommand(second, false);
    } else if (command == "or") {
        return BoolCommand(second, true);
    } else if (command == "pair?") {
        if (Is<Cell>(As<Cell>(As<Cell>(second)->first_)->second_)) {
            return true;
        } else {
            return false;
        }
    } else if (command == "null?") {
        if (!As<Cell>(As<Cell>(second)->first_)->second_) {
            return true;
        } else {
            return false;
        }
    } else if (command == "list?") {
        return CheckList(As<Cell>(As<Cell>(second)->first_)->second_);
    } else if (command == "cons") {
        std::shared_ptr<Cell> cell = std::make_shared<Cell>();
        cell->first_ = As<Cell>(second)->first_;
        cell->second_ = As<Cell>(As<Cell>(second)->second_)->first_;
        return cell;
    } else if (command == "car") {
        if (!As<Cell>(As<Cell>(second)->first_)->second_) {
            throw RuntimeError("car has bad args");
        }
        return As<Cell>(As<Cell>(As<Cell>(second)->first_)->second_)->first_;
    } else if (command == "cdr") {
        if (!As<Cell>(As<Cell>(second)->first_)->second_) {
            throw RuntimeError("cdr has bad args");
        }
        return As<Cell>(As<Cell>(As<Cell>(second)->first_)->second_)->second_;
    } else if (command == "list") {
        return second;
    } else if (command == "list-ref") {
        int64_t pos = As<Number>(As<Cell>(As<Cell>(second)->second_)->first_)->num_;
        auto now = As<Cell>(As<Cell>(second)->first_)->second_;
        int64_t i = 0;
        while (i < pos) {
            if (!As<Cell>(now)->second_) {
                throw RuntimeError("list-ref failed");
            }
            now = As<Cell>(now)->second_;
            i++;
        }
        return As<Cell>(now)->first_;
    } else if (command == "list-tail") {
        int64_t pos = As<Number>(As<Cell>(As<Cell>(second)->second_)->first_)->num_ - 1;
        auto now = As<Cell>(As<Cell>(second)->first_)->second_;
        int64_t i = 0;
        while (i < pos) {
            if (!As<Cell>(now)->second_) {
                throw RuntimeError("list-ref failed");
            }
            now = As<Cell>(now)->second_;
            i++;
        }
        return As<Cell>(now)->second_;
    } else {
        throw RuntimeError("SymbolEval failed");
    }
}

void Eval(std::shared_ptr<Object> first, std::vector<std::shared_ptr<Object>>& ans) {
    if (Is<Number>(first)) {
        static int i;
        if (ans.empty()) {
            i = 0;
        }
        ++i;
        ans.push_back(first);
        if (i > 1) {
            throw RuntimeError("only 1 number can be serialized as number");
        }
    } else if (Is<Symbol>(first)) {
        std::variant<bool, int64_t, std::shared_ptr<Object>> var = SymbolEval(first, nullptr);
        if (bool* b = std::get_if<bool>(&var)) {
            if (*b) {
                ans.push_back(std::make_shared<Symbol>("#t"));
            } else {
                ans.push_back(std::make_shared<Symbol>("#f"));
            }
        } else if (int64_t* i = std::get_if<int64_t>(&var)) {
            ans.push_back(std::make_shared<Number>(*i));
        }
    } else if (Is<Cell>(first)) {
        if (Is<Symbol>(As<Cell>(first)->first_)) {
            if (As<Symbol>(As<Cell>(first)->first_)->str_ == "quote") {
                ans.push_back(As<Cell>(first)->second_);
            } else {
                std::variant<bool, int64_t, std::shared_ptr<Object>> var =
                    SymbolEval(As<Cell>(first)->first_, As<Cell>(first)->second_);
                if (bool* b = std::get_if<bool>(&var)) {
                    if (*b) {
                        ans.push_back(std::make_shared<Symbol>("#t"));
                    } else {
                        ans.push_back(std::make_shared<Symbol>("#f"));
                    }
                } else if (int64_t* i = std::get_if<int64_t>(&var)) {
                    ans.push_back(std::make_shared<Number>(*i));
                } else if (std::shared_ptr<Object>* obj =
                               std::get_if<std::shared_ptr<Object>>(&var)) {
                    ans.push_back(*obj);
                }
            }
        } else {
            throw RuntimeError("first element in cell isn't a symbol");
        }
    } else {
        throw RuntimeError("I thought nulls are impossible to be here");
    }
}

void ReadCell(std::shared_ptr<Object> obj, std::string& ans) {
    if (Is<Symbol>(obj)) {
        ans += As<Symbol>(obj)->str_;
    } else if (Is<Number>(obj)) {
        ans += std::to_string(As<Number>(obj)->num_);
    } else if (Is<Cell>(obj)) {
        if (!As<Cell>(obj)->first_) {
            ans += "()";
        } else if (Is<Number>(As<Cell>(obj)->second_)) {
            ReadCell(As<Cell>(obj)->first_, ans);
            ans += " . ";
            ReadCell(As<Cell>(obj)->second_, ans);
        } else {
            ReadCell(As<Cell>(obj)->first_, ans);
            ans += " ";
            ReadCell(As<Cell>(obj)->second_, ans);
        }
    } else {
        ans.pop_back();
    }
}

void Print(std::vector<std::shared_ptr<Object>>& vec, std::string& ans) {
    for (size_t i = 0; i < vec.size(); ++i) {
        if (Is<Number>(vec[i])) {
            if (vec.size() == 1) {
                ans += std::to_string(As<Number>(vec[i])->num_);
            } else if (i == vec.size() - 1) {
                ans += " . " + std::to_string(As<Number>(vec[i])->num_);
            } else {
                ans += " " + std::to_string(As<Number>(vec[i])->num_);
            }
        } else if (Is<Symbol>(vec[i])) {
            ans += As<Symbol>(vec[i])->str_;
        } else if (Is<Cell>(vec[i])) {
            ans += "(";
            ReadCell(As<Cell>(vec[i]), ans);
            ans += ")";
        } else {
            ans += "()";
        }
    }
}

std::string Interpreter::Run(const std::string& str) {
    std::stringstream ss{str};
    Tokenizer tokenizer{&ss};

    auto obj = Read(&tokenizer);
    if (!tokenizer.IsEnd()) {
        throw SyntaxError("SyntaxError in parser");
    }

    std::vector<std::shared_ptr<Object>> vec;
    Eval(obj, vec);
    std::string ans;
    Print(vec, ans);
    return ans;
}
