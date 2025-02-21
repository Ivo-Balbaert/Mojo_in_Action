fn main() raises:
    # int("MLIR") # error: String is not convertible to integer with base 10: 'MLIR'

    # Conversion from integers to Bool:
    var b1 = Bool(42)
    print(b1)  # => True
    var b2 = Bool(0)
    print(b2)  # => False

    # Conversion from floats to Bool:
    var b3 = Bool(3.14)
    print(b3)  # => True
    var b4 = Bool(0.0)
    print(b4)  # => False

    # Conversion from Bool to integer:
    var c1: Bool = True
    var m = UInt8(c1)
    print(m)  # => 1
    var c2: Bool = False
    var n = UInt8(c2)
    print(n)  # => 0

    # Conversions between integers:
    var x: UInt8 = 42
    var y: Int8 = x.cast[DType.int8]()
    print(y)  # => 42

    var x2: Int8 = -42
    # var y2: UInt8 = x.cast[DType.int8]()

    var x3: Int16 = 500
    # var y3: Int8 = Int8(x3)
    # => error: no matching function in initialization
    # => error: argument #1 cannot be converted from 'SIMD[int16, 1]' to 'SIMD[int8, 1]'

    var z = 257
    var z2 = Int16(257)
    print(z2)  # => 257
    var z3 = Int8(257)
    print(z3)  # => 1

    # Conversions between floats and integers:
    var float: FloatLiteral = 3.3
    print(float)  # => 3.3
    var f32 = Float32(float)
    print(f32)  # => 3.3
    var n2: Int = 108
    var f = Float64(n2)
    print(f)  # => 108.0
    var f2 = Int8(3.1415)
    # print(f2)  # => note: constraint failed: the SIMD type must be floating point

    # Conversion from strings to boolean:
    var str: String = "abc"
    var b: Bool = Bool(str)
    print(b)  # => True

    # Conversion from strings to integers:
    i1 = Int("42")
    print(i1)  # => 42
    i2 = atol("42")
    print(i2)  # => 42
    # i3 = atol("Mojo")
    # => Unhandled exception caught during execution: String is not convertible to integer with base 10

    # Questions:
    # 6)
    var a = UInt32(108)
    print(a)  # => 108
    # in REPL:
    # 4> a = UInt32(108)
    # 5. print(a)
    # 6.
    # 108
    # (SIMD[uint32, 1]) a = {
    # (ui32) [0] = 108}
    # 7)
    var i9: Int32 = 108
    # var f9 = Float32(i9)
    # => argument #1 cannot be converted from 'SIMD[int32, 1]' to 'SIMD[float32, 1]'
