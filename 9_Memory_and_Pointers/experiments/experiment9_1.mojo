from memory import UnsafePointer


def print_address(ptr: UnsafePointer):
    print(Int(ptr))


fn main() raises:
    var ptr = UnsafePointer[String].alloc(7)
    print_address(ptr)  # => 90534687285248

    var value = "Mojo"
    ptr.init_pointee_copy(value)
    print_address(ptr)  # => 90534687285248
    print(ptr[])  # => "Mojo"

    ptr.destroy_pointee()
    ptr.free()
