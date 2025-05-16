fn mul_ref(ref a: Int, ref [_]b: Int) -> Int:
    # a = a + 1   # => error: expression must be mutable in assignment
    return a * b


fn main():
    var a = 2
    var b = 3
    print(mul_ref(a, b))  # => 6
