alias dtype = DType.float32


fn main():
    var a = SIMD[dtype, 4](0.5)
    var b = SIMD[dtype, 4](2.5)

    print(a.join(b))
    # => [0.5, 0.5, 0.5, 0.5, 2.5, 2.5, 2.5, 2.5]

    print(a.interleave(b))
    # => [0.5, 2.5, 0.5, 2.5, 0.5, 2.5, 0.5, 2.5]

    var c = SIMD[DType.int8, 4](42, 108, 7, 13)
    print(c.shuffle[1, 3, 2, 0]())  #  => [108, 13, 7, 42]
