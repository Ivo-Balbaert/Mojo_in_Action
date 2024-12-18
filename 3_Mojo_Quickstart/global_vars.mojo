var n = 42
var str = "Hello from Mojo!"


fn main():
    print("n =", n)  # => n = 42
    print("str =", str)  # => str = Hello from Mojo!
    another_func()


fn another_func():
    print("n =", n)  # => n = 42
