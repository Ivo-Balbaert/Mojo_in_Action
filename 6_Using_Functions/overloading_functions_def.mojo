def add(x, y):
    return x + y


fn main() raises:
    print(add(1, 2))  # => 3
    print(add(42, 3.14))  # => 45.14
    print(add("Hi ", "Suzy!"))  # => 'Hi Suzy!'
    # print(add(1, 2, 4))  # =>
    # error: invalid call to 'add': expected at most 2 positional arguments, got 3
    # print(add(10, 20, 30, 40, 50))  # =>
    # invalid call to 'add': expected at most 2 positional arguments, got 5
    # print(add())  # =>
    # error: invalid call to 'add': missing 2 required positional arguments: 'x', 'y'
    # print(add(3.14, 42))  # => error: no matching function in call to 'add'
    # print(add(1, "Hi"))  # =>
    # TypeError: not a valid arithmetic type
    # print(add(False, "Hi"))  # =>
    # TypeError: not a valid arithmetic type
