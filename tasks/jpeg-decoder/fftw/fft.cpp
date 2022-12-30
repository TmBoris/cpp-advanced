#include <fft.h>

#include <fftw3.h>
#include <cmath>

class DctCalculator::Impl {
public:
    Impl(size_t width, std::vector<double> *input, std::vector<double> *output) {
        width_ = width;
        input_ = input;
        output_ = output;
    }

    size_t width_;
    std::vector<double> *input_;
    std::vector<double> *output_;
};

DctCalculator::DctCalculator(size_t width, std::vector<double> *input,
                             std::vector<double> *output) {
    if (input->size() != width * width || output->size() != input->size()) {
        throw std::invalid_argument("vector's sizes are wrong");
    }
    if (width != 8) {
        throw std::invalid_argument("width is wrong");
    }
    impl_ = std::make_unique<Impl>(width, input, output);
}

void DctCalculator::Inverse() {
    size_t i = 0;
    while (i != impl_->width_ * impl_->width_) {
        impl_->input_->data()[i] *= sqrt(2);
        i += impl_->width_;
    }
    i = 0;
    while (i != impl_->width_) {
        impl_->input_->data()[i] *= sqrt(2);
        ++i;
    }
    fftw_plan plan =
        fftw_plan_r2r_2d(impl_->width_, impl_->width_, impl_->input_->data(),
                         impl_->output_->data(), FFTW_REDFT01, FFTW_REDFT01, FFTW_ESTIMATE);
    fftw_execute(plan);
    fftw_destroy_plan(plan);
    fftw_cleanup();
    for (auto &x : *impl_->output_) {
        x /= 16;
    }
}

DctCalculator::~DctCalculator() = default;
