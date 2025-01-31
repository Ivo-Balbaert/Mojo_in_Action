fn main():
    n = 7
    m = 108
    if n == 7:
        n = 42
        print("inner n:", n)
        var m = 256
        print("inner m:", m)
    print("n:", n)
    print("m:", m)


# =>
# inner n: 42
# inner m: 256
# n: 42
# m: 108
