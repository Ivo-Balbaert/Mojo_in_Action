fn greet(message: String, *, name: String, times: Int):
    for i in range(times):
        print(message + " " + name + "!!!")


fn main():
    greet(message="Hi there", name="Fred", times=1)
    # => Hi there Fred!!!
    # greet("Hello", "Hugo", 1)  # =>
    # error: invalid call to 'greet': missing 2 required keyword-only arguments: 'name', 'times'
