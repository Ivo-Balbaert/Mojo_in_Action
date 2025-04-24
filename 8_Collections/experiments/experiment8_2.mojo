from sys.info import sizeof


fn main():
    var lst = List(7, 13, 42, 108)
    var lst2 = lst  # deep copy
    lst[0] = 99
    print(lst2[0])  # => 7

    # The copy method also performs a deep copy:
    var lst3 = lst.copy()
    lst[0] = 100
    for i in range(len(lst3)):
        print(lst3[i], end=" ")  # => 99 13 42 108
    print()

    for i in range(len(lst)):
        print(lst[i], end=" ")
    print()  # => 100 13 42 108

    lst.reverse()
    for i in range(len(lst)):
        print(lst[i], end=" ")
    print()  # => 108 42 13 100

    lst.swap_elements(0, 3)
    for i in range(len(lst)):
        print(lst[i], end=" ")
    print()  # => 100 42 13 108

    print(lst.byte_length())  # => 32
    print(len(lst))  # => 4
    print(sizeof[Int]())  # => 8
