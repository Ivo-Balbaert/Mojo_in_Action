fn main():
    if 1.0:
        print("not 0.0")  # => not 0.0

    if not 0.0:
        print("is not 0.0")  # => is not 0.0

    if 0:  # or 0.0
        print("this does not print!")

    var str = "Mojo"
    if str:
        print("Mojo is True")  # => Mojo is True

    if "":
        print("empty is never True")
