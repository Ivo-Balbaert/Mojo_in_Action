from memory.unsafe_pointer import UnsafePointer


def print_pointer(ptr: UnsafePointer):
    print(int(ptr))


fn main() raises:
    var s: String = "Testing"
    p1 = UnsafePointer.address_of(s)  # => 140725543058616
    print_pointer(p1)

    s = "Mojo is 🔥"
    p2 = UnsafePointer.address_of(s)  # => 140725543058616
    print_pointer(p2)

    print(s)  # => Mojo is 🔥
