from testing import assert_equal


fn main() raises:
    var b1: Bool = True  # equivalent: var b = True
    print(b1)  # => True
    b1 = False

    # Invert (~)
    print(~False)  # => True

    # Equal and Not-equal (== !=)
    print(True == False)  # => False
    print(True != False)  # => True

    # and, or and xor
    print(True & False)  # => False
    print(False | False)  # => False
    print(True ^ False)  # => True

    var a = 108
    var b = 2 * 54
    print(a == b)  # => True
    assert_equal(a, b)
    # assert_equal(a, 3 * b)   # AssertionError
