from random import shuffle

fn main():
    var lst = List(7, 13, 42, 108)

    print(lst.pop())  # => 108
    print(len(lst))  # => 3
    for i in range(len(lst)):
        print(lst[i], end=" ")  # => 7 13 42
    print()

    print(lst.pop(1))  # => 13
    print(len(lst))  # => 2
    for i in range(len(lst)):
        print(lst[i], end=" ")  # => 7 42
    print()

    lst.insert(1, 13)
    for i in range(len(lst)):
        print(lst[i], end=" ")  # => 7 13 42
    print()

    print(lst.__str__())  # => [7, 13, 42]
    print(lst.__repr__())  # => [7, 13, 42]

    # for li in lst:
    #     print(li)
    # error: invalid call to 'print': could not deduce parameter 'Ts' of callee 'print'

    for li in lst:
        print(li[], end=" ")  # => 7 13 42
    print()

    if 13 in lst: print("lst contains 13")
    # => lst contains 13

    var l1 = List[Int](7, 13, 42)
    var l2 = List[Int](7, 13, 42)
    var l3 = List[Int](13, 7, 42)
    if l1 == l2: print("l1 and l2 are equal")
    # => l1 and l2 are equal
    if l1 != l3: print("l1 and l3 are not equal")
    # l1 and l3 are not equal

    var lst2 = List[Int](7, 13, 42, 108, 177, 255, 312)
    var lspl = lst2[2:6]
    for i in range(len(lspl)):
        print(lspl[i], end=" ")
    # => 42 108 177 255
    print()

    shuffle(lst2)
    for li in lst2:
        print(li[], end=" ")
    # => 42 255 177 13 108 312 7
    
    # example of a simple calculation using Lists:
    var inputs = List(1.2, 5.1, 2.1)
    var weights = List(3.1, 2.1, 8.7)
    var bias = 3
    var output = inputs[0] * weights[0] + inputs[1] * weights[1] + 
        inputs[2] * weights[2] + bias
    print(output)  # => 35.699999999999996
