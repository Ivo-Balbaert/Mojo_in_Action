fn add_ints[IntType: Intable](a: IntType, b: IntType) -> Int:
    return Int(a) + Int(b)


fn main():
    print(add_ints[Int](3, 4))  # => 7
    print(add_ints[UInt8](3, 4))  # => 7
    print(add_ints[Int16](3, 4))  # => 7
