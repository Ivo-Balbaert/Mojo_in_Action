from testing import assert_equal


fn main() raises:
    var n = 42
    var m = 108
    print(n == m)  # 1 => False
    print(n.__eq__(m))  # 2 => False
    assert_equal(m >= n, m.__gt__(n))
    assert_equal(n + m, n.__add__(m))  # 3
    assert_equal(-n, n.__neg__())
    assert_equal(m % n, m.__mod__(n))
