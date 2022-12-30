#pragma once

#include <vector>

template <class Functor>
class ReverseBinaryFunctor {
public:
    ReverseBinaryFunctor(Functor functor) {
        f_ = functor;
    }
    template <class T>
    bool operator()(const T& a, const T& b) {
        return !f_(a, b);
    }

private:
    Functor f_;
};

template <class Functor>
class ReverseUnaryFunctor {
public:
    ReverseUnaryFunctor(Functor functor) {
        f_ = functor;
    }
    template <class T>
    bool operator()(const T& a) {
        return !f_(a);
    }

private:
    Functor f_;
};

template <class Functor>
ReverseUnaryFunctor<Functor> MakeReverseUnaryFunctor(Functor functor) {
    return ReverseUnaryFunctor<Functor>(functor);
}

template <class Functor>
ReverseBinaryFunctor<Functor> MakeReverseBinaryFunctor(Functor functor) {
    return ReverseBinaryFunctor<Functor>(functor);
}
