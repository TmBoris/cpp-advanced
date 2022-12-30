#pragma once

<<<<<<< Updated upstream
<<<<<<< Updated upstream
#include <cstdint>
#include <string>

=======
=======
>>>>>>> Stashed changes
#include <cstddef>
#include "vector"
#include "string"

class Obj {
public:
    std::vector<std::string> ptr;
    int size;

    Obj() {
        size = 1;
    }

    ~Obj() {
    }
};
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes

class COWVector {
public:
    COWVector();
    ~COWVector();

    COWVector(const COWVector& other);
    COWVector& operator=(const COWVector& other);

    size_t Size() const;

    void Resize(size_t size);

    const std::string& Get(size_t at);
    const std::string& Back();

    void PushBack(const std::string& value);

    void Set(size_t at, const std::string& value);

private:
};
