from memory import UnsafePointer


def print_address(ptr: UnsafePointer):
    print(Int(ptr))  # B


fn main() raises:
    var str1: String = "Mojo"
    p1 = UnsafePointer(to=str1)
    print_address(p1)  # => 140722059283008

    p2 = p1.copy()
    print_address(p2)  # => 140722059283008
    print(p1 == p2)  # => True
    if p1 == p2:
        print("The pointers p1 and p2 are equal!")
    # => The pointers p1 and p2 are equal!
