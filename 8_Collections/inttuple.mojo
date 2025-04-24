from layout import IntTuple
from layout.int_tuple import compact_order, flatten, size


fn main():
    var shape = IntTuple(2, IntTuple(3, 4), 5)
    print(shape)  # => (2, (3, 4), 5)
    var flat = flatten(shape)  # Flatten a nested tuple
    print(flat)  # => (2, 3, 4, 5)
    # Calculate total size (product of all elements)
    var total_size = size(shape)
    print(total_size)  # => 120

    var inttup = IntTuple(1, IntTuple(2, 3), 4)
    shape.append(inttup)
    print(shape)  # => (2, (3, 4), 5, (1, (2, 3), 4))
    print(len(shape))  # => 4

    # Create compact strides for a given shape and order (??)
    var order = IntTuple(1, IntTuple(2, 3), 4)
    var strides = compact_order(shape, order)
    print(strides)  # => (1, (2, 6), 24)
