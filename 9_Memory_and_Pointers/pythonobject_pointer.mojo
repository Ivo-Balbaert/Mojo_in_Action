from python import Python


def share_array():
    np = Python.import_module("numpy")
    py_list = Python.list()
    py_list.append(7)
    py_list.append(42)
    py_list.append(108)
    arr = np.array(py_list)
    ptr = arr.ctypes.data.unsafe_get_as_pointer[DType.int64]()
    for i in range(len(arr)):
        print(ptr[i], end=", ")
    # => 7, 42, 108,


fn main() raises:
    share_array()
