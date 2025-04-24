fn main():
    var arr1 = InlineArray[Int, 4](8)
    # Create array of 3 integers
    var arr2 = InlineArray[Int, 3](1, 2, 3)
    # Create array filled with value
    var filled = InlineArray[Int, 5](fill=42)

    # Access elements
    print(arr1[0])  # => 8
    print(arr1[1])  # => 8
    arr1[1] = 13
    print(arr1[1])  # => 13
    print(arr1.unsafe_get(2))  # => 8
    print(len(arr1))  # => 4
    # print(arr1[4])  # =>
    # Assert Error: InlineArray index out of bounds:
    # index (4) valid range: -4 <= index < 4
