from random import rand
from tensor import Tensor, TensorSpec, TensorShape


fn main() raises:
    t1 = Tensor[DType.float64](3, 2)
    rand(t1.unsafe_ptr(), t1.num_elements())
    print(t1)
    # =>
    # Tensor([[0.13153778773876065, 0.4586501320232198],
    # [0.21895918621247895, 0.6788647167406855],
    # [0.9346928962267388, 0.5194163720227475]], dtype=float64, shape=3x2)
