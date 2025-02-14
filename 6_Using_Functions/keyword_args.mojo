fn greet(message: String, name: String, times: Int):
    for i in range(times):
        print(message + " " + name + "!!!")


fn main():
    greet(message="Hi there", name="Fred", times=1)
    # => Hi there Fred!!!
    greet(times=2, name="Vera", message="Hello")
    # =>
    # Hello Vera!!!
    # Hello Vera!!!
    greet("Hello", "Hugo", 1)  # => Hello Hugo!!!
    # greet(2, "Hugo", 1)
    # => invalid call to 'greet': argument #0 cannot be converted from 'IntLiteral' to 'String'
    # greet(times=2, "Good evening", "Fred")
    # => error: positional argument follows keyword argument
