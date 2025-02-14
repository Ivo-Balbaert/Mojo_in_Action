fn sum_mut(mut a: Int, b: Int) -> Int:
    a += 1
    return a + b


fn main():
    var a: Int = 42
    var b: Int = 108

    print(sum_mut(a, b))  # => 151
    print(a, b)  # => 43, 108


# remove mut: error: expression must be mutable for in-place operator destination
