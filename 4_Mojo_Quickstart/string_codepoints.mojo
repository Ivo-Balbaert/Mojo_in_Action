# doesn't work yet in v25.1 (Feb 21 2025)
# error: 'String' value has no attribute 'codepoints'
from testing import assert_equal, assert_true

# from string import Codepoint


fn main() raises:
    var s = String("abc")
    # var iter = s.codepoints()
    # assert_equal(iter.__next__(), Codepoint.ord("a"))
    # assert_equal(iter.__next__(), Codepoint.ord("b"))
    # assert_equal(iter.__next__(), Codepoint.ord("c"))
    # assert_equal(iter.__has_next__(), False)

    var iter2 = s.char_slices()

    # var iter = s.codepoint_slices()
    # assert_true(iter.__next__() == "a")
    # assert_true(iter.__next__() == "b")
    # assert_true(iter.__next__() == "c")
    # assert_equal(iter.__has_next__(), False)

    # for cp in s.codepoint_slices():
    #     print cp

    # A visual character composed of a combining sequence of 2 codepoints.
    var s2 = String("á")
    assert_equal(s2.byte_length(), 3)

    # var iter = s.codepoints()
    # assert_equal(iter.__next__(), Codepoint.ord("a"))
    #  # U+0301 Combining Acute Accent
    # assert_equal(iter.__next__().to_u32(), 0x0301)
    # assert_equal(iter.__has_next__(), False)

    var cp: Codepoint
