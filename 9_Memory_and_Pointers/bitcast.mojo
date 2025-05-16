from memory import UnsafePointer, bitcast


def print_address(ptr: UnsafePointer):
    print(Int(ptr))


fn main() raises:
    one = SIMD[DType.uint32, 1](4631)
    many = bitcast[DType.uint8, 4](one)
    print(one, many)  # => 4631 [23, 18, 0, 0]

    var n: Int = 42
    var ptr = UnsafePointer[Int](to=n)

    # Casting type of Pointer with bitcast:
    var uptr: UnsafePointer[UInt8] = ptr.bitcast[UInt8]()
    print_address(ptr)  # => 140736294708312
    print_address(uptr)  # => 140736294708312
