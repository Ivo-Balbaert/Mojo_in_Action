from memory import UnsafePointer


# @value    # replaces __init__, __copyinit__ and __moveinit__
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
    try:
        ptr.init_pointee_move(Simple(3.1415))
        print_pointer(ptr)  # => 0x53bf7fe0200
        print_value(ptr)  # => 3.1415
    except:
        print("A problem in the print pointer or print value method!")
    finally:
        # Destroy the value even in case of exception
        ptr.destroy_pointee()
        # Free the memory even in case of exception
        ptr.free()
