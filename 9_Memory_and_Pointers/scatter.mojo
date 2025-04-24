from memory import UnsafePointer


fn main():
    # Allocate memory for 10 integers
    var ptr = UnsafePointer[SIMD[DType.int32, 1]].alloc(10)

    # Initialize all values to 0
    for i in range(10):
        (ptr + i).init_pointee_copy(SIMD[DType.int32, 1](0))

    # Create a SIMD vector with values to scatter
    var values = SIMD[DType.int32, 4](10, 20, 30, 40)

    # Create a SIMD vector with offsets where to scatter the values
    # We'll place these values at positions 1, 3, 6, and 9
    var offsets = SIMD[DType.int32, 4](1, 3, 6, 9)

    # Scatter the values to the specified offsets
    ptr.scatter(offsets, values)

    # Print all values to see the result
    for i in range(10):
        print(ptr[i], end=", ")
    # => 0, 10, 0, 20, 0, 0, 30, 0, 0, 40,
    # Free the allocated memory
    ptr.free()
