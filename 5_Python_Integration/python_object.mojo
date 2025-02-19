from python import Python, PythonObject

alias int = PythonObject
alias str = PythonObject
alias float = PythonObject


fn main() raises:
    var x: int = 2
    print(x**100)  # => 1267650600228229401496703205376
    var y: Int = 2
    print(y**100)  # => 0

    var f: float = 0.6
    print(f.hex())  # => 0x1.3333333333333p-1
    var s1: str = "xxbaaa"
    print(s1.upper())  # => XXBAAA

    var s2: String = s1.__str__()
    print(s2)  # => xxbaaa

    var py_list = Python.evaluate("[42, 'cat', 3.14159]")
    for py_obj in py_list:
        print(py_obj, end=" / ")
    # => 42 / cat / 3.14159 /
    print()

    py_list = Python.list()
    py_list.append(7)
    py_list.append("forty_two")
    py_list.append(2.718)
    py_list.append(True)
    print(py_list)  # => [7, 'forty_two', 2.718, True]

    var py_dict = Python.evaluate("{'a': 1, 'b': 2.71828, 'c': 'sushi'}")
    for py_key in py_dict:
        print(py_key, py_dict[py_key], end=" / ")
    # => a 1 / b 2.71828 / c sushi /
