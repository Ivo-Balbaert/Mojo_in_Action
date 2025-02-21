fn shout(text: String) -> String:
    return text.upper()


fn whisper(text: String) -> String:
    return text.lower()


fn greet(str: String, fun: fn (text: String) -> String):
    greeting = fun(str)
    print(greeting)


fn main():
    var str = "Hi There!"
    greet(str, shout)
    # => HI THERE!
    greet(str, whisper)
    # => hi there!
