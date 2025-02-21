from utils import StringSlice


fn main() raises:
    var s4: String = "Mojo is 🔥"
    print(s4[8:12])  # => 🔥

    var s5 = String("abcde")
    print(s5[2:4])  # => cd
    print(s5[1:])  # => bcde
    print(s5[:5])  # => abcde
    print(s5[: len(s5)])  # => abcde
    print(s5[:-1])  # => abcd
    print(s5[::2])  # => ace

    var strsl = StringSlice("Mojo")
    print(strsl)  # => Mojo
    print(strsl.find("o"))  # => 1

    var strsl2 = StringSlice("108")
    # print(strsl2.atol())µ
    # StringSlice[StaticConstantOrigin]' value has no attribute 'atol'
