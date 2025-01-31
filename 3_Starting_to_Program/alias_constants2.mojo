alias MAX_ITERS = 50  # 1


fn main():
    print(MAX_ITERS)  # 3A
    for i in range(MAX_ITERS):  # 3B
        print(i, " ", end="")  # => 0  1  2  3  4  5  6  ... 198 199
