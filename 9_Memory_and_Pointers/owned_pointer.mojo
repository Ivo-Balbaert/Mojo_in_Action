from memory import OwnedPointer


@value
struct Person:
    var age: UInt8


fn main() raises:
    var pn1 = Person(69)
    # Construct a Pointer out of an existing value
    o_ptr = OwnedPointer(pn1)
    print(o_ptr[].age)  # => 69

    # pn1.age = 70
    # print(o_ptr[].age)  # => 69  ??

    # o_ptr2 = o_ptr
    # => error: OwnedPointer[Person]' is not copyable because it has no '__copyinit__'

    # OwnedPointer can be moved
    var pn2 = Person(10)
    o_ptr = OwnedPointer(pn2)
    print(o_ptr[].age)  # => 10

    # freeing the pointer:
    # o_ptr.__del__()
    # => error: OwnedPointer[Person]' is not copyable because it has no '__copyinit__'
