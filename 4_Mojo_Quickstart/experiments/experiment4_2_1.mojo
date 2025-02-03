fn main():
    var n = SIMD[DType.int32, 7](1, 2, 3, 4)

    # => error: constraint failed: simd width must be power of 2
