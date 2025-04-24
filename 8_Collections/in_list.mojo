struct LiStruct:
    var ints: List[Int]

    fn __init__(out self, ints: List[Int]):
        self.ints = ints

    fn __contains__(self, value: Int) -> Bool:
        for i in self.ints:
            if i[] == value:
                return True
        return False


fn main():
    var struct1 = LiStruct(List(1, 2, 3))
    print(1 in struct1)  # => True
    print(5 in struct1)  # => False
    print(struct1.__contains__(5))  # => False
