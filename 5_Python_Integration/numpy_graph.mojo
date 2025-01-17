from python import Python, PythonObject

alias np = PythonObject
alias plot = PythonObject


fn use_numpy(np: PythonObject) raises:
    var arr1 = np.array([1, 2, 3])
    print(arr1)  # => [1  2  3]

    var arr2 = np.ndarray([5])  # C
    print(arr2)
    # => [4.67092872e-310 0.00000000e+000 0.00000000e+000 4.67150278e-310 2.37151510e-322]
    arr2 = "this will work fine"  # D Python is loosely typed, so:
    print(arr2)  # => this will work fine

    var arr3 = np.arange(15).reshape(3, 5)  # E
    print(arr3)
    # =>
    # [[ 0  1  2  3  4]
    # [ 5  6  7  8  9]
    # [10 11 12 13 14]]
    print(arr3.shape)  # => (3, 5)


fn use_matplotlib(np: PythonObject, plot: PythonObject) raises:
    var arr1 = np.array([1, 2, 3, 4])
    var arr2 = np.array([30, 20, 50, 60])
    plot.plot(arr1, arr2)
    plot.show()


fn main() raises:
    try:
        np = Python.import_module("numpy")  # A
        plot = Python.import_module("matplotlib.pyplot")
        use_numpy(np)
        use_matplotlib(np, plot)
    except ImportError:
        print("Module numpy or matplotlib is not installed")  # B
