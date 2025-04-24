from memory import UnsafePointer


fn main():
    var ptr: UnsafePointer[Int]
    ptr = UnsafePointer[Int]()
    var n = 42
    var ptr1 = UnsafePointer[Int].address_of(n)
    if ptr:
        print("ptr is not a null pointer", end=", ")
        var value = ptr[]
        print("its value is:", value)
    else:
        print("ptr is a null pointer")
    # => ptr is a null pointer

    if ptr1:
        print("ptr1 is not a null pointer", end=", ")
        var value = ptr1[]
        print("its value is:", value)
    else:
        print("ptr1 is a null pointer")
    # => This is a null pointer
