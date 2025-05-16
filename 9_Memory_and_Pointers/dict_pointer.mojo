from collections import Dict


fn main():
    var my_dict = Dict[String, Int]()
    my_dict["key"] = 42
    var ptr = my_dict.get_ptr("key")
    if ptr:
        print(ptr[].value())
        # error: Optional[Pointer[Int, my_dict._entries._value.value]]' is not subscriptable, it does not implement the `__getitem__`/`__setitem__` methodsmojo
        # ptr[]() += 1  # Modify the value through the pointer
