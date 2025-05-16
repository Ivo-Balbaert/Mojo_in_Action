from memory import UnsafePointer, memcpy


struct Matrix:
    """Simple 2D Matrix that uses Float32."""

    var data: UnsafePointer[Float32]
    var nrows: Int
    var ncols: Int
    var nitems: Int

    fn __init__(out self, ncols: Int, nrows: Int, default_value: Float32):
        self.ncols = ncols if ncols > 0 else 1
        self.nrows = nrows if nrows > 0 else 1
        self.nitems = self.nrows * self.ncols
        self.data = UnsafePointer[Float32].alloc(self.nitems)
        for i in range(self.nitems):
            self.data.store(i, default_value)

    fn __getitem__(self, row: Int, column: Int) -> Float32:
        var loc: Int = (row * self.ncols) + column
        if loc > self.nitems:
            print(
                "Warning: you're trying to get an index out of bounds, memory"
                " violation"
            )
            return self.data.load(0)
        return self.data.load(loc)

    fn __setitem__(mut self, row: Int, column: Int, value: Float32):
        var loc: Int = (row * self.ncols) + column
        if loc > self.nitems:
            print(
                "Warning: you're trying to set an index out of bounds, doing"
                " nothing"
            )
            return
        self.data.store(loc, value)

    fn __del__(owned self):
        self.data.free()

    fn __len__(self) -> Int:
        return self.nitems

    fn __copyinit__(out self, other: Self):
        self.nrows = other.nrows
        self.ncols = other.ncols
        self.nitems = other.nitems
        self.data = UnsafePointer[Float32].alloc(self.nitems)
        memcpy[Float32](self.data, other.data, self.nitems)

    fn __moveinit__(out self, owned other: Self):
        self.nrows = other.nrows
        self.ncols = other.ncols
        self.nitems = other.nitems
        self.data = UnsafePointer[Float32].alloc(self.nitems)
        memcpy[Float32](self.data, other.data, self.nitems)

    fn __eq__(self, rhs: Matrix) -> Bool:
        for i in range(self.nrows):
            for j in range(self.ncols):
                var self_val: Float32 = self[i, j]
                var rhs_val: Float32 = rhs[i, j]
                if self_val < rhs_val or self_val > rhs_val:
                    return False
        return True

    fn __ne__(self, rhs: Matrix) -> Bool:
        return not self == rhs

    fn __lt__(self, rhs: Matrix) -> Bool:
        for i in range(self.nrows):
            for j in range(self.ncols):
                if self[i, j] < rhs[i, j]:
                    return True
        return False

    fn __le__(self, rhs: Matrix) -> Bool:
        return self < rhs or self == rhs

    fn __gt__(self, rhs: Matrix) -> Bool:
        for i in range(self.nrows):
            for j in range(self.ncols):
                if self[i, j] > rhs[i, j]:
                    return True
        return False

    fn __ge__(self, rhs: Matrix) -> Bool:
        return self > rhs or self == rhs

    fn __add__(self, rhs: Matrix) -> Matrix:
        var new_matrix = Matrix(self.nrows, self.ncols, Float32(0.0))
        for i in range(self.nrows):
            for j in range(self.ncols):
                new_matrix[i, j] = self[i, j] + rhs[i, j]
        return new_matrix

    fn __sub__(self, rhs: Matrix) -> Matrix:
        var new_matrix: Matrix = Matrix(self.nrows, self.ncols, Float32(0.0))
        for i in range(self.nrows):
            for j in range(self.ncols):
                new_matrix[i, j] = self[i, j] - rhs[i, j]
        return new_matrix

    fn __mul__(self, rhs: Matrix) -> Matrix:
        var new_matrix: Matrix = Matrix(self.nrows, self.ncols, Float32(0.0))
        for i in range(self.nrows):
            for j in range(self.ncols):
                new_matrix[i, j] = self[i, j] * rhs[i, j]
        return new_matrix

    fn __truediv__(self, rhs: Matrix) -> Matrix:
        var new_matrix: Matrix = Matrix(self.nrows, self.ncols, Float32(0.0))
        for i in range(self.nrows):
            for j in range(self.ncols):
                new_matrix[i, j] = self[i, j] / rhs[i, j]
        return new_matrix

    fn __add__(self, rhs: Float32) -> Matrix:
        var new_matrix: Matrix = Matrix(self.nrows, self.ncols, Float32(0.0))
        for i in range(self.nrows):
            for j in range(self.ncols):
                new_matrix[i, j] = self[i, j] + rhs
        return new_matrix

    fn __sub__(self, rhs: Float32) -> Matrix:
        var new_matrix: Matrix = Matrix(self.nrows, self.ncols, Float32(0.0))
        for i in range(self.nrows):
            for j in range(self.ncols):
                new_matrix[i, j] = self[i, j] - rhs
        return new_matrix

    fn __mul__(self, rhs: Float32) -> Matrix:
        var new_matrix: Matrix = Matrix(self.nrows, self.ncols, Float32(0.0))
        for i in range(self.nrows):
            for j in range(self.ncols):
                new_matrix[i, j] = self[i, j] * rhs
        return new_matrix

    fn __truediv__(self, rhs: Float32) -> Matrix:
        var new_matrix: Matrix = Matrix(self.nrows, self.ncols, Float32(0.0))
        for i in range(self.nrows):
            for j in range(self.ncols):
                new_matrix[i, j] = self[i, j] / rhs
        return new_matrix

    fn apply_function[func: fn (Float32) -> Float32](self) -> Matrix:
        var new_matrix = Matrix(self.nrows, self.ncols, Float32(0.0))
        for i in range(self.nrows):
            for j in range(self.ncols):
                new_matrix[i, j] = func(self[i, j])
        return new_matrix

    fn print_all(self):
        print("[")
        for i in range(self.nrows):
            print("    [", end="")
            for j in range(self.ncols):
                print(self[i, j], end="")
                if j != self.ncols - 1:
                    print(", ", end="")
            print("]," if i != self.nrows - 1 else "]")
        print("]")


fn main():
    var matrix1 = Matrix(2, 2, Float32(3.14))
    matrix1.print_all()
    # =>
    # [
    #     [3.14, 3.14],
    #     [3.14, 3.14]
    # ]
    print(len(matrix1))  # =>

    var matrix2 = Matrix(2, 2, Float32(3.14))
    if matrix1 == matrix2:
        print("matrix1 is equal to matrix2")
    # => matrix1 is equal to matrix2

    # Change matrix1:
    matrix1[0, 0] = Float32(1.5)
    matrix1[0, 1] = Float32(0.33)
    matrix1[1, 0] = Float32(6.5)
    matrix1[1, 1] = Float32(2.5)
    matrix1.print_all()  # =>
    # [
    #     [1.5, 0.33],
    #     [6.5, 2.5]
    # ]

    if matrix1 != matrix2:
        print("matrix1 is now NOT equal to matrix2")
    # => matrix1 is now NOT equal to matrix2

    var matrix3: Matrix = matrix1 + matrix2
    matrix3.print_all()  # =>
    # [
    #    [4.6400004, 3.47],
    #    [9.64, 5.6400003]
    # ]

    # X var matrix4 = matrix1 + Float32(1.0)
    # X print(matrix4)

    fn test_func(x: Float32) -> Float32:
        return x * Float32(2.0)

    var matrix4: Matrix = matrix3.apply_function[test_func]()
    matrix4.print_all()  # =>
    # [
    #    [9.280001, 6.94],
    #    [19.28, 11.280001]
    # ]
