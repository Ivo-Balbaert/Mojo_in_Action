from math import sqrt
from testing import assert_true


fn sqrt_checked(num: Int64) raises -> Float64:
    assert_true(num >= 0, "For sqrt the number must be >= 0!")
    return Float64(sqrt((num)))


fn main() raises:
    var num1 = 64
    print(sqrt_checked(num1))  # => 8.0
    var num2 = -7


#   print(sqrt_checked(num2))
# => AssertionError: For sqrt the number must be >= 0!
