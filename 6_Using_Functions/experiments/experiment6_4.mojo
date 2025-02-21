fn add(x: Int, y: Int) -> Int:
    print("version 1: ", end="")
    return x + y


fn add(x: Int, y: Int, z: Int) -> Int:
    print("version 2: ", end="")
    return x + y + z


fn add(*values: Int) -> Int:
    print("version 3: ", end="")
    var sum: Int = 0
    for value in values:
        sum += value
    return sum


fn add(x: Int, f: Float16) -> Int:
    print("version 4: ", end="")
    return Int(x + f)


fn add(x: String, y: String) -> String:
    print("version 5: ", end="")
    return x + y


def add(a, b):
    print("version 6: ", end="")
    return a + b


fn main() raises:
    print(add(1, 2))  # => version 1: 3
    print(add(1, 2, 4))  # => version 2: 7
    print(add(10, 20, 30, 40, 50))  # => version 3: 150
    print(add())  # => version 3: 0
    print(add(42, 3.14))  # => version 4: 45
    # print(add(3.14, 42))  # => error: no matching function in call to 'add'
    print(add(String("Hi "), String("Suzy!")))  # => version 5: Hi Suzy!
    # print(add(1, "Hi"))  #  => error: no matching function in call to 'add'
    # print(add(False, "Hi"))  #  => error: no matching function in call to 'add'
    print(add(String(1), " Hi"))  #  => version 5: 1 Hi
    print(add(String(False), " Hi"))  #  => version 5: False Hi
    print(add(2.1, 3.5))  # => version 6: 5.6
