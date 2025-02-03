def modify(a):
    a[0] = 1


def main():
    a = object([0])
    b = a

    print(a)  # => [0]
    print(b)  # => [0]
    modify(a)
    print(a)  # => [1]
    print(b)  # => [1]
