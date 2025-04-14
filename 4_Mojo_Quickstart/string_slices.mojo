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
    print(s5[1:4:2])  # => bd

    var strsl = StringSlice("Mojo")
    print(strsl)  # => Mojo
    print(strsl.find("o"))  # => 1

    # slice function:
    var a = slice(5)
    var b = slice(2, 4)
    var c = slice(1, 4, 2)

    print(s5[a])  # => abcde
    print(s5[b])  # => cd
    print(s5[c])  # => bd
