from utils.index import Index
from tensor import Tensor


fn main():
    var tens = Tensor[DType.float32](3, 10, 10)
    tens[999] = 1
    tens[Index(2, 9, 9)] = 1
    print(tens[Index(2, 9, 9)])  # => 1.0
