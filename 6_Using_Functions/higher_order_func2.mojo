fn create_mult(x: Int) -> fn (y: Int) escaping -> Int:
    fn mult(y: Int) -> Int:
        return x * y

    return mult


fn main():
    mult_15 = create_mult(15)
    print(mult_15(2))  # => 30
    print(mult_15(10))  # => 150
