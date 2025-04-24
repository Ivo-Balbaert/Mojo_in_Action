from tensor import Tensor, TensorShape, TensorSpec  # A


fn main():
    var shape = TensorShape(10, 10, 3)
    print(shape.rank())  # => 3
    print(shape.num_elements())  # => 300
    print(shape)  # => 10x10x3
    print(shape[0])  # => 10

    var spec = TensorSpec(DType.int32, shape)
    print(spec.dtype())  # => int32
    print(spec.bytecount())  # => 1200
    print(spec)  # => 10x10x3xint32
    var spec2 = TensorSpec(DType.int32, (3, 3))

    var ts1 = Tensor[DType.float32](shape)
    var ts2 = Tensor[DType.float32](spec)
    var tdim1 = Tensor[DType.int32](10)
    print(tdim1)  # => Tensor([[0, 0, 0, ..., 0, 0, 0]], dtype=int32, shape=10)
    var tdim2 = Tensor[DType.int32](spec2)  # G
    print(tdim2)  # =>
    # Tensor([[0, 0, 0],
    # [0, 0, 0],
    # [0, 0, 0]], dtype=int32, shape=3x3)
