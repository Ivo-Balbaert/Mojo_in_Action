import math
from testing import assert_equal


fn main() raises:
    var a = SIMD[DType.uint8, 4](1, 2, 3, 4)
    print(a)  # => [1, 2, 3, 4]
    print(a.type)  # => uint8
    print(len(a))  # => 4
    assert_equal(a[2], 3)
    a[2] = 5
    print(a)  # => [1, 2, 5, 4]

    # using SIMD
    a *= 10
    print(a)  # => [10, 20, 30, 40]

    # using for loop:
    var lst = List[Int](1, 2, 3, 4)
    print("[", end="")
    for i in lst:
        i[] *= 10
        print(i[], end=", ")
    print("]")
    # => [10, 20, 30, 40, ]

    var zeros = SIMD[DType.uint8, 4]()
    print(zeros)  # => [0, 0, 0, 0]
    var ones = SIMD[DType.uint8, 4](1)
    print(ones)  # => [1, 1, 1, 1]

    var numbers = SIMD[DType.uint8, 8]()
    print(numbers)  # => [0, 0, 0, 0, 0, 0, 0, 0]
    # fill them with numbers from 0 to 7
    numbers = math.iota[DType.uint8, 8](0)
    print(numbers)  # => [0, 1, 2, 3, 4, 5, 6, 7]
    numbers *= numbers
    print(numbers)  # => [0, 1, 4, 9, 16, 25, 36, 49]

    x = SIMD[DType.uint8, 4](2, 4, 6, 8)
    if all(x < 3):
        print("all elements less than 3")
    else:
        print("at least one element >= 3")
    # => at least one element >= 3

    s1 = Scalar[DType.int32](42)
    s2 = SIMD[DType.int32, 1](42)
    assert_equal(s1, s2)

    s3 = SIMD[ui8, 1]()
