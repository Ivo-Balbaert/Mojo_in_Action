fn factorial(n: Int) -> Int:
    if n == 1:
        return 1
    else:
        return n * factorial(n - 1)


fn main():
    var num: Int = 6
    print("Factorial of: ", num, " is ", factorial(num))
    # => Factorial of:  6  is  720
