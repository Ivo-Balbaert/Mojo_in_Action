fn add(a: Int, b: Int) -> Int:
    return a + b


fn mult(a: Int, b: Int) -> Int:
    return a * b


fn bin_op(x: Int, y: Int, fun: fn (Int, Int) -> Int) -> Int:
    return fun(x, y)


fn main():
    print(bin_op(108, 7, add))  # => 115
    print(bin_op(108, 7, mult))  # => 756
