alias dtype = DType.float32


fn main():
    var a = SIMD[dtype, 8](0.5)
    var b = SIMD[dtype, 8](2.5)

    a1, a2 = a.split()
    print(a1, a2)
    # => [0.5, 0.5, 0.5, 0.5] [0.5, 0.5, 0.5, 0.5]
    print(a.reduce_add())  # => 4.0
    print(b.reduce_mul())  # => 1525.87890625
    print(a1.shift_left[3]())  # => [0.5, 0.0, 0.0, 0.0]
