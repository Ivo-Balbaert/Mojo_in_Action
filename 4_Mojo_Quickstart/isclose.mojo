from math import pi, isclose


fn main():
    print(pi)  # => 3.141592653589793
    var f1 = 3.1416
    print(isclose(pi, f1))  # => True
    var f2 = 3.14
    print(isclose(pi, f2))  # => False
    print(isclose(pi, f2, rtol=0.02))  # => True
