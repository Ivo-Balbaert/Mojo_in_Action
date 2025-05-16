from memory import UnsafePointer


struct Simple:
    var data: Float32

    fn __init__(out self, data: Float32):
        self.data = data

    fn __copyinit__(out self, other: Self):
        self.data = other.data

    fn __moveinit__(out self, owned other: Self):
        self.data = other.data


def print_pointer(p: UnsafePointer[Simple]):
    print(p)


def print_value(p: UnsafePointer[Simple]):
    # De-reference the pointer and then get the `data` field
    print(p[].data)


fn main() raises:
    # Allocate space to store one instance of `Simple`
    var ptr = UnsafePointer[Simple].alloc(1)
    # Prints hexadecimal representation of the address within `ptr`
    print_pointer(ptr)  # => 0x71373fe02000
    # Initialize the location with a Simple instance
    ptr.init_pointee_move(Simple(3.1415))
    print_value(ptr)  # => 3.1415
    # Destroy the data before trying to free the memory
    ptr.destroy_pointee()
    # Frees the memory pointed by `ptr`
    ptr.free()
