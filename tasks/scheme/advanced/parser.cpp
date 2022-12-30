#include <parser.h>

std::shared_ptr<Object> Read(Tokenizer* tokenizer) {
    Token tmp = tokenizer->GetToken();
    if (tokenizer->IsEnd()) {
        throw SyntaxError("Nothing to read");
    } else if (tokenizer->GetToken() == Token{BracketToken::OPEN}) {
        tokenizer->Next();
        return ReadList(tokenizer);
    } else if (SymbolToken* token1 = std::get_if<SymbolToken>(&tmp)) {
        tokenizer->Next();
        return std::make_shared<Symbol>(token1->name);
    } else if (ConstantToken* token2 = std::get_if<ConstantToken>(&tmp)) {
        tokenizer->Next();
        return std::make_shared<Number>(token2->value);
    } else if (tokenizer->GetToken() == Token{QuoteToken{}}) {
        tokenizer->Next();
        std::shared_ptr<Cell> cell = std::make_shared<Cell>();
        cell->first_ = std::make_shared<Symbol>("quote");
        cell->second_ = Read(tokenizer);
        return cell;
    } else if (tokenizer->GetToken() == Token{DotToken{}}) {
        tokenizer->Next();
        return std::make_shared<Symbol>(".");
    } else if (tokenizer->GetToken() == Token{BracketToken::CLOSE}) {
        throw SyntaxError("closing bracket without open");
    } else {
        throw SyntaxError("SyntaxError in parser");
    }
}

std::shared_ptr<Object> ReadList(Tokenizer* tokenizer) {
    size_t counter = 0;
    static int lists = 0;
    std::shared_ptr<Cell> cell = std::make_shared<Cell>();
    auto now = cell;
    ++lists;
    while (tokenizer->GetToken() != Token{BracketToken::CLOSE}) {
        std::shared_ptr<Object> obj = Read(tokenizer);
        if (Is<Cell>(obj) || Is<Number>(obj) || !obj) {
            if (counter > 0) {
                now->second_ = std::make_shared<Cell>();
                now = As<Cell>(now->second_);
            }
            now->first_ = obj;
        } else if (Is<Symbol>(obj)) {
            if (As<Symbol>(obj)->str_ == ".") {
                if (tokenizer->IsEnd()) {
                    throw SyntaxError("Nothing after dot");
                }
                if (cell->first_ == nullptr) {
                    throw SyntaxError("nothing before dot");
                }
                Token scope_tmp = tokenizer->GetToken();
                if (tokenizer->GetToken() == Token{BracketToken::OPEN}) {
                    tokenizer->Next();
                    now->second_ = ReadList(tokenizer);
                } else if (ConstantToken* token4 = std::get_if<ConstantToken>(&scope_tmp)) {
                    tokenizer->Next();
                    if (tokenizer->GetToken() != Token{BracketToken::CLOSE}) {
                        throw SyntaxError(". number and not a close brace");
                    }
                    now->second_ = std::make_shared<Number>(token4->value);
                } else {
                    throw SyntaxError(". not a number or a cell");
                }
            } else {
                if (counter > 0) {
                    now->second_ = std::make_shared<Cell>();
                    now = As<Cell>(now->second_);
                }
                now->first_ = obj;
                if (As<Symbol>(obj)->str_ == "quote") {
                    now->second_ = Read(tokenizer);
                }
            }
        } else {
            throw SyntaxError("smth unreal");
        }
        if (tokenizer->IsEnd()) {
            throw SyntaxError("Bad string");
        }
        counter++;
    }
    --lists;
    tokenizer->Next();
    if (lists == 0 && !tokenizer->IsEnd()) {
        throw SyntaxError("braces mistake");
    }
    if (counter == 0) {
        return nullptr;
    } else {
        return cell;
    }
}