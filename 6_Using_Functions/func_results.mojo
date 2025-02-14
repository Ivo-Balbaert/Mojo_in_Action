fn do(a: Int) -> Int:
    var b = 0
    if a < b:
        b = a
    else:
        b = 3 * a + 1
    return b


fn main():
    print(do(5))  # => 16
