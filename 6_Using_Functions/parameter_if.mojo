from testing import assert_true

alias debug_mode = True  # A


fn example():
    @parameter
    if debug_mode:  # B
        print("debug")  # => debug


fn main() raises:
    example()  # => debug

    @parameter
    if debug_mode:  # C
        _ = assert_true(1 == 2, "assertion failed")
    # => ASSERT ERROR: assertion failed
