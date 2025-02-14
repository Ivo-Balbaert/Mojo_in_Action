fn update_vector(owned u: SIMD[DType.int32, 4]):
    u[2] = 42
    print(u)  # =>  [108, 42, 42, 7]


fn main() raises:
    a = SIMD[DType.int32, 4](108, 42, 13, 7)
    update_vector(a)  # A
    print(a)  # => [108, 42, 13, 7]
