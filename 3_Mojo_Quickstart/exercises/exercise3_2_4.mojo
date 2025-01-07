fn main():
    var simd_value = SIMD[DType.int64, 1](42)
    var int_value: Int = int(simd_value)  # .__int__()
