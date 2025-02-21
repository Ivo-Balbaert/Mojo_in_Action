from sys.info import alignof, bitwidthof, sizeof


fn main():
    print(bitwidthof[Int64]())  # => 64
    print(sizeof[UInt8]())  # => 1
    print(alignof[UInt64]())  # => 8
