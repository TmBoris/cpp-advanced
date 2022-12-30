#pragma once

#include "bits/stdc++.h"

class ICommand {
public:
    virtual void Do() = 0;
    virtual bool Undo() = 0;

    virtual ~ICommand() = default;
};

class Editor {
public:
    const std::string& GetText() const;

    void Type(char c);

    void ShiftLeft();

    void ShiftRight();

    void Backspace();

    void Undo();

    void Redo();

    void AddCommand(std::shared_ptr<ICommand>(command));
    std::vector<std::shared_ptr<ICommand>> commands_;
    std::vector<std::shared_ptr<ICommand>> undo_commands_;
    std::string str_;
    size_t cursor_ = 0;
};

class TypeCommand : public ICommand {
public:
    TypeCommand(Editor& editor, char c) : editor_(editor) {
        c_ += c;
        Do();
    }

    void Do() {
        editor_.str_.insert(editor_.cursor_, c_);
        editor_.cursor_++;
    }

    bool Undo() {
        editor_.str_.erase(editor_.cursor_ - 1, 1);
        editor_.cursor_--;
        return true;
    }

private:
    Editor& editor_;
    std::string c_;
};

class ShiftLeftCommand : public ICommand {
public:
    ShiftLeftCommand(Editor& editor) : editor_(editor) {
        Do();
    }

    void Do() {
        if (editor_.cursor_ > 0) {
            editor_.cursor_--;
            done_ = true;
        } else {
            done_ = false;
        }
    }

    bool Undo() {
        if (done_) {
            editor_.cursor_++;
            return true;
        }
        return false;
    }

private:
    Editor& editor_;
    bool done_;
};

class ShiftRightCommand : public ICommand {
public:
    ShiftRightCommand(Editor& editor) : editor_(editor) {
        Do();
    }

    void Do() {
        if (editor_.cursor_ < editor_.str_.size()) {
            editor_.cursor_++;
            done_ = true;
        } else {
            done_ = false;
        }
    }

    bool Undo() {
        if (done_) {
            editor_.cursor_--;
            return true;
        }
        return false;
    }

private:
    Editor& editor_;
    bool done_;
};

class BackSpaceCommand : public ICommand {
public:
    BackSpaceCommand(Editor& editor) : editor_(editor) {
        Do();
    }

    void Do() {
        if (editor_.cursor_ > 0) {
            c_ = editor_.str_[editor_.cursor_ - 1];
            editor_.str_.erase(editor_.cursor_ - 1, 1);
            editor_.cursor_--;
            done_ = true;
        } else {
            done_ = false;
        }
    }

    bool Undo() {
        if (done_) {
            editor_.str_.insert(editor_.cursor_, c_);
            editor_.cursor_++;
            return true;
        }
        return false;
    }

private:
    Editor& editor_;
    bool done_;
    std::string c_;
};

const std::string& Editor::GetText() const {
    return str_;
}

void Editor::Type(char c) {
    undo_commands_.clear();
    AddCommand(std::make_shared<TypeCommand>(*this, c));
}

void Editor::ShiftLeft() {
    undo_commands_.clear();
    AddCommand(std::make_shared<ShiftLeftCommand>(*this));
}

void Editor::ShiftRight() {
    undo_commands_.clear();
    AddCommand(std::make_shared<ShiftRightCommand>(*this));
}

void Editor::Backspace() {
    undo_commands_.clear();
    AddCommand(std::make_shared<BackSpaceCommand>(*this));
}

void Editor::Undo() {
    if (commands_.empty()) {
        return;
    }
    std::shared_ptr<ICommand> tmp;
    while (true) {
        tmp = commands_.back();
        commands_.pop_back();
        if (tmp->Undo()) {
            break;
        }
    }
    undo_commands_.push_back(tmp);
}

void Editor::Redo() {
    if (undo_commands_.empty()) {
        return;
    }
    commands_.push_back(undo_commands_.back());
    undo_commands_.back()->Do();
    undo_commands_.pop_back();
}

void Editor::AddCommand(std::shared_ptr<ICommand> command) {
    commands_.push_back(command);
}
