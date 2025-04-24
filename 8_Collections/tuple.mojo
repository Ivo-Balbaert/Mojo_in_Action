from utils import StaticTuple


@value
struct Coord:
    var x: Int
    var y: Int
    var z: Int


fn full_name() -> (String, String):
    var first_name = String("Alice")
    var last_name = String("Doe")
    return (first_name, last_name)


fn main():
    var tp: Tuple[Int, StringLiteral, Float64] = (42, "Mojo", 3.14)
    var tp_alt: (Int, StringLiteral, Float64) = (42, "Mojo", 3.14)
    var tp2 = (42, "Mojo", 3.14)
    var tp3 = Tuple(1, 2, 3)
    var tp4 = (1, 2, 3)  # type is inferred because of ()
    var tp5 = (Coord(5, 10, 15), 5.5, False)

    print(tp[0])  # => 42
    tp[0] = 10
    print(tp[0])  # => 10

    print(len(tp))  # => 3
    if "Mojo" in tp:
        print("tp contains Mojo")
    var emp = ()
    print(len(emp))  # => 0

    # Tricks:
    a, b, c = tp
    print(a, b, c)  # => 42 Mojo 3.14
    a, _, c = tp
    print(a, c)  # => 42 3.14

    var u: Int = 2
    var v: Int = 3
    print(u, v)  # => 2 3
    (u, v) = (v, u)
    print(u, v)  # => 3 2

    s1, s2 = full_name()
    print(s1, s2)  # => Alice Doe
    print(full_name()[1])  # => Doe

    # StaticTuple
    var st = StaticTuple[Int, 5](2, 7, 12, 42, 108)
    print(st[2])  # => 12
    print(len(st))  # => 5
