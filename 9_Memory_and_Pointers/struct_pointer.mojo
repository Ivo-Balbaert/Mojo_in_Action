from memory import UnsafePointer


struct Number:
    var ptr_value: UnsafePointer[Int]

    fn __init__(out self, value: Int):
        print("in init")
        self.ptr_value = UnsafePointer[Int].alloc(1)  # 1
        self.ptr_value.init_pointee_move(value)  # 2

    fn __copyinit__(out self, other: Self):
        self.ptr_value = UnsafePointer[Int].alloc(1)
        self.ptr_value.init_pointee_copy(other.value())

    fn __moveinit__(out self, owned other: Self):
        self.ptr_value = UnsafePointer[Int].alloc(1)  # not necessary (?)
        self.ptr_value = other.ptr_value
        other.ptr_value = UnsafePointer[Int]()  # empty value

    fn value(self) -> Int:
        return self.ptr_value[]  # 3

    fn change_value(self, value: Int):
        self.ptr_value.init_pointee_move(value)

    fn __del__(owned self):
        self.ptr_value.destroy_pointee()
        self.ptr_value.free()


fn main():
    var num = Number(42)
    print("num:", num.value())  # => num: 42

    # copyinit:
    var other_num: Number = num  # Calling __copyinit__ on other_num
    print("other_num after copy:", other_num.value())  # => 42
    other_num.change_value(84)
    print("other_num after change:", other_num.value())  # => 84
    print("num after copy:", num.value())  # => 42

    # moveinit
    var other_num2: Number = num^  # Moving
    print(
        "other_num2 after move:", other_num2.value()
    )  # => other_num2 after move: 42
    other_num2.change_value(84)
    print(
        "other_num2 after change:", other_num2.value()
    )  # => other_num2 after move: 84
    # Uncommenting below line results in compiler error as `num` is no longer initialized
    # print("num after copy:", num.value())
