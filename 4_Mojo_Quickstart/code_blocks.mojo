def loop():
    for x in range(5):
        if x % 2 == 0:
            print(x, end=" - ")


fn main() raises:
    loop()  # => 0 - 2 - 4 -
    print()

    long_text = "This is a long line of text that is easier to read if"
                " it is broken up across two lines instead of one line."
    print(long_text)


