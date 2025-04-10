@value
@register_passable("trivial")
struct Coord:
    var x: UInt32
    var y: UInt32
    var z: UInt32


fn main():
    var cd1 = Coord(5, 10, 7)
