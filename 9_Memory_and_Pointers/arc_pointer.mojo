from memory import ArcPointer


@value
struct Person:
    var age: UInt8


fn main() raises:
    var pn1 = Person(69)
    var arcp = ArcPointer(pn1)
    # Reference count is 1
    var arcp2 = arcp  # Reference count increased with this copy
    # Count is now 2 as `arcp` is copied to new `ArcPointer` called `arcp2`
    print(arcp[].age)  # => 69
    arcp[].age += 10
    # Count is now 1 as `arcp` is cleared as the above line its last use
    print(arcp2[].age)  # => 79
    # Value is cleared from memory
