from collections import Optional


fn main():
    # Two ways to initialize an Optional with a value
    var opt1 = Optional(5)
    var opt2: Optional[Int] = 5
    # Two ways to initalize an Optional with no value
    var opt3 = Optional[Int]()
    var opt4: Optional[Int] = None
    var opt: Optional[String] = String("Testing")
    # print(opt4.value()) # error: .value() on empty Optional

    if opt:
        print(opt.value())  # => Testing
    if opt4:
        print(opt4.value())
    else:
        print("opt4 has value None")
    # => opt4 has value None

    var custom_greeting: Optional[String] = None
    print(custom_greeting.or_else("Hello"))  # => Hello
    custom_greeting = String("Hi")
    var d = custom_greeting.or_else("Hello")
    print(d)  # => Hi
