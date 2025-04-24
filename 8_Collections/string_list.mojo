fn main():
    # building a string with a List:
    var buf = List[Byte](2)
    buf.append(65)
    buf.append(79)
    buf[0] = 78
    buf.append(32)
    buf.append(ord("H"))
    buf.append(ord("i"))
    buf.append(0)

    for i in range(len(buf)):
        print(buf[i], end=" ")
    print()
    # => 78 65 79 32 72 105 0

    var str = String(buffer=buf)
    print(str)  # => NAO Hi

    # str._buffer
    # the type of str._buffer is List[SIMD[uint8, 1], True]
