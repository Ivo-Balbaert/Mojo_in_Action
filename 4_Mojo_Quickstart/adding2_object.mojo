def add(x: object, y: object) -> object:
    return x + y


# fn main() raises:
def main():
    z = add(3, 5)
    print(z)  # => 8

    # z = add(3, "Mojo")  # uncomment this line to see the run-time error
    # Unhandled exception caught during execution: TypeError: not a valid arithmetic type
    # mojo: error: execution exited with a non-zero result: 1

    # print(add("Mojo", " Universe"))  # => 'Mojo Universe'
