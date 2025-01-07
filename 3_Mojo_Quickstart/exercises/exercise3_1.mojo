from testing import assert_equal


fn main() raises:
    var vec1 = SIMD[DType.int8, 4](2, 3, 5, 7)
    var vec2 = SIMD[DType.int8, 4](1, 2, 3, 4)
    var product = vec1 * vec2
    assert_equal(product, SIMD[DType.int8, 4](2, 6, 15, 28))
