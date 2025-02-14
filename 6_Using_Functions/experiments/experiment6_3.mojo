fn max(n: Int, m: Int, /) -> Int:
    return n if n > m else m


fn maxk(n: Int, m: Int, /, p: Int) -> Int:
    return n if n > m else m


fn main():
    var a: Int = 42
    var b: Int = 108

    print(max(a, b))  # => 108
    # _ = max(a, m=108)
    # => error: invalid call to 'max': positional-only argument passed as keyword operand: 'm'
    print(maxk(a, b, p=100))  # => 108
