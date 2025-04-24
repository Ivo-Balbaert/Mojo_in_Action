fn main():
    var lst_empty = List[Int]()
    print(lst_empty.data)  # => 0x0

    # var mojo_list: List[Int] = [1, 2, 3, 4]  # Error
    # => error: cannot implicitly convert 'ListLiteral[Int, Int, Int, Int]' value to 'List[Int]'

    var lst = List[Int](8)
    var lst2 = List(8)
    var lst3 = List(7, 13, 42, 108)

    print(lst3[0])  # => 7
    print(lst3[2])  # => 42
    print(lst3[5])  # => 0
    print(lst3.data)  # => 0x1161bfe02000
    lst3[2] = 43

    print("Length list:", len(lst3))
    # => Length list: 4
    print(len(lst_empty))  # => 0

    for ix in range(len(lst3)):
        print(lst3[ix], end=" ")  # => 7 13 43 108
    print()

    print(lst_empty.capacity)  # => 0
    print(lst3.capacity)  # => 4

    lst3.append(10)
    print(len(lst3))  # => 5
    print(lst3.capacity)  # => 8

    var lst4 = List[Int](capacity=100)
    print(len(lst4))  # => 0
    print(lst4.capacity)  # => 100

    lst4.reserve(200)
    print(lst4.capacity)  # => 200

    lst3.resize(10, 0)
    print(len(lst3))  # => 10
    print(lst3.capacity)  # => 10
    for ix in range(len(lst3)):
        print(lst3[ix], end=" ")  # => 7 13 43 108 10 0 0 0 0 0
    print()

    lst3.resize(4)
    print(len(lst3))  # => 4
    print(lst3.capacity)  # => 10
    for ix in range(len(lst3)):
        print(lst3[ix], end=" ")  # => 7 13 43 108
    print()

    var lst5 = List(256, 365, 421, 508)
    lst3.extend(lst5)
    for ix in range(len(lst3)):
        print(lst3[ix], end=" ")  # => 7 13 43 108
    # => 7 13 43 108 256 365 421 508
