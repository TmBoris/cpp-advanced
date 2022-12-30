#include <array>
#include <utility>

template <std::size_t N>
constexpr std::array<std::array<int, N - 1>, N - 1> create_sub_matrix(
    const std::array<std::array<int, N>, N>& a, int i, int j) {
    std::array<std::array<int, N - 1>, N - 1> r{};
    for (int ii = 0; ii != N - 1; ++ii)
        for (int jj = 0; jj != N - 1; ++jj)
            (&std::get<0>(((&std::get<0>(r))[ii])))[jj] =
                a[ii + (ii >= i ? 1 : 0)][jj + (jj >= j ? 1 : 0)];
    return r;
}

constexpr int get_cofactor_coef(int i, int j) {
    return (i + j) % 2 == 0 ? 1 : -1;
}

template <int N>
constexpr int determinant(const std::array<std::array<int, N>, N>& a) {
    int det = 0;

    for (int i = 0u; i < N; ++i) {
        det += get_cofactor_coef(i + 1, 1) * a[i][0] *
               determinant<N - 1>(create_sub_matrix<N>(a, i, 0));
    }

    return det;
}

template <>
constexpr int determinant<2>(const std::array<std::array<int, 2>, 2>& a) {
    return a[0][0] * a[1][1] - a[0][1] * a[1][0];
}

template <>
constexpr int determinant<1>(const std::array<std::array<int, 1>, 1>& a) {
    return a[0][0];
}