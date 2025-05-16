from memory import UnsafePointer


struct StrStruct:
    var ptr: UnsafePointer[String]

    fn __init__(out self, ptr: UnsafePointer[String]):
        self.ptr = ptr

    fn __is__(self, other: StrStruct) -> Bool:
        print("__is__ called", end=", ")
        return self.ptr == other.ptr

    fn __isnot__(self, other: StrStruct) -> Bool:
        print("__isnot__ called", end=", ")
        return not (self is other)


fn main():
    var s1: String = "Mojo"
    var s2: String = "Mojo"

    var strstruct1 = StrStruct(UnsafePointer(to=s1))
    var strstruct2 = StrStruct(UnsafePointer(to=s2))

    print(strstruct1 is strstruct1)
    # => __is__ called, True
    print(strstruct1 is strstruct2)
    # => __is__ called, False
    print(strstruct1 is not strstruct2)
    # => __isnot__ called, __is__ called, True
