from memory import UnsafePointer
from random import rand
from tensor import Tensor, TensorSpec, TensorShape


def print_address(ptr: UnsafePointer):
    print(Int(ptr))


fn main() raises:
    height = 256
    width = 256
    channels = 3
    var shape = TensorShape(height, width, channels)
    image = Tensor[DType.float32](shape)  # A
    print(image.num_elements())  # => 196608   #B
    print_address(image.unsafe_ptr())  # => 126260223148032
    print_address(image._ptr)  # => 126260223148032
    rand(image.unsafe_ptr(), image.num_elements())  # C
    print(image)
    # =>
    # Tensor([[[0.1315378, 0.45865014, 0.21895918],
    # [0.6788647, 0.9346929, 0.5194164],
    # [0.03457211, 0.5297002, 0.007698186],
    # ...,
    # [0.0016643476, 0.10086978, 0.9555155],
    # [0.1654064, 0.11644207, 0.96095586],
    # [0.2203904, 0.25456282, 0.2430108]],
    # [[0.5492284, 0.85164934, 0.5576104],
    # [0.9019964, 0.7596974, 0.99829006],
    # [0.37504014, 0.7455222, 0.7663134],
    # ...,


# A Create the tensor of dimensions height, width, channels
# B The image tensor has 256 x 256 x 3 = 196608 items
# C Fill the tensor with random values.
