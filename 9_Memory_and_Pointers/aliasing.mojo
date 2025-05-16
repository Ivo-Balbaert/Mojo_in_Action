from memory import UnsafePointer


@value
struct Simple:
    var data: Float32


fn main() raises:
    var spl = Simple(2.71)
    var ptr1 = UnsafePointer[Simple](to=spl)
    # In the following line, pointer ptr1 becomes aliased
    var ptr2 = UnsafePointer[Simple](to=spl)
    print(ptr1[].data)  # => 2.71
    ptr1[].data += 10
    print(ptr1[].data)  # => 12.71
    print(ptr2[].data)  # => 12.71

    ptr1.destroy_pointee()
    # ptr1.free()  # pt1 is a stack pointer, so freeing aborts the program
    # ptr2.free()   # => causes a crash
