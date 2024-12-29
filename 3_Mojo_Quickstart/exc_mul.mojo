fn main() raises:
    var s1 = String("hello ")
    print(s1 * 3)  # => hello hello hello
    print(s1.__mul__(3))  # => hello hello hello
