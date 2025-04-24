from collections import Set


fn main():
    var set1 = Set[Int](42, 0)
    set1.add(13)
    print(len(set1))  # => 3
    set1.add(0)
    print(len(set1))  # => 3
    for item in set1:
        print(item[], end=" ")  # => 42 0 13
    print()

    var fruits = Set("orange", "pineapple", "banana", "apple")
    var i_eat = Set("pizza", "banana", "salad", "apple")
    var i_eat_fruit = fruits.intersection(i_eat)
    # var i_eat_fruit = fruits & i_eat

    print("I eat fruit:")
    for item in i_eat_fruit:  # 1B
        print(item[], end=" - ")
    # => I eat fruit:
    # => banana - apple -
