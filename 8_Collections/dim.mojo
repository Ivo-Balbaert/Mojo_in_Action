from buffer import Dim, DimList
from utils import Index


fn main():
    var dim1 = Dim(5)
    print(dim1.has_value())  # => True
    print(dim1.get())  # => 5

    var dim_list = DimList(2, 4)
    var index_list = dim_list.into_index_list[rank=2]()
    print(index_list)  # => (2, 4)
