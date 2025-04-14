from collections.string import Codepoint
from testing import assert_equal, assert_true


fn main() raises:
    var world: String = "世界"

    # Iterating over a String:
    var iter = world.codepoints()  # works also for str.codepoint_slices()
    assert_equal(iter.__next__(), Codepoint.ord("世"))
    assert_equal(iter.__next__(), Codepoint.ord("界"))
    assert_equal(iter.__has_next__(), False)

    for cp in world.codepoints():
        print(String(cp), end=" - ")
    # => 世 - 界 -
    print()

    for cp in world.codepoints():
        print(cp.to_u32(), end=" - ")
    # => 19990 - 30028 -
    print()

    for cp in world.codepoint_slices():
        print(String(cp), end=" - ")
    # => 世 - 界 -
    print()
