fn main() raises:
    var list = [1, 2, 3]                   # 1
    var explicit_list: ListLiteral[Int, Int, Int] = [1, 2, 3]   # 2
    var list2 = [1, 5.0, "Mojo🔥"]
    var mixed_list: ListLiteral[Int, Float64, StringLiteral] 
        = [1, 5.0, "Mojo🔥"] 

    print(mixed_list.get[0, Int]()) # => 1
    print(mixed_list.get[2, StringLiteral]())  # => Mojo🔥
    print(len(mixed_list)) # => 3
    if 1 in mixed_list:  print("I contain 1!")
    # => I contain 1!

    # Python interopera&bility:
    from python import PythonObject
   
    var py_list: PythonObject = ["cat", 2, 3.14159, 4]  # A ListLiteral
    py_list.append(5)
    print(py_list) # => ['cat', 2, 3.14159, 4, 5]