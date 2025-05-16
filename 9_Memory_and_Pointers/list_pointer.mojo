from memory import UnsafePointer


def print_address(ptr: UnsafePointer):
    print(Int(ptr))


fn main() raises:
    var lst = List(7, 13, 42, 108)
    print(lst.data)  # =>0x312f7fe02000

    var lptr = lst.unsafe_ptr()
    print_address(lptr)  # => 954080078618624
    lptr[2] = 43
    for offset in range(len(lst)):
        print((lptr + offset)[], end=", ")
    #    print(lptr[offset], end=", ")  #C
    # => 7, 13, 43, 108,

    lptr.destroy_pointee()  # E
    lptr.free()  # E
