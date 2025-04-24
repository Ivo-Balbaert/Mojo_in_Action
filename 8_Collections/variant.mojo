from utils import Variant

alias IntOrString = Variant[Int, String]


fn print_variant(value: Variant[Int, Float64]):
    if value.isa[Int]():
        print(value[Int], end=" / ")
    else:
        print(value[Float64], end=" / ")


fn main() raises:
    var v1 = Variant[Int, Float64](1)
    # var v2 = Variant[Int, Float64]("Mojo")
    # => error: constraint failed: not a union element type
    var v3 = IntOrString(String("Mojo"))

    # print(v1)
    # => invalid call to 'print': could not deduce parameter 'Ts' of callee 'print'
    print(v1[Int])  # => 1
    if v3.isa[String]():
        print(v3[String])  # => Mojo

    v1.set[Int](12)
    print(v1[Int])  # => 12
    v1.set[Float64](3.14)
    print(v1[Float64])  # => 3.14
    # v1.set[String]("Mojo")
    # => error: constraint failed: not a union element type

    if v1.is_type_supported[Float64]():
        v1 = Float64(2.71)
    print(v1[Float64])  # => 2.71

    # A List of Variant types:
    var a = List[Variant[Int, Float64]](1, 2.5, 3, 4.5, 5)
    var b = List[Variant[Int, StringLiteral]](1, "Hi", 3, "Hello", 5)
    for i in range(len(a)):
        print_variant(a[i])
    # => 1 / 2.5 / 3 / 4.5 / 5 /
