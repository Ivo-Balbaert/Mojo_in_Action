from python import Python
from memory import UnsafePointer


fn main() raises:
    var py = Python()  # A

    var x = py.eval("if 108 >= 42: print('ok')")  # => ok
    print(x)  # => True
    var t = py.eval("108 < 42")
    print(t)  # => True
    print(py.eval("108 >< 42"))
    # =>
    #   File "<string>", line 1
    # 108 >< 42
    #      ^
    # SyntaxError: invalid syntax
    # False
    var y = py.evaluate("42 * 7")  # B
    print(y)  # => 294
    var pystr = py.evaluate("'This string is built' + ' inside Python'")
    print(pystr)  # => This string is built inside Python
    var len_py = Python.evaluate("len")  # C
    print(len_py("ABCDEFG"))  # => 7

    var w: Int = 42
    var pybt = Python.import_module("builtins")  # D
    pybt.print("This uses the Python print function")
    # => This uses the Python print function
    pybt.print("The answer is", w)  # E
    # => The answer is 42
    pybt.print(pybt.type(w))  # => <class 'int'>
    pybt.print(pybt.id(w))  # => 139804414609064
    print(UnsafePointer.address_of(w))  # => 0x7ffcda444ea0

    var foods = Python.list()
    foods.append("carrot")
    foods.append("chicken")
    print(foods)  # => ['carrot', 'chicken']
    print(Python.type(foods))  # => <class 'list'>
