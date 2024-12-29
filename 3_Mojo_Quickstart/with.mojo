def func1():
    pass


fn main() raises:
    with open("my_file.txt", "r") as file:
        print(file.read())  # => This is the contents of my_file.
        func1()
    # code continues after 'with context'
