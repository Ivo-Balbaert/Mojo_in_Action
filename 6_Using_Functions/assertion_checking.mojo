from math import sqrt
from testing import assert_true


fn sqrt_checked(num: Int64) raises -> Float64:
    assert_true(num >= 0, "For sqrt the number must be >= 0!")
    return Float64(sqrt((num)))


fn main() raises:
    var num = -7
    print(sqrt_checked(num))


# => AssertionError: For sqrt the number must be >= 0!
