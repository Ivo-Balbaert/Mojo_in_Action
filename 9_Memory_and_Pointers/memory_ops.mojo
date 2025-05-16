from memory import memset, memcmp, memset_zero, memcpy, UnsafePointer


@value
@register_passable
struct Coord:
    var x: UInt8
    var y: UInt8


fn main():
    var chunk = 100
    var p1 = UnsafePointer[Coord].alloc(chunk)
    memset_zero(p1, chunk)

    var coord = p1[0]
    print(coord.x)  # => 0

    for i in range(chunk):
        print(p1[i].x, p1[i].y, end=", ")
    # => 0 0, 0 0, 0 0, ...  (100 0 0 Coord instances)
    print()

    memset(p1, 42, chunk)
    for i in range(chunk):
        print(p1[i].x, p1[i].y, end=", ")
    # => 42 42, 42 42, 42 42, ... (100 42 42 Coord instances)
    print()

    var count = 25
    var dest = UnsafePointer[Coord].alloc(count)
    var src = p1
    memcpy(dest, src, count)
    # memcpy[Coord](dest, src, count)   # equivalent
    for i in range(count):
        print(dest[i].x, dest[i].y, end=", ")
    # => 42 42, 42 42, ... (25 42 42 Coord instances)
    print()

    var result = memcmp(dest, src, count)
    print(result)  # => 0
    count = 50
    print(memcmp(dest, src, count))  # => -1

    p1.free()
    dest.free()
