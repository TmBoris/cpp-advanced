#pragma once

#include <utility>
#include <functional>

template <typename Signature>
class FunctionRef;

template <typename Res, typename... Args>
class FunctionRef<Res(Args...)> {
public:
    template <typename F>
    FunctionRef(F&& f) {
        functor_ = reinterpret_cast<void*>(&f);

        trampoline_ = [](void* foo, Args&&... args) -> Res {
            if constexpr (!std::is_void_v<Res>) {
                return (*reinterpret_cast<typename std::add_pointer<F>::type>(foo))(
                    std::forward<Args>(args)...);
            } else {
                (*reinterpret_cast<typename std::add_pointer<F>::type>(foo))(
                    std::forward<Args>(args)...);
            }
        };
    }

    Res operator()(Args&&... args) const {
        if constexpr (!std::is_void_v<Res>) {
            return trampoline_(functor_, std::forward<Args>(args)...);
        } else {
            trampoline_(functor_, std::forward<Args>(args)...);
        }
    }

private:
    void* functor_ = nullptr;
    Res (*trampoline_)(void*, Args&&...) = nullptr;
};