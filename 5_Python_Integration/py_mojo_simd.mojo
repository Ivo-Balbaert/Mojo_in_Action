from python import Python, PythonObject
from math import math

alias np = PythonObject
alias plot = PythonObject


fn use_python(np: PythonObject, plt: PythonObject) raises:
    var py_result = np.linspace(0, 255, 256)  # 3
    # print(py_result)
    # =>
    # [  0.   1.   2.   3.   4.   5.   ...   253. 254. 255.]
    var simd_array = SIMD[DType.float64, 256]()  # 4

    var size = int(py_result.size)  # 6
    for i in range(size):  # 7
        simd_array[i] = float(py_result[i])

    simd_array = math.cos(simd_array * (math.pi * 2.0 / 256.0))  # 8
    # print(simd_array)
    # =>
    # [1.0, 0.9996988186962042, 0.9987954562051724, 0.9972904566786902, ...
    var graph = PythonObject([])  # 9
    for i in range(size):
        graph.append(simd_array[i])
    plt.plot(graph)  # 11
    plt.show()  # 12


fn main() raises:
    try:
        np = Python.import_module("numpy")  # A
        plot = Python.import_module("matplotlib.pyplot")
        use_python(np, plot)
    except ImportError:
        print("Module numpy or matplotlib is not installed")  # B
