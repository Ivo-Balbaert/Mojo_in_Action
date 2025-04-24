from memory import UnsafePointer


def print_address(ptr: UnsafePointer):
    print(Int(ptr))


fn main() raises:
    var ptr = UnsafePointer[Float64].alloc(5)  # D

    for offset in range(5):
        ptr.store(offset, 0.0)

    ptr[2] = 3.14

    for offset in range(5):
        print(ptr.load(offset), end=", ")
    # => 0.0, 0.0, 3.14, 0.0, 0.0,
    print()

    # Freeing memory
    ptr.destroy_pointee()
    ptr.free()
