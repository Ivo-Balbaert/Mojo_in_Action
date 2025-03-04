# start with: mojo -D calc_sum=True alias_calc_condition.mojo
from sys import is_defined

alias lb = 10
# alias lb = 50
alias ub = 20
alias step = 2
alias SUM = sum(lb, ub, step) if lb < ub else 0

# alias SUM = sum(lb, ub, step) if is_defined["calc_sum"]() else 0  # A


fn sum(lb: Int, ub: Int, step: Int) -> Int:
    var total = 0
    for i in range(lb, ub, step):
        # print(i, end=" ")
        total += i
    return total


fn main():
    print(SUM)  # => 70
