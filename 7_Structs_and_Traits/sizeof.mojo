from sys.info import alignof, sizeof


struct Planet:
    var mass: Int
    var name: String


struct TestA:
    var i1: Int32
    var i2: Int8


fn main():
    print(sizeof[Int]())  # => 8
    print(sizeof[String]())  # => 24
    print(sizeof[Planet]())  # => 32
    print(alignof[Planet]())  # => 8

    print(sizeof[Int32]())  # => 4
    print(sizeof[Int8]())  # => 1
    print(sizeof[TestA]())  # => 8
    print(alignof[TestA]())  # => 4
