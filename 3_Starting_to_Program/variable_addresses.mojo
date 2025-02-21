from memory import UnsafePointer


fn print_address(ptr: UnsafePointer):
    print(Int(ptr))


fn main():
    n = 1
    p1 = UnsafePointer.address_of(
        n,
    )  # => 140726871503576
    print_address(p1)

    n = 2
    p2 = UnsafePointer.address_of(n)
    print_address(p2)  # => 140726871503576

    var str1: String = "Mojo"
    p3 = UnsafePointer.address_of(str1)  # => 140722059283008
    print_address(p3)

    var str2: String = str1  # 1
    p4 = UnsafePointer.address_of(str2)  # => 140722059283024
    print_address(p4)

    var lst = List[Int32](1, 2, 3, 4, 5)
    p5 = UnsafePointer.address_of(lst)  # => 140726145223176
    print_address(p5)
    lst2 = lst  # => the List is copied
    p6 = UnsafePointer.address_of(lst2)  # => 140726145223120
    print_address(p6)
