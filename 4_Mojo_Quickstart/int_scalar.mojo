from testing import assert_equal


def main():
    n = Scalar[DType.int32](42)  # 1
    m = Int32(42)  # 2 - same as var m: Int32 = 42
    assert_equal(n, m)  # 3 # Int32 is Scalar[DType.int32]
