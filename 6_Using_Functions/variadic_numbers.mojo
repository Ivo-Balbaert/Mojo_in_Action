fn product(*values: Int) -> Int:
    var product: Int = 1
    for value in values:
        product *= value
    return product


fn main():
    print(product(1, 2, 3))  # => 6
    print(product(1, 2, 3, 4, 5, 6, 7))  # => 5040
    print(product(1))  # => 1
    print(product())  # => 1
