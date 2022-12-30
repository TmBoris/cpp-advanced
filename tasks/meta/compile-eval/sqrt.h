


template <bool B, int N, int l, int r, int m, bool flag>
struct Conditional {
    static const int value = Conditional<(m + r + 1) / 2 * (m + r + 1) / 2 < N, N, m + 1, r,
                                         (m + r + 1) / 2, l * l >= N>::value;
};

template <int N, int l, int r, int m, bool flag>
struct Conditional<false, N, l, r, m, flag> {
    static const int value =
        Conditional<(l + m) / 2 * (l + m) / 2 < N, N, l, m, (l + m) / 2, l * l >= N>::value;
};

template <int N, int l, int r, int m>
struct Conditional<false, N, l, r, m, true> {
    static const int value = l;
};

template <int N>
struct Sqrt {
    static const int value = Conditional<true, N, 0, 31624, 0, false>::value;
};
