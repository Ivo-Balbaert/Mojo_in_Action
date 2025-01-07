from sys.info import simdbitwidth, simdbytewidth, simdwidthof
import math


fn main():
    print(simdbitwidth())  # => 256
    print(simdbytewidth())  # => 32
    print(simdwidthof[DType.uint64]())  # => 4
    print(simdwidthof[DType.float32]())  # => 8
