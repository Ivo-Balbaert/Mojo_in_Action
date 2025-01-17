from memory.unsafe_pointer import UnsafePointer


def print_address(ptr: UnsafePointer):
    print(int(ptr))


def main():
    n = 1
    p1 = UnsafePointer.address_of(n)  # => 140726871503576
    print_address(p1)

    n = 2
    p2 = UnsafePointer.address_of(n)
    print_address(p2)  # => 140726871503576

    str1 = "Mojo"
    p3 = UnsafePointer.address_of(str1)  # => 140722059283008
    print_address(p3)

    str2 = str1  # 1
    p4 = UnsafePointer.address_of(str2)  # => 140722059283024
    print_address(p4)
