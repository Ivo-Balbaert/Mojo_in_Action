fn update_vector(read u: SIMD[DType.int32, 4]):  # read is optional
    # error: invalid call to '__setitem__': invalid use of mutating method on rvalue of type 'SIMD[int32, 4]'
    #     u[2] = 42
    print(u)  # =>  [108, 42, 13, 7]


fn main() raises:
    a = SIMD[DType.int32, 4](108, 42, 13, 7)
    update_vector(a)  # A
    print(a)  # => [108, 42, 13, 7]
