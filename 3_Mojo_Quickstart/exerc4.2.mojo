fn main():
    for i in range(4):
        var simd = SIMD[DType.uint8, 4](0)
        simd[i] = 1
        print(simd)


# =>
# [1, 0, 0, 0]
# [0, 1, 0, 0]
# [0, 0, 1, 0]
# [0, 0, 0, 1]
