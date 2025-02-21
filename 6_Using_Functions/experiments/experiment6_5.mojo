fn shout(text: String) -> String:
    return text.upper()


fn main():
    print(shout("Hello"))  # => HELLO
    # Assigning function to a variable
    var yell = shout
    # Type of yell:
    # var yell: fn(text: String) -> String
    print(yell("Hello"))  # => HELLO
