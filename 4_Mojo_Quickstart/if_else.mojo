fn func1():
    var x: Int = 42
    var z: Float32

    if x != 0:
        z = 1.0
    else:
        z = func2()
    print(z)  # => 1.0


fn func2() -> Float32:
    return 3.14


fn main():
    func1()
