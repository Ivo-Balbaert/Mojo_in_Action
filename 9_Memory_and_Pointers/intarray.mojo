from layout.int_tuple import IntArray


fn main():
    var scratchpad = IntArray(32)
    scratchpad[0] = 42
    for i in range(5):
        scratchpad[i] = 42 + i
    var value = scratchpad[4]
    print(value)  # => 46
