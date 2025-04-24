from memory import UnsafePointer
from sys.info import sizeof


def print_address(ptr: UnsafePointer):
    print(Int(ptr))


fn main() raises:
    var ptr = UnsafePointer[String].alloc(7)
    print_address(ptr)  # => 127187938189312

    var value = "Mojo0"
    ptr.init_pointee_copy(value)
    print_address(ptr)  # => 127187938189312
    print(ptr[])  # => "Mojo0"
    print(ptr[0])  # => "Mojo0"

    ptr[1] = "Mojo1"
    print(ptr[1])  # => "Mojo1"
    ptr[6] = "Mojo6"
    print(ptr[6])  # => "Mojo6"
    ptr[100] = "Mojo6"  # no bounds checking

    print(sizeof[String]())  # => 24
    print_address(ptr)  # => 127187938189312
    print_address(ptr + 1)  # => 127187938189336
    print_address(ptr + 2)  # => 127187938189360
    print_address(ptr + 5)  # => 127187938189432
    print_address(ptr.offset(1))  # => 127187938189336
    print_address(ptr.offset(2))  # => 127187938189360
    print_address(ptr.offset(5))  # => 127187938189432
    ptr += 1
    print(ptr[])  # => Mojo1
    ptr -= 1
    print(ptr[])  # => Mojo0

    # Set the values
    for offset in range(7):
        (ptr + offset).init_pointee_copy(String("Mojo" + String(offset)))

    # Print out the values
    for offset in range(7):
        print(ptr[offset], end=", ")
    # => Mojo0, Mojo1, Mojo2, Mojo3, Mojo4, Mojo5, Mojo6,
    print()

    # Freeing memory:
    ptr.destroy_pointee()
    ptr.free()
