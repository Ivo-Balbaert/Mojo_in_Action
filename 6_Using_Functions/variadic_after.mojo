fn count_args(*args: Int, name: String) -> Int:
    return len(args)


fn main():
    print(count_args(7, 13, 42, 108, name="Shakespeare"))  # => 4
    # print(count_args(7, 13, 42, 108, "Shakespeare"))  # =>
    # error: invalid call to 'count_args': missing 1 required keyword-only argument: 'name'
