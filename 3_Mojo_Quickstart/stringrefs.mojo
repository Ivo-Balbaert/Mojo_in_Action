fn main() raises:
    var s1 = StringRef("Mojo")
    var s2 = StringRef("Mojo")
    print(s1 == s2)  # => True
    print(s1)  # => Mojo
    print(len(s1))  # => 4
    print(s1.data)  # => 0x7fe91c000010
    print(s2.data)  # => 0x7fe91c000010
    print(s1[2])  # => j

    var s = "Mojo"
    var ptr = s.unsafe_ptr()
    var str_ref = StringRef(ptr)
    print(str_ref)  # => Mojo
