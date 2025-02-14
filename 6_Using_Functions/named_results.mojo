fn do(a: Int, out b: Int):
    b = 0  # Required to initialize 'b'
    if a < b:
        b = a
    else:
        b = 3 * a + 1


fn main():
    print(do(5))  # => 16
