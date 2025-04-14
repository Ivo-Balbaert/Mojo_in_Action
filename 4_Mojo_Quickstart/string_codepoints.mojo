from collections.string import Codepoint
from testing import assert_equal, assert_true


fn main() raises:
    # Create a codepoint from a character
    var cp = Codepoint.ord("界")
    var cp_value = cp.to_u32()
    print(cp_value)  # => 30028
    print(chr(Int(cp_value)))  # => 界
    print(Codepoint.utf8_byte_length(cp))  # => 3

    # Check properties
    print(cp.is_ascii())  # => False
    print(cp.is_ascii_digit())  # => False

    # Convert to string
    var s = String(cp)
    print(s)  # => "界"

    var world: String = "世界"
    print(len(world))  # => 6
    print(len(world.codepoints()))  # => 2

    # Iterating over a String:
    var str = String("Mojo")
    var iter = str.codepoints()  # works also for str.codepoint_slices()
    assert_equal(iter.__next__(), Codepoint.ord("M"))
    assert_equal(iter.__next__(), Codepoint.ord("o"))
    assert_equal(iter.__next__(), Codepoint.ord("j"))
    assert_equal(iter.__next__(), Codepoint.ord("o"))
    assert_equal(iter.__has_next__(), False)

    iter = str.codepoints()
    while iter.__has_next__():
        var cp = iter.__next__()
        print(String(cp), end=" - ")  # Print each character
    # => M - o - j - o -
    print()

    for cp in str.codepoints():
        print(String(cp), end=" - ")
    # => M - o - j - o -
    print()

    for cp in str.codepoints():
        print(cp.to_u32(), end=" - ")
    # => 77 - 111 - 106 - 111 -
    print()
