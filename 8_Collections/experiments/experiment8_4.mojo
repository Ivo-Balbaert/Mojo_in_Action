from utils import Variant

alias IntOrString = Variant[Int, String]


fn to_string(x: IntOrString) -> String:
    if x.isa[String]():
        return x[String]
    return String(x[Int])


fn main() raises:
    var an_int = IntOrString(4)
    var a_string = IntOrString(String("I'm a string!"))
    var who_knows = IntOrString(0)

    print(to_string(an_int))  # =>  4
    print(to_string(a_string))  # => I'm a string!
    print(to_string(who_knows))  # => 0
