from python import Python


fn main() raises:
    var i: Int = 42
    var j: Int = 7

    Python.add_to_path("my_python/calculations")
    var calc = Python.import_module("compute")

    var res1 = calc.mul(i, j)
    var res2 = calc.pow(i, j)
    print(res1, res2)  # => 294 230539333248

    var np = Python.import_module("numpy")
    var arr = np.arange(7)
    print(arr)  # => [0 1 2 3 4 5 6]
