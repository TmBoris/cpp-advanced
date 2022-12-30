#include "bad.h"

#include "ugly.h"

struct SplineImpl {

    SplineImpl(const std::vector<double>& x, const std::vector<double>& y, double a, double b) {
        x_ = x;
        y_ = y;
        spline.resize(x.size());
        mySplineSnd(&x[0], &y[0], x.size(), a, b, &spline[0]);
    }

    ~SplineImpl() = default;

    // Get spline value at a given point.
    double Interpolate(double x) {
        mySplintCube(&x_[0], &y_[0], &spline[0], x_.size(), x, &inter_value);
        return inter_value;
    }

    std::vector<double> x_;
    std::vector<double> y_;
    std::vector<double> spline;
    double inter_value;
};

Spline::Spline(const std::vector<double>& x, const std::vector<double>& y, double a, double b) {
    impl_ = std::make_shared<SplineImpl>(x, y, a, b);
}
double Spline::Interpolate(double x) {
    return impl_->Interpolate(x);
}
