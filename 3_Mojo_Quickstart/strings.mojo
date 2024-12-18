from testing import assert_equal


fn main() raises:
    var world: String = "世界"
    # same as:  var world = String("世界")
    print(len(world))  # => 6, same as world.__len__()

    var sn: String = str(42)
    var sn1 = "108"
    var sn2 = str(108)
    assert_equal(sn1, sn2)

    var s1 = "hello "
    var s2 = "world"
    var s3 = s1 + s2  # equivalent to s1.__add__(s2)
    print(s3)  # => hello world

    var s: String = "Mojo is 🔥"
    print(s[0])  # => M
    print(ord(s[0]))  # => 77
    print(s[7])  # => space character
    print(ord(s[7]))  # => 32
    print(len(s))  # => 12
    print(s[8])  # => �
    print(s[8:12])  # => 🔥
