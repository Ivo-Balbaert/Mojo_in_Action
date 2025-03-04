fn greet(msg: String):
    print(msg, end=" / ")


fn greet_repeat_args(count: Int, msg: String):
    for i in range(count):
        greet(msg)


fn greet_repeat[count: Int](msg: String):
    @parameter
    for i in range(count):
        greet(msg)


fn main():
    greet("How are you?")
    print()
    greet_repeat_args(3, "Hello there!")
    print()
    greet_repeat[3]("Hi there!")


# =>
# How are you? /
# Hello there! / Hello there! / Hello there! /
# Hi there! / Hi there! / Hi there! /
