from tensor import Tensor, TensorShape
from pathlib import Path
from utils.index import Index


fn main() raises:
    var t = Tensor[DType.int32](2, 2)  # shape = 2 x 2
    print(t.load())  # => 0
    print(t.load[width=4]())  # => [0, 0, 0, 0]
    t.store[4](0, 1)  # stores value 1 on index 0
    t.store[4](2, 3)  # stores value 3 on index 2
    print(t)
    # =>
    # Tensor([[1, 0],[3, 0]], dtype=int32, shape=2x2)
    print(t.load(2))  # => 3
    print(t[0, 0])  # => 1
    print(t[1, 0])  # => 1
    t[Index(0, 0)] = 3

    var t2 = Tensor[DType.float32](3, 10, 10)
    t2[Index(2, 9, 9)] = 1
    print(t2[Index(2, 9, 9)])  # => 1.0

    t.tofile(Path("tensor1"))
    print(t.fromfile(Path("tensor1")))
    # => Tensor([[3, 0, 3, 0]], dtype=int32, shape=4)

    print(t2.reshape(TensorShape(4, 75)))
    # =>
    # Tensor([[0.0, 0.0, 0.0, ..., 0.0, 0.0, 0.0],
    # [0.0, 0.0, 0.0, ..., 0.0, 0.0, 0.0],
    # [0.0, 0.0, 0.0, ..., 0.0, 0.0, 0.0],
    # [0.0, 0.0, 0.0, ..., 0.0, 0.0, 1.0]], dtype=float32, shape=4x75)
    t2.astype[DType.int32]()

    var tensor = Tensor[DType.float32, rank=2](TensorShape(1, 2))
