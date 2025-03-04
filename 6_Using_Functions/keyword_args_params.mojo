fn greet[message: String, times: Int](name: String):
    for i in range(times):
        print(message + " " + name + "!!!")


fn main():
    greet[message="Hi there", times=1](name="Fred")
    # => Hi there Fred!!!
    greet[times=2, message="Hello"](name="Vera")  # =>
    # Hello Vera!!!
    # Hello Vera!!!
    greet["Hello", 1]("Hugo")  # => Hello Hugo!!!
