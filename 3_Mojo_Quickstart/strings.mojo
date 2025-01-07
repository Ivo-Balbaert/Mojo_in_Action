from testing import assert_equal


fn main() raises:
    var world: String = "世界"
    # same as:  var world = String("世界") or var world = str("世界")
    print(len(world))  # => 6, same as world.__len__()

    print(ord("a"))  # => 97
    print(chr(97))  # => a
    print(ord("🔥"))  # =>    128293
    print(chr(128293))  # => 🔥
    print(isdigit(ord("8")))  # => True
    print(isdigit(ord("a")))  # => False

    var sn: String = str(42)
    var sn1 = "108"
    var sn2 = str(108)
    assert_equal(sn1, sn2)
    var sn3 = str("")

    # String slices:
    var s4: String = "Mojo is 🔥"
    print(s4[0])  # => M
    print(ord(s4[0]))  # => 77
    print(s4[7])  # => space character
    print(ord(s4[7]))  # => 32
    print(len(s4))  # => 12
    print(s4[8])  # => �
    print(s4[8:12])  # => 🔥

    var s5 = String("abcde")
    print(s5[2:4])  # => cd
    print(s5[1:])  # => bcde
    print(s5[:5])  # => abcde
    print(s5[:-1])  # => abcd
    print(s5[::2])  # => ace

    # s5[3] = "x"   # => expression must be mutable in assignment
