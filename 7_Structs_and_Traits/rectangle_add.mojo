struct Rectangle:
    var length: Float32
    var width: Float32

    fn __init__(out self, length: Float32, width: Float32):
        self.length = length
        self.width = width

    fn area(self) -> Float32:
        return self.length * self.width

    fn perimeter(self) -> Float32:
        return 2 * (self.length + self.width)

    fn __add__(self, rhs: Rectangle) -> Rectangle:
        return Rectangle(self.length + rhs.length, self.width + rhs.width)


fn main():
    var square = Rectangle(10.0, 10.0)
    var rect = Rectangle(5.0, 7.0)
    print("The area of rect is:", rect.area())
    # => The area of rect is: 35.0

    var rect2 = square + rect
    print("The area of rect2 is:", rect2.area())
    # => The area of rect2 is: 255.0
