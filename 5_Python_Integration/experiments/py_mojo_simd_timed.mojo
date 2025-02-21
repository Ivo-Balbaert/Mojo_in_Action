from python import Python, PythonObject
from math import math
from time import perf_counter_ns

alias np = PythonObject
alias plot = PythonObject
alias tm = PythonObject
alias mat = PythonObject


fn use_python(
    np: PythonObject, plt: PythonObject, tm: PythonObject, mat: PythonObject
) raises:
    var py_result = np.linspace(0, 255, 256)
    # print(py_result)
    # =>
    # [  0.   1.   2.   3.   4.   5.   ...   253. 254. 255.]
    var simd_array = SIMD[DType.float64, 256]()

    var size = Int(py_result.size)
    for i in range(size):
        simd_array[i] = float(py_result[i])

    # Calculate the graph in Python
    start = tm.time()
    for i in range(size):
        py_result[i] = mat.cos(py_result[i] * (mat.pi * 2.0 / 256.0))
    end = tm.time()
    print((end - start) * 1000, "ms - with for loop")  # => 2.48 ms

    # Calculate the graph in Mojo
    startm = perf_counter_ns()
    simd_array = math.cos(simd_array * (math.pi * 2.0 / 256.0))
    endm = perf_counter_ns()
    print((endm - startm) / 1e6, "ms")  # => 0.00328 ms

    # print(simd_array)
    # =>
    # [1.0, 0.9996988186962042, 0.9987954562051724, 0.9972904566786902, ...
    var graph = PythonObject([])
    for i in range(size):
        graph.append(simd_array[i])
    plt.plot(graph)  # 11
    plt.show()  # 12


fn main() raises:
    try:
        np = Python.import_module("numpy")  # A
        plot = Python.import_module("matplotlib.pyplot")
        tm = Python.import_module("time")
        mat = Python.import_module("math")
        use_python(np, plot, tm, mat)
    except ImportError:
        print("Module numpy or matplotlib is not installed")  # B
