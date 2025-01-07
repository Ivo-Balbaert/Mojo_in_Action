fn add(a: object, b: object) raises -> object:
    return a + b


fn main() raises:
    var obj = object("hello world")  # a string
    obj = object([])  # change to a list
    obj.append(object(123))  # a list of objects
    obj.append(object("hello world"))
    print(obj)  # => [123, 'hello world']

    print(add(1, 2.5))  # => 3.5
