trait Polygon:
    fn area(self) -> Int:
        ...

    fn perimeter(self) -> Int:
        ...


struct Rectangle(Polygon):
    var length: Int
    var width: Int

    fn __init__(out self, length: Int, width: Int):
        self.length = length
        self.width = width

    fn area(self) -> Int:
        return self.length * self.width

    fn perimeter(self) -> Int:
        return 2 * (self.length + self.width)


struct Square(Polygon):
    var side: Int

    fn __init__(out self, side: Int):
        self.side = side

    fn area(self) -> Int:
        return self.side**2

    fn perimeter(self) -> Int:
        return 4 * self.side


# generic function:
# fn calc_array[T: Polygon](x: T):
#     x.area()


fn main():
    var r1 = Rectangle(4, 5)
    print(r1.area())  # => 20
    print(r1.perimeter())  # => 18
    var s1 = Square(4)
    print(s1.area())  # => 16
    print(s1.perimeter())  # => 16

    # calc_array(r1)  # => The area of the rectangle is: 20
    # calc_array(s1)  # => The area of the square is: 16
