fn main():
    var arr = InlineArray[Int, 4](3, 7, 13, 42)
    var ptr = arr.unsafe_ptr()
    for ix in range(len(arr)):
        print(ptr[ix], end=", ")
    # => 3, 7, 13, 42,
