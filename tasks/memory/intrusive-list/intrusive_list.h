#pragma once

#include <algorithm>

class ListHook {
public:
    ListHook(){};

    bool IsLinked() const {
        return islinked_;
    }

    void Unlink() {
        if (islinked_) {
            this->prev_->next_ = this->next_;
            this->next_->prev_ = this->prev_;
            this->next_ = nullptr;
            this->prev_ = nullptr;
            islinked_ = false;
        }
    }

    ListHook& operator=(ListHook* other) {
        next_ = other->next_;
        prev_ = other->prev_;
        islinked_ = other->islinked_;
        return *this;
    }

    // Must unlink element from list
    ~ListHook() {
        this->Unlink();
    }

    ListHook(const ListHook&) = delete;

private:
    template <class T>
    friend class List;

    ListHook* prev_ = this;
    ListHook* next_ = this;
    bool islinked_ = false;

    // that helper function might be useful
    void LinkBefore(ListHook* other) {
        this->next_ = other;
        this->prev_ = other->prev_;
        other->prev_->next_ = this;
        other->prev_ = this;
        islinked_ = true;
    }
};

template <typename T>
class List {
public:
    class Iterator : public std::iterator<std::bidirectional_iterator_tag, T> {
    public:
        Iterator() {
            for_iteration_ = nullptr;
        }
        explicit Iterator(T* ptr) {
            for_iteration_ = ptr;
        }
        Iterator& operator++() {
            for_iteration_ = static_cast<T*>(for_iteration_->next_);
            return *this;
        }
        Iterator operator++(int) {
            Iterator new_it = *this;
            for_iteration_ = static_cast<T*>(for_iteration_->next_);
            return new_it;
        }

        T& operator*() const {
            return *for_iteration_;
        }
        T* operator->() const {
            return for_iteration_;
        }

        bool operator==(const Iterator& rhs) const {
            return for_iteration_ == rhs.for_iteration_;
        }
        bool operator!=(const Iterator& rhs) const {
            return for_iteration_ != rhs.for_iteration_;
        }
        ~Iterator() {
            for_iteration_ = nullptr;
        }

        T* for_iteration_;
    };

    List() {
    }
    List(const List&) = delete;
    List(List&& other) {
        dummy_ = other.dummy_;

        other.dummy_.next_ = &(other.dummy_);
        other.dummy_.prev_ = &(other.dummy_);
    }

    // must unlink all elements from list
    ~List() {
        ListHook* now = dummy_.next_;
        while (dummy_.next_ != &dummy_) {
            ListHook* tmp = now->next_;
            now->Unlink();
            now = tmp;
        }
    }

    List& operator=(const List&) = delete;
    List& operator=(List&& other) {
        dummy_ = other.dummy_;

        other.dummy_.next_ = &(other.dummy_);
        other.dummy_.prev_ = &(other.dummy_);
        return *this;
    }

    bool IsEmpty() const {
        if (dummy_.next_ == &dummy_) {
            return true;
        }
        return false;
    }
    // that method is allowed to be O(n)
    size_t Size() const {
        if (dummy_.next_ == &dummy_) {
            return 0;
        }
        size_t counter = 0;
        List::Iterator el(static_cast<T*>(dummy_.next_));
        List::Iterator en(static_cast<T*>(dummy_.prev_));
        while (el != en) {
            counter++;
            el++;
        }
        return ++counter;
    }

    // note that IntrusiveList doesn't own elements,
    // and never copies or moves T
    void PushBack(T* elem) {
        elem->LinkBefore(&dummy_);
    }
    void PushFront(T* elem) {
        elem->LinkBefore(dummy_.next_);
    }

    T& Front() {
        return *(static_cast<T*>(dummy_.next_));
    }
    const T& Front() const {
        return *(static_cast<T*>(dummy_.next_));
    }

    T& Back() {
        return *(static_cast<T*>(dummy_.prev_));
    }
    const T& Back() const {
        return *(static_cast<T*>(dummy_.prev_));
    }

    void PopBack() {
        dummy_.prev_->Unlink();
    }
    void PopFront() {
        dummy_.next_->Unlink();
    }

    Iterator Begin() {
        List::Iterator el(static_cast<T*>(dummy_.next_));
        return el;
    }
    Iterator End() {
        List::Iterator el((static_cast<T*>(dummy_.prev_)));
        return ++el;
    }

    // complexity of this function must be O(1)
    Iterator IteratorTo(T* element) {
        List::Iterator el(element);
        return el;
    }

private:
    ListHook dummy_;
};

template <typename T>
typename List<T>::Iterator begin(List<T>& list) {  // NOLINT
    return list.Begin();
}

template <typename T>
typename List<T>::Iterator end(List<T>& list) {  // NOLINT
    return list.End();
}
