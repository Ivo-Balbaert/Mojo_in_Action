fn mult(a: Int, b: Int) -> Int:
    return a * b


fn main():
    var fn_var = mult  # A
    print(fn_var(4, 3))  # B
    # => 12
