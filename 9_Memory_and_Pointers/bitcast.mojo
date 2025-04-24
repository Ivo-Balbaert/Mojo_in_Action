from memory import UnsafePointer


fn main():
    var n: Int = 42  # x must be mutable to pass as a reference
    var ptr = UnsafePointer[Int].address_of(n)

    # Casting type of Pointer with bitcast:
    var uptr: UnsafePointer[UInt8] = ptr.bitcast[UInt8]()
