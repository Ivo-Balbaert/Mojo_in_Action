from memory import UnsafePointer


fn main():
    # Create a pointer to store multiple values
    float_ptr = UnsafePointer[Float64].alloc(6)

    # Initialize the values
    for offset in range(6):
        (float_ptr + offset).init_pointee_copy(Float64(offset))

    # Create a SIMD vector of offsets (we want to gather values at offsets 0, 2, 4 and 5)
    offsets = SIMD[DType.int32, 4](0, 2, 4, 5)

    # Use gather to load values at those offsets into a SIMD vector
    # The width parameter specifies the size of the SIMD vector
    gathered_values = float_ptr.gather[width=4](offsets)
    print(gathered_values)  # => [0.0, 2.0, 4.0, 5.0]

    # Now gathered_values contains [float_ptr[0], float_ptr[2], float_ptr[4], , float_ptr[5]]
