alias SUM = sum(10, 20, 2)  # A


fn sum(lb: Int, ub: Int, step: Int) -> Int:
    var total = 0
    for i in range(lb, ub, step):
        # print(i, end=" ")
        total += i
    return total


fn main():
    print(SUM)  # => 70
    print(sum(10, 20, 2))  # => 70
