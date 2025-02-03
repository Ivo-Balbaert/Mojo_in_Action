from memory import UnsafePointer


fn print_address(ptr: UnsafePointer):
    print(int(ptr))


def modify(a):
    # argument given by copy in Mojo `def`, but one can modify the referenced list
    a[0] = 1


def main():
    a = object([0])
    b = a  # <- the reference is copied, but not the pointed list
    print_address(UnsafePointer.address_of(a))  # => 140732671138576
    print_address(UnsafePointer.address_of(b))  # => 140732671138600

    print(a)  # => [0]
    print(b)  # => [0]
    modify(a)
    print(a)  # => [1]
    print(b)  # => [1]
