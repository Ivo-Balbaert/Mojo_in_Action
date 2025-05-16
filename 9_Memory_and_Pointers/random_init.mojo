from random import seed, rand, randint, randn
from memory import memset_zero, UnsafePointer


fn main():
    var p1 = UnsafePointer[UInt8].alloc(8)
    var p2 = UnsafePointer[Float32].alloc(8)
    memset_zero(p1, 8)
    memset_zero(p2, 8)
    print("values at p1:", p1.load[width=8](0))
    # => values at p1: [0, 0, 0, 0, 0, 0, 0, 0]
    print("values at p2:", p2.load[width=8](0))
    # => values at p2: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

    seed()
    rand(p1, 8, min=0, max=100)
    print("values at p1:", p1.load[width=8](0))
    # => values at p1: [0, 13, 76, 46, 53, 22, 4, 68]
    rand(p2, 8)
    print("values at p2:", p2.load[width=8](0))
    # => values at p2: [0.9346929, 0.5194164, 0.03457211, 0.5297002, 0.007698186,
    # 0.066842236, 0.6867727, 0.9304365]
    randint(p1, 8, 0, 10)
    print("values at p1:", p1.load[width=8](0))
    # => values at p1: [9, 5, 1, 7, 4, 7, 10, 8]
    randn(p2, 8, mean=3.14, standard_deviation=0.1)
    print("values at p2:", p2.load[width=8](0))
    # => values at p2:  [2.99624, 3.1889987, 2.914828, 2.9858,
    # 3.1805995, 3.1855004, 3.2009718, 3.3010218]

    alias rows = 20
    alias cols = 10
    var data = UnsafePointer[Int16].alloc(rows * cols)
    rand(data, rows * cols)
    print(data.load[width=32](0))
    # => [1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, ...
    # 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0]

    memset_zero(p1, 8)
    rand(p1, 4, min=0, max=100)
    var all_data = p1.load[width=8](0)
    print(all_data)  # => [76, 70, 9, 54, 0, 0, 0, 0]

    p1.free()
    p2.free()
