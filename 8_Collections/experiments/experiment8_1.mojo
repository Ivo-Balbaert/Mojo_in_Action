@value
struct Coord:
    var x: Int
    var y: Int
    var z: Int


fn main():
    var t1: Tuple[Int, Bool]
    # t1 = (2.71, False)
    # => error: cannot implicitly convert 'Tuple[SIMD[float64, 1], Bool]' value to 'Tuple[Int, Bool]'

    var tp5 = (Coord(5, 10, 15), 5.5, False)
    print(tp5[0].x, tp5[0].y, tp5[0].z)  # =>   5 10 15
    # alternative:
    a, _, _ = tp5
    # a = tp5[0]
    print(a.x, a.y, a.z)  # =>

    # for i in tp5:
    # => error: 'Tuple[Coord, SIMD[float64, 1], Bool]' does not implement the '__iter__' method
