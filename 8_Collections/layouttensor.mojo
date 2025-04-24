from gpu.host import DeviceContext, DeviceBuffer
from layout import Layout, LayoutTensor, IntTuple
from layout.layout import blocked_product

alias dtype = DType.float32
alias layout = Layout.row_major(4, 4)


fn main() raises:
    # Create a 3x4 row-major layout
    var layout0 = Layout.row_major(3, 4)

    # Access the memory location for logical coordinates (1, 2)
    var memory_idx = layout(IntTuple(1, 2))

    # Create a 2x3 matrix layout
    var matrix = Layout.row_major(2, 3)
    # Define 2x2 blocks
    var block = Layout.row_major(2, 2)
    # Create a blocked layout with 2x2 blocks
    var blocked = blocked_product(block, matrix)

    # Create a tiled layout for blocked matrix multiplication
    var tiled = blocked_product(layout, Layout(IntTuple(2, 2)))

    # Create a LayoutTensor from a DeviceBuffer
    var ctx = DeviceContext()
    var dev_buf = ctx.enqueue_create_buffer[dtype](8)

    var tensor = LayoutTensor[dtype, layout](dev_buf)

    var storage = InlineArray[Scalar[DType.float32], 5 * 4](uninitialized=True)
    var tensor_5x4 = LayoutTensor[DType.float32, Layout.row_major(5, 4)](
        storage
    )
