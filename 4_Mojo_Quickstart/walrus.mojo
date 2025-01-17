fn main():
    if n := 3:
        print(n, "x success!")  # => 3 x success!

    if n := func():
        print(n, "x success!")  # => 3 x success!


fn func() -> Int:
    return 3
