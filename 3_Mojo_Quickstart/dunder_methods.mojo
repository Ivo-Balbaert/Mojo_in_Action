from testing import assert_equal


fn main() raises:
    var n = 42
    var m = 108
    print(n == m)  # => False
    print(n.__eq__(m))  # => False
    assert_equal(n == m, n.__eq__(m))
    assert_equal(m > n, m.__gt__(n))
    assert_equal(n + m, n.__add__(m))
    assert_equal(-n, n.__neg__())
    assert_equal(m % n, m.__mod__(n))
