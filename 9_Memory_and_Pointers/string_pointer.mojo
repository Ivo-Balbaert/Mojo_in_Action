from memory import UnsafePointer


def print_address(ptr: UnsafePointer):
    print(Int(ptr))


fn main() raises:
    var str1: String = "The sun is shining on the river."
    var sptr = str1.unsafe_ptr()
    print_address(sptr)  # => 92168922341376
    print(sptr[])  # => 84     #A
    print(sptr[2])  # => 101    #B

    for offset in range(len(str1)):
        print((sptr + offset)[], end=", ")
    #    print(sptr[offset], end=", ")  #C
    # => 84, 104, 101, 32, 115, 117, 110, 32, ...

    sptr[4] = ord("S")  # D
    print(str1)
    # => The Sun is shining on the river.

    sptr.destroy_pointee()  # E
    sptr.free()  # E
