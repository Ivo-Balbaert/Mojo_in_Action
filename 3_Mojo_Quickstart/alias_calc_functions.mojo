fn sum(lb: Int, ub: Int, step: Int) -> Int:
    var total = 0
    for i in range(lb, ub, step):
        print(i, end=" ")
        total += i
    return total


fn main():
    alias SUM = sum(10, 20, 2)  # 1
    print(SUM)  # 2  => 70
