fn update(u: Int):  # read is optional
    # u = 42  # => error: expression must be mutable in assignment
    print(u)  # => 13


fn main() raises:
    var a = 13
    update(a)
