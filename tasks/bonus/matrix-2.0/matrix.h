#pragma once

#include <array>
#include <stdexcept>
#include <type_traits>
#include <vector>

template <typename T>
class Matrix;

namespace {
template <typename T>
struct Base {};

template <typename L, typename R>
struct Glue : public Base<Glue<L, R>> {
    Glue(const L& l, const R& r) : left(l), right(r) {
    }

    const L& left;
    const R& right;
};

template <typename T>
struct GetCount;

template <typename L, typename R>
struct GetCount<Glue<L, R>> {
    static const int kCount = GetCount<L>::kCount + GetCount<R>::kCount;
};

template <typename T>
struct GetCount<Matrix<T>> {
    static const int kCount = 1;
};

template <typename Iterator, typename T>
constexpr void OperandsFill(Iterator it, const Matrix<T>& tree) {
    *it = &tree;
}

template <typename Iterator, typename L, typename R>
constexpr void OperandsFill(Iterator it, const Glue<L, R>& tree) {
    OperandsFill(std::prev(it), tree.left);
    OperandsFill(it, tree.right);
}

const size_t kInf = 10e15;

}  // namespace

template <typename L, typename R, typename = std::enable_if_t<std::is_base_of_v<::Base<L>, L>>,
          typename = std::enable_if_t<std::is_base_of_v<::Base<R>, R>>>
::Glue<L, R> operator*(const L& left, const R& right) {
    return ::Glue<L, R>(left, right);
}

template <typename T>
class Matrix : public ::Base<Matrix<T>> {
public:
    template <typename L, typename R>
    Matrix(const Glue<L, R>& tree) {
        std::array<const Matrix<T>*, GetCount<Glue<L, R>>::kCount> operands;
        ::OperandsFill(std::prev(operands.end()), tree);

        for (size_t i = 0; i < operands.size() - 1; ++i) {
            if (operands[i]->Columns() != operands[i + 1]->Rows()) {
                throw std::runtime_error("Matrix sizes are incompatible");
            }
        }

        std::vector<std::vector<size_t>> dp(operands.size(),
                                            std::vector<size_t>(operands.size(), ::kInf));
        std::vector<std::vector<size_t>> res(dp.size(), std::vector<size_t>(dp.size()));
        for (size_t i = 0; i < dp.size(); ++i) {
            dp[i][i] = 0;
        }

        for (size_t outer_ind = 1; outer_ind < dp.size(); ++outer_ind) {
            for (size_t i = 0; i < dp.front().size() - outer_ind; ++i) {
                size_t j = i + outer_ind;
                for (size_t k = i; k < j; ++k) {
                    size_t tmp_min =
                        dp[i][k] + dp[k + 1][j] +
                        operands[i]->Rows() * operands[k]->Columns() * operands[j]->Columns();
                    if (dp[i][j] > tmp_min) {
                        dp[i][j] = tmp_min;
                        res[i][j] = k;
                    }
                }
            }
        }
        data_ = Multiply(operands, res, 0, operands.size() - 1);
    }

    explicit Matrix(size_t n) : data_(n, std::vector<T>(n)) {
    }

    Matrix(size_t n, size_t m, T def = 0) : data_(n, std::vector<T>(m, def)) {
    }

    explicit Matrix(const std::vector<std::vector<T>>& other) : data_(other) {
    }

    Matrix(std::initializer_list<std::vector<T>> a) {
        for (const auto& i : a) {
            data_.template emplace_back(i);
        }
    }

    size_t Rows() const {
        return data_.size();
    }

    size_t Columns() const {
        return data_.empty() ? 0 : data_.front().size();
    }

    T& operator()(size_t i, size_t j) {
        return data_[i][j];
    }

    T operator()(size_t i, size_t j) const {
        return data_[i][j];
    }

    friend Matrix<T> operator+(Matrix<T> left, const Matrix<T>& right) {
        for (size_t i = 0; i < left.data_.size(); ++i) {
            for (size_t j = 0; j < left.data_.front().size(); ++j) {
                left(i, j) += right(i, j);
            }
        }
        return left;
    }

    friend Matrix<T> operator-(Matrix<T> left, const Matrix<T>& right) {
        for (size_t i = 0; i < left.data_.size(); ++i) {
            for (size_t j = 0; j < left.data_.front().size(); ++j) {
                left(i, j) -= right(i, j);
            }
        }
        return left;
    }

protected:
    std::vector<std::vector<T>> data_{};

    template <size_t N>
    static std::vector<std::vector<T>> Multiply(std::array<const Matrix<T>*, N> operands,
                                                const std::vector<std::vector<size_t>>& res_ind,
                                                size_t i, size_t j) {
        if (i == j) {
            return operands[i]->data_;
        }
        auto left = Multiply(operands, res_ind, i, res_ind[i][j]);
        auto right = Multiply(operands, res_ind, res_ind[i][j] + 1, j);
        std::vector<std::vector<T>> res(left.size(), std::vector<T>(right.front().size()));
        for (size_t ii = 0; ii < res.size(); ++ii) {
            for (size_t jj = 0; jj < res.front().size(); ++jj) {
                for (size_t kk = 0; kk < right.size(); ++kk) {
                    res[ii][jj] += left[ii][kk] * right[kk][jj];
                }
            }
        }
        return res;
    }
};