from max.driver import Tensor, cpu
from tensor import TensorShape, TensorSpec


def main():
    tensor = Tensor[DType.float32, rank=2](TensorShape(1, 2))
    tensor[0, 0] = 1.0
    print(tensor)  # =>
    # Tensor([[1.0, 0.0]], dtype=float32, shape=1x2)

    # You can also explicitly set the devices.
    device = cpu()
    tensor2 = Tensor[DType.float32, rank=2](TensorShape(1, 2), device)
    tensor2[0, 0] = 1.0

    tensor3 = tensor.move_to(device)
