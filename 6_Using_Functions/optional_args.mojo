fn greet(name: String, times: Int = 1, message: String = "Hi there"):
    for i in range(times):
        print(message + " " + name + "!!!")


fn main():
    greet("Olga")  # => Hi there Olga!!!
    greet("Chris", 2, "Hi")  # =>
    # Hi Chris!!!
    # Hi Chris!!!
