fn main():
    var f1 = Float64(2.0)  # short alias
    var f2 = SIMD[DType.float64, 1](2.0)
    print(f1 * f2)  # => 4.0
